# Implementation Design — PPDM→Jira Module (remaining units)

| | |
|---|---|
| Status | Approved for implementation planning |
| Date | 2026-06-22 |
| Parent | `docs/superpowers/specs/2026-06-17-ppdm-jira-integration-design.md` (master design) |
| Contract | `docs/design/jira-integration-contract.md` |
| Scope | The 5 unbuilt units + manifest + config + tests, wired into an end-to-end run |

This spec turns the master design into a concrete, plannable build for the parts of the
`ppdm2Jira` module that do not yet exist. The architecture, the `Incident` model, and the
per-instance data flow are defined in the parent spec and are not restated here except where this
document makes them concrete.

## Decisions locked in this session

| Decision | Choice | Consequence |
|---|---|---|
| Plan scope | Full remaining module in one plan | Orchestrator + JiraClient + Router + Dedup + StateStore + manifest + config + tests |
| Jira target | **Both** Cloud (v3/Basic/ADF) **and** Data Center (v2/Bearer/wiki) | `JiraClient` implements and tests both flavours behind one config seam |
| Alert↔activity correlation | **None** in v1 | Same failure may yield two tickets; documented limitation (master spec open item #3 deferred) |
| PPDM filter syntax | Build against the syntax already committed in `PpdmClient.ps1` (`in`/`ge`/`gt`/`ne`) | Treated as spike-validated; no re-open |

## Already built (unchanged)

- `Private/Normalizer.ps1` — raw alert|activity → `Incident` (pure transform).
- `Private/PpdmClient.ps1` — `Get-ppdm2JiraAlerts` / `Get-ppdm2JiraFailedBackups` read wrappers over PPDM-pwsh.

## 1. Module assembly & manifest

- `ppdm2Jira.psd1` — manifest: `RootModule = 'ppdm2Jira.psm1'`, `PowerShellVersion = '5.1'`,
  `RequiredModules = @('PPDM-pwsh', 'Microsoft.PowerShell.SecretManagement')`, `FunctionsToExport = @('Invoke-ppdm2JiraSync')`.
- `ppdm2Jira.psm1` — loader: dot-source `Private/*.ps1` then `Public/*.ps1`; `Export-ModuleMember -Function Invoke-ppdm2JiraSync`.
- Private functions remain unexported but are reachable in tests via `InModuleScope ppdm2Jira`.

## 2. `Private/JiraClient.ps1` — Cloud + Data Center

One config object selects flavour; only auth and body-format branch, operations are shared:

```
JiraClientConfig { baseUrl, apiVersion (3|2), authMode (basic|bearer), bodyFormat (adf|wiki), secretName }
```

Functions:

| Function | Behaviour |
|---|---|
| `New-ppdm2JiraClient($config)` | Builds the immutable client + auth header. Basic (`email:token`, base64) for Cloud; Bearer PAT for DC. Secret fetched from SecretManagement at build time; raw secret not retained on the returned object. |
| `Find-ppdm2JiraOpenIssue($client,$project,$label)` → key\|$null | Cloud: `POST /rest/api/3/search/jql` (token-paged via `nextPageToken`). DC: `POST /rest/api/2/search` (`startAt`). JQL: `project = <p> AND labels = "<label>" AND statusCategory != Done ORDER BY created DESC`, `maxResults: 1`. |
| `New-ppdm2JiraIssue($client,$target,$incident)` → key | `POST .../issue`. `fields` assembled from `JiraTarget` + `Incident`. `description` via `bodyFormat` switch. Returns `key` from `201`. |
| `Add-ppdm2JiraComment($client,$key,$text)` | `POST .../issue/{key}/comment`. Body via `bodyFormat` switch. |
| `Set-ppdm2JiraRemoteLink($client,$key,$globalId,$url,$title)` | `POST .../issue/{key}/remotelink`. `globalId` = sanitised dedup label → idempotent (create-or-update). |
| `Invoke-ppdm2JiraRequest` (private) | Single HTTP chokepoint. Injects auth header, enforces TLS (per-instance opt-out is explicit + logged), retries `429`/`5xx` with exponential backoff honouring `Retry-After`, maps `400/401/403/404` per contract §8. **All HTTP mocking in tests targets this function.** |
| `ConvertTo-ppdm2JiraAdf($text)` (private) | Wraps the Normalizer's newline-joined `body` into ADF: `{type:doc, version:1, content:[paragraph per line]}`. DC path emits the lines as a plain/wiki string instead. |

The Normalizer stays Jira-agnostic — it emits one newline-joined `body`; ADF/wiki rendering lives only here.

## 3. `Private/Router.ps1` + `config/`

- `config/routing.psd1` — **ordered** match rules keyed on `(source, severity, category/subcategory)` →
  `{ project, component, labels, assigneeGroup, priorityId }`, ending in a **mandatory default rule** so nothing is dropped (FR-5).
- `config/settings.psd1` — `instances[]` (`{ id, baseUrl, secretName }`), severity threshold, poll window,
  `jira` client config (§2 shape), `stateDir`, `dryRun` default. Git-ignored; committed templates are
  `config/settings.psd1.example` and `config/routing.psd1.example`.
- `Resolve-ppdm2JiraTarget($incident,$routingTable)` → `JiraTarget` — first matching rule wins, else default.
  Appends contract auto-labels (`ppdm`, sanitised dedup label, `source_<src>`, `cat_<category>`); maps
  `severity → priorityId` from the config map.
- `ConvertTo-ppdm2JiraLabel($dedupKey)` → `ppdm_<inst>_<id>` — strips spaces/colons (contract §4). Shared by Router, Dedup, and remote-link `globalId`.

## 4. `Private/StateStore.ps1` + `Private/Dedup.ps1`

- **StateStore** — one JSON file per instance under `stateDir`.
  `Get-ppdm2JiraWatermark($instanceId)` → `[datetime]` (epoch-start sentinel if absent);
  `Set-ppdm2JiraWatermark($instanceId,$time)` writes **atomically** (temp file + move) so a crash
  mid-write cannot corrupt the watermark (NFR-2).
- **Dedup** — `Resolve-ppdm2JiraAction($client,$incident,$target)` → `{ Action='Create'|'Comment'; Key }`.
  Calls `Find-ppdm2JiraOpenIssue`; Jira is the source of truth (ADR-0003). On a `404` between search and
  write, the orchestrator falls back to create (contract §8).

## 5. `Public/Invoke-ppdm2JiraSync.ps1` — orchestrator

`[CmdletBinding()]`, params: `-ConfigPath`, `-Instance` (filter), `-DryRun`. Per-instance, isolated:

```
foreach instance in settings.instances (optionally filtered by -Instance):
  try:
    wm   = StateStore.Get(instance)
    inc  = PpdmClient.GetAlerts(wm) + GetFailedBackups(wm)     # → Incident[]
    maxOccurred = wm
    foreach i in inc:
      target = Router.Resolve(i, routing)
      action = Dedup.Resolve(client, i, target)
      if DryRun:        log intended action; continue
      if action.Create: key = Jira.Create(target, i); Jira.RemoteLink(key, i)
      else:             Jira.Comment(action.Key, "recurred @ <ts>")
      log { instance, source, dedupKey, action, key }          # FR-11, one line per Incident
      maxOccurred = max(maxOccurred, i.occurredAt)
    if not DryRun: StateStore.Set(instance, maxOccurred)        # advance ONLY on full success (FR-8)
  catch:
    log instance failure; continue                              # FR-10 isolation; watermark NOT advanced
```

Returns a non-zero exit code if any instance failed. `-DryRun` performs reads + routing + dedup search
but no Jira writes and no watermark advance (FR-9).

## 6. Tests (Pester, no live PPDM/Jira)

One `*.Tests.ps1` per unit; fixtures under `tests/fixtures/`; HTTP fully mocked.

| Unit | Key cases |
|---|---|
| Normalizer | both sources → Incident; severity mapping; StrictMode-safe missing fields; 255-char truncation |
| PpdmClient | filter-string construction (mock `Get-PPDMactivities`/`Get-PPDMalerts`); 24-hour `HH` timestamp |
| JiraClient | **Cloud and DC**: auth header per mode; ADF vs wiki body; search/create/comment/remotelink request shapes; `429`/`5xx` retry; `404`→create fallback (mock `Invoke-ppdm2JiraRequest`) |
| Router | rule precedence + default fallback; label sanitisation; priority map |
| StateStore | round-trip; atomic write; missing-file default |
| Dedup | create-vs-comment decision; `404` fallback signalling |
| Orchestrator | `-DryRun` writes nothing; watermark advances only on success; one instance failing doesn't stop others; recurrence path |

Semgrep scan on all generated code before completion (NFR-3 / project security rule).

## 7. Error handling (per contract §8)

`201`/`200` → log key. `400` → fail the item, continue others. `401`/`403` → fail fast, do not advance
watermark. `404` on comment/remotelink → fall back to create. `429` → honour `Retry-After` + backoff.
`5xx` → retry; if persistent, fail the run without advancing the watermark (safe replay).

## 8. Known v1 limitations

- A single failure surfacing as both an alert and an activity produces two tickets (correlation deferred).
- Only the read-side PPDM filter syntax committed in `PpdmClient.ps1` is exercised; live-syntax
  confirmation remains a deployment-time check, not a build blocker.
