# Design Spec — PPDM → Jira Alert & Backup-Failure Integration

| | |
|---|---|
| Status | Draft for customer review |
| Date | 2026-06-17 |
| Scope | v1 — one-way, 2–5 PPDM instances, PowerShell |

This is the master design document. It links the customer-facing **PRD** and the **ADRs** and specifies the component design the developer team will build against.

## Document map

- **PRD** — `docs/prd/PRD-ppdm-jira-integration.md` (problem, goals, requirements, success metrics, milestones).
- **Jira integration contract** — `docs/design/jira-integration-contract.md` (endpoints, ADF payloads, JQL dedup, remote-link traceability, field mapping, errors).
- **ADRs** — `docs/adr/`:
  - ADR-0001 — Polling over push (PPDM exposes only SMTP/SNMP push; REST polling chosen).
  - ADR-0002 — PowerShell implementation (+ revisit trigger to Go at fleet scale).
  - ADR-0003 — Idempotency via watermark + Jira-search dedup.
  - ADR-0004 — Config-driven routing.
  - ADR-0005 — One-way sync for v1.
  - ADR-0006 — Secret management and TLS.

## Summary of decisions

| Decision | Choice |
|---|---|
| Ingestion | Poll `GET /api/v2/alerts` + `GET /api/v2/activities` (ADR-0001) |
| Scope | CRITICAL+WARNING alerts **and** FAILED / OK_WITH_ERRORS backup jobs |
| Language | Modular PowerShell module with Pester tests (ADR-0002) |
| Dedup | Per-instance watermark + Jira-search source of truth (ADR-0003) |
| Routing | External `routing.psd1` mapping table + default fallback (ADR-0004) |
| Direction | One-way PPDM → Jira (ADR-0005) |
| Secrets/TLS | SecretManagement; TLS on by default (ADR-0006) |
| Scale | 2–5 PPDM instances, scheduled run |

## Component architecture

Modular PowerShell module — single-responsibility units, each independently Pester-testable:

```
ppdm2Jira/
├─ ppdm2Jira.psd1            # module manifest
├─ Public/
│  └─ Invoke-ppdm2JiraSync.ps1   # orchestrator / entry point
├─ Private/
│  ├─ PpdmClient.ps1         # login + GET alerts/activities (paged, retry/backoff)
│  ├─ JiraClient.ps1         # auth-abstracted create/search/comment (Cloud or DC)
│  ├─ Normalizer.ps1         # PPDM alert|activity → common Incident
│  ├─ Router.ps1             # Incident → Jira project/component/labels/priority
│  ├─ Dedup.ps1             # watermark + Jira-search idempotency
│  └─ StateStore.ps1         # per-PPDM watermark read/write
├─ config/
│  ├─ settings.psd1          # instances, severity threshold, poll window, paths
│  └─ routing.psd1           # mapping table (customer-editable)
└─ tests/                    # Pester unit tests, HTTP mocked
```

### Unit contracts

| Unit | Does | Input → Output | Depends on |
|---|---|---|---|
| `PpdmClient` | Auth + paged reads from one PPDM | `(instanceCfg, watermark)` → `Alert[] + Activity[]` | secret store, `Invoke-RestMethod` |
| `JiraClient` | Auth-abstracted Jira ops | `FindOpen(key)→issue?`, `Create(target,inc)→key`, `Comment(key,text)` | secret store |
| `Normalizer` | Shape raw events into a common model | `Alert\|Activity` → `Incident` | — |
| `Router` | Resolve routing target | `(Incident, routingTable)` → `JiraTarget` | `routing.psd1` |
| `Dedup` | Decide create vs comment | `(Incident)` → `Action{Create\|Comment}` | `JiraClient`, `StateStore` |
| `StateStore` | Durable watermark | `Read(instance)→time`, `Write(instance,time)` | filesystem |
| `Invoke-ppdm2JiraSync` | Orchestrate per instance | `(settings)` → exit code + logs | all of the above |

### The `Incident` model (common shape)

```
Incident {
  dedupKey      # ppdm:<instanceId>:<alertId|activityId>
  source        # "alert" | "activity"
  instanceId
  severity      # CRITICAL | WARNING  (activities mapped from result.status)
  title         # e.g. "[PPDM:prod1] Backup FAILED — <asset>"
  body          # message/detailedDescription or result.error, + back-links
  category, subcategory
  assetRef      # resource (alert) | asset/host (activity)
  occurredAt    # postedTime | endTime
  ppdmLinks     # deep links / IDs for traceability
}
```

## Data flow

```
for each PPDM instance:
  token = PpdmClient.Login(instance)               # POST /api/v2/login → Bearer
  wm    = StateStore.Read(instance)                # last successful watermark
  since = wm - queryOverlapMinutes                 # skew overlap (settings key, default 5 min)
  raw   = PpdmClient.GetAlerts(since)              # severity in (CRITICAL,WARNING), postedTime >= since
        + PpdmClient.GetFailedActivities(since)     # result.status in (FAILED,OK_WITH_ERRORS), endTime >= since
  for each item in raw:
     inc    = Normalizer.ToIncident(item)
     target = Router.Resolve(inc, routingTable)    # default fallback if unmatched
     if JiraClient.FindOpen(inc.dedupKey):
        JiraClient.Comment(existing, "Recurred at <occurredAt> — event <dedupKey>")
     else:
        JiraClient.Create(target, inc)             # dedupKey on label + searchable field
        JiraClient.RemoteLink(key, inc)            # on EVERY create (incl. the 404-fallback)
  StateStore.Write(instance, max(wm, occurredAt))  # ONLY after full success; never below wm
```

