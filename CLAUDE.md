# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

A one-way integration that polls **Dell PowerProtect Data Manager (PPDM)** for critical/warning
alerts and failed backup jobs and opens/updates **Jira** issues for them. The repo is
**design-first**: the authoritative documents in `docs/` are the contract, and the PowerShell
module under `ppdm2Jira/` is being built to match them. When code and docs disagree, the docs win
unless the change is intentionally updating the design — keep both in sync.

Scope is deliberately narrow (v1): one-way PPDM→Jira, 2–5 PPDM instances, scheduled (not real-time),
CRITICAL+WARNING alerts and FAILED/OK_WITH_ERRORS jobs only. INFORMATIONAL alerts, Jira write-back,
and fleet/MSP scaling are explicitly out of scope (see ADR-0005, ADR-0002).

## Read these first

- `docs/superpowers/specs/2026-06-17-ppdm-jira-integration-design.md` — **master design spec**.
  Component architecture, the `Incident` common model, the per-instance data flow, error handling.
  Start here.
- `docs/design/jira-integration-contract.md` — exact Jira behaviour: endpoints, ADF payloads,
  JQL dedup, remote-link traceability, `Incident`→Jira field mapping, error/rate-limit handling.
- `docs/prd/PRD-ppdm-jira-integration.md` — problem, FR/NFR requirements, success metrics.
- `docs/adr/ADR-000{1..6}-*.md` — the load-bearing decisions (polling over push, PowerShell,
  watermark+Jira-search dedup, config-driven routing, one-way, secrets/TLS). Cite the relevant ADR
  when touching its area; if you contradict one, that's an ADR change, not a casual edit.
- `docs/swagger/*.json` — local OpenAPI specs that ground all API claims: `9765-20.1.0.json` et al.
  are the **PPDM v2** specs (read side); `jira-swagger-v3.json` is **Jira Cloud v3** (write side).
  Field paths and request schemas must be traceable to these — do not invent endpoints or fields.

## Architecture (the big picture)

Single-responsibility PowerShell units, each independently Pester-testable, wired by one
orchestrator. Per the design spec the intended layout is:

```
ppdm2Jira/
├─ Public/Invoke-ppdm2JiraSync.ps1   # orchestrator / entry point (per-instance loop)
├─ Private/PpdmClient.ps1   # read side: build PPDM filter, page reads → Incidents   [exists]
├─ Private/Normalizer.ps1   # pure transform: raw alert|activity → Incident model     [exists]
├─ Private/JiraClient.ps1   # write side: auth-abstracted find/create/comment/remotelink
├─ Private/Router.ps1       # Incident → Jira project/component/labels/priority
├─ Private/Dedup.ps1        # watermark + Jira-search "create vs comment" decision
└─ Private/StateStore.ps1   # durable per-PPDM watermark read/write
```

