# Design Spec — PPDM → Jira Alert & Backup-Failure Integration

| | |
|---|---|
| Status | Draft for customer review |
| Date | 2026-06-17 |
| Scope | v1 — one-way, 2–5 PPDM instances, PowerShell |

This is the master design document. It links the customer-facing **PRD** and the **ADRs** and specifies the component design the developer team will build against.

## Document map

- **PRD** — `docs/prd/PRD-ppdm-jira-integration.md` (problem, goals, requirements, success metrics, milestones).
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
Ppdm2Jira/
├─ Ppdm2Jira.psd1            # module manifest
├─ Public/
│  └─ Invoke-Ppdm2JiraSync.ps1   # orchestrator / entry point
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
| `Invoke-Ppdm2JiraSync` | Orchestrate per instance | `(settings)` → exit code + logs | all of the above |

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
  raw   = PpdmClient.GetAlerts(wm)                 # severity in (CRITICAL,WARNING), postedTime > wm
        + PpdmClient.GetFailedActivities(wm)        # result.status in (FAILED,OK_WITH_ERRORS), endTime > wm
  for each item in raw:
     inc    = Normalizer.ToIncident(item)
     target = Router.Resolve(inc, routingTable)    # default fallback if unmatched
     if JiraClient.FindOpen(inc.dedupKey):
        JiraClient.Comment(existing, "recurred @ <ts>")
     else:
        JiraClient.Create(target, inc)             # dedupKey on label + searchable field
  StateStore.Write(instance, max(occurredAt))      # ONLY after full success
```

## API contract details (from the provided specs)

- **Auth:** `POST /api/v2/login` → Bearer token; send `Authorization: Bearer <token>`; refresh on `401`.
- **Alerts:** `GET /api/v2/alerts?filter=<severity+time>&pageSize=...` with `queryState` paging.
- **Activities:** `GET /api/v2/activities?filter=<state+result.status+time>&pageSize=...` with paging.
- **Jira create:** `POST /rest/api/3/issue`; **search:** `GET/POST /rest/api/3/search` (JQL on dedup label); **comment:** `POST /rest/api/3/issue/{key}/comment`.
- **Open validation item (M0 spike):** confirm PPDM filter operator syntax (`eq`/`in`/`gt`) and timestamp format, and confirm Jira flavor (Cloud vs DC) auth.

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

## Open items for M0 spike

1. Confirm PPDM filter operator syntax and date format against the PPDM REST API guide / sandbox.
2. Confirm Jira deployment (Cloud vs Data Center) and corresponding auth.
3. Confirm whether the same failure can appear in **both** alerts and activities, and whether to correlate on `jobId` to avoid two tickets for one failure.