**Watermark semantics (v0.4.0).** Activities are filtered on **`endTime`** — the moment a job
becomes *visible* as failed, and the same field the watermark advances on — not `startTime`;
otherwise a job that starts before a pass and fails after it would never match a later window
(permanently missed). Alerts filter on `postedTime`. Both filters use `ge` (inclusive), and every
read starts `queryOverlapMinutes` (optional settings key, integer ≥ 0, default **5**) before the
watermark to cover clock/visibility skew. Re-reading is safe: Jira-search dedup (ADR-0003) makes
replays idempotent, so a miss is the only dangerous direction. The watermark itself always advances
from the previous watermark (never from the overlapped `since`), so it can never move backwards.
The recurrence comment carries the incident's `occurredAt` and raw `dedupKey` (falling back to the
current UTC time only when `occurredAt` is absent), so a comment is traceable to the exact PPDM
event, not just "sometime during this sync pass".

## API contract details (from the provided specs)

### PPDM (read side)
- **Auth:** `POST /api/v2/login` → Bearer token; send `Authorization: Bearer <token>`; refresh on `401`.
- **Alerts:** `GET /api/v2/alerts?filter=<severity+time>&pageSize=...` with `queryState` paging.
- **Activities:** `GET /api/v2/activities?filter=<state+result.status+time>&pageSize=...` with paging.

### Jira (write side)
Full detail in **`docs/design/jira-integration-contract.md`** (grounded in `docs/swagger/jira-swagger-v3.json`). Summary:
- **Create:** `POST /rest/api/3/issue` — `description` is **ADF (Atlassian Document Format)**, not a plain string in v3.
- **Dedup search:** `POST /rest/api/3/search/jql` — JQL on the sanitised dedup **label** (`ppdm_<instance>_<id>`) filtered to `statusCategory != Done`.
- **Recurrence comment:** `POST /rest/api/3/issue/{key}/comment` (ADF body).
- **Traceability:** `POST /rest/api/3/issue/{key}/remotelink` with `globalId` = dedup key → idempotent deep-link back to the PPDM alert/activity.
- **Auth abstraction:** Cloud (Basic `email:api_token`, v3, ADF) vs Data Center (Bearer PAT, v2, wiki) behind one `JiraClient` config.

### Open validation items (M0 spike) — status 2026-07-01
- Jira flavour: ✅ **confirmed Data Center v2** (Bearer/wiki/`/rest/api/2`); pagination ✅ resolved (DC `startAt`, Cloud `nextPageToken`) — see the Jira contract §4/§10.
- PPDM filter operator syntax (`eq`/`in`/`gt`/`ge`/`ne`) + timestamp + `endTime` as an activities filter field: ⏳ **partially** — the v2 spec confirms the `filter` param is free-form "PowerProtect Data Manager filter syntax" and `endTime` exists on the Activity model; operators are adopted from the proven PPDM-pwsh filters. Full confirmation needs live PPDM — run `scripts/Test-ppdm2JiraPpdmConnection.ps1` (it exercises the exact production filter).

## Error handling & resilience

- Per-instance isolation — one PPDM failure does not stop others (FR-10).
- Retry with exponential backoff on `429`/`5xx`; token refresh on `401`.
- Watermark advanced only on full success → safe replay (NFR-2).
- `-DryRun` computes and logs all intended actions with no Jira writes (FR-9).
- One structured log line per Incident: instance, source, dedupKey, action, Jira key (FR-11).

## Security

- Secrets via PowerShell SecretManagement / env, never plaintext (ADR-0006).
- TLS validation on by default; explicit, logged per-instance lab opt-out only.
- Read-only PPDM account; least-privilege Jira account.
- Semgrep scan on generated reference code before delivery.

## Testing strategy

- Pester unit tests per unit with mocked `Invoke-RestMethod` — no live PPDM/Jira required.
- Dedicated tests for: dedup-key generation, routing resolution + default fallback, normalization of both sources, watermark advance-only-on-success.
- `-DryRun` end-to-end smoke test against recorded JSON fixtures.

## Out of scope (v1)

PPDM write-back / acknowledgement (ADR-0005), MSP fleet scaling (ADR-0002 revisit), INFORMATIONAL alerts, non-Jira targets, real-time push.

## Open items for M0 spike — status 2026-07-01

1. PPDM filter operator syntax + date format + `endTime` as an activities filter field — ⏳ partially confirmed (see above); live confirmation via `scripts/Test-ppdm2JiraPpdmConnection.ps1`.
2. Jira deployment + auth — ✅ **confirmed Data Center v2** (Bearer PAT, `/rest/api/2`, wiki body).
3. Same failure appearing as **both** alert and activity → ✅ **handled**: correlate on `jobId` to open one ticket (`Merge-ppdm2JiraCorrelatedIncidents` + `ppdm_job_<instanceId>_<jobId>` label). Confirm real-world overlap on the live smoke test.