The pipeline (one PPDM instance at a time): **PpdmClient** reads alerts+failed activities since the
watermark → **Normalizer** shapes each into a common **`Incident`** → **Router** resolves the Jira
target → **Dedup**/**JiraClient** searches for an open issue with the dedup label and either comments
(recurrence) or creates → **StateStore** advances the watermark **only after the whole instance
succeeds** (safe replay; never advance on partial failure).

The **`Incident`** model (`PSTypeName 'ppdm2Jira.Incident'`) is the seam between read and write
sides — both alerts and activities collapse into it so the Jira side never sees PPDM-shaped data.
Its fields are defined in the design spec §"The Incident model" and emitted by
`ConvertTo-ppdm2JiraIncident` in `Normalizer.ps1`.

### Conventions that are load-bearing (not stylistic)

- **Read transport is delegated to the `PPDM-pwsh` module**, not raw `Invoke-RestMethod`. `PpdmClient`
  wrappers call `Get-PPDMactivities` / `Get-PPDMalerts` (session established by `Connect-PPDMapiEndpoint`,
  which sets `$Global:PPDM_API_BaseUri`). Tests therefore mock those cmdlets, not HTTP.
- **`Normalizer` is pure (no I/O)** so it stays trivially testable — keep it that way.
- **StrictMode-safe property reads**: PPDM omits optional fields by event state. Read optional fields
  through `Get-ppdm2JiraProp` so `Set-StrictMode -Version Latest` doesn't throw on missing properties.
- **Windows PowerShell 5.1+ target** in the normalizer — no PS7-only operators (e.g. no `??`, `?.`).
- **`dedupKey` is `ppdm:<instanceId>:<eventId>`** raw, but Jira **labels can't contain spaces/colons**,
  so `JiraClient` sanitises it to `ppdm_<instanceId>_<eventId>`. The label is the JQL-searchable dedup
  key *and* the remote-link `globalId` (idempotent back-link). Keep those three in lockstep.
- **Jira v3 `description`/comment bodies are ADF (JSON), not strings.** `summary` ≤ 255 chars
  (`Limit-ppdm2JiraText`). The `JiraClient` config `{baseUrl, apiVersion, authMode, bodyFormat}`
  abstracts Cloud (v3/Basic/ADF) vs Data Center (v2/Bearer/wiki) — don't hardcode one flavour.
- **Timestamps**: ISO-8601 Zulu, **24-hour `HH`** (the upstream filter used 12-hour `hh` — a bug we
  deliberately don't reproduce; see `Format-ppdm2JiraTimestamp`).
- Filter knowledge adapted from `PPDM-pwsh` (MIT) — see `THIRD_PARTY_NOTICES.md`. The non-obvious
  job-level scoping is `parentId ne null` + `classType in ("JOB","JOB_GROUP")`.

## Working in this repo

There is no build system. Code is a PowerShell module; docs are Markdown with generated `.docx`
mirrors in `docs/docx/` (treat the Markdown as source, the `.docx` as build output).

- **Run tests** (Pester tests live under `ppdm2Jira/tests/`): `pwsh ./ppdm2Jira/tests/Run-AllTests.ps1`
  (or `Invoke-Pester ./ppdm2Jira/tests`) — run a single file with
  `Invoke-Pester ./ppdm2Jira/tests/Normalizer.Tests.ps1` or filter with
  `Invoke-Pester ./ppdm2Jira/tests -FullNameFilter '*dedup key*'`. No live PPDM/Jira is needed: mock the
  `PPDM-pwsh` cmdlets and Jira HTTP calls. Private functions are reached in tests via `InModuleScope ppdm2Jira`.
- **Validate live connectivity** (needs a sandbox + registered secrets): `scripts/Test-ppdm2JiraPpdmConnection.ps1`
  and `scripts/Test-ppdm2JiraJiraConnection.ps1` connect and run a real search against PPDM / Jira DC v2.
- **Lint**: `Invoke-ScriptAnalyzer -Path ./ppdm2Jira -Recurse`.
- **Security scan before delivering generated code**: run Semgrep (the global instruction requires
  scanning generated code/commands via the `semgrep` MCP tools).
- Never commit secrets, watermarks, or logs — `.gitignore` already excludes `config/settings.psd1`,
  `secrets/`, `state/`, `*.watermark`, `*.log`, and test output. Secrets come from PowerShell
  SecretManagement at runtime (ADR-0006), never from config files.

## Open validation items (M0 spike — don't assume these)

Carried in the spec/contract and not yet confirmed against a live system:
1. PPDM filter operator syntax (`eq`/`in`/`gt`) and exact timestamp format.
2. Jira deployment flavour — Cloud v3/ADF vs Data Center v2/wiki — and `/search/jql` pagination
   token shape (`nextPageToken`, not `startAt`).
3. Whether one failure can surface as *both* an alert and an activity, and whether to correlate on
   `jobId` to avoid two tickets for one failure.
