# PRD — PowerProtect Data Manager → Jira Alert & Backup-Failure Integration

| Field | Value |
|---|---|
| Status | Draft for customer review |
| Author | Platform / Backup Engineering |
| Date | 2026-06-17 |
| Version | 0.1 |
| Related | `docs/adr/ADR-0001` … `ADR-0006`, master design spec under `docs/superpowers/specs/` |

---

## 1. Overview

Dell **PowerProtect Data Manager (PPDM)** raises operational signals — system **alerts** (CRITICAL / WARNING) and **failed backup jobs** — through its REST API. Today these are seen only inside the PPDM console (or via SMTP/SNMP notifications), which means backup failures are easy to miss, hard to assign to an owning team, and leave no audit trail of who handled them.

This project delivers an automated integration that **converts qualifying PPDM alerts and failed backup jobs into Jira tickets**, routed to the correct team, deduplicated so recurring conditions don't spam the queue, and fully traceable from the originating PPDM event to ticket resolution.

## 2. Problem statement

- Backup failures and critical alerts are **not surfaced** in the team's primary work system (Jira).
- There is **no consistent ownership/assignment** of backup incidents.
- There is **no traceability** linking a PPDM event to the remediation work.
- PPDM's only native push channels are **SMTP and SNMP** — neither produces structured, routable, deduplicated work items.

## 3. Goals & non-goals

### Goals
- G1 — Create a Jira ticket for every qualifying PPDM **alert** (CRITICAL/WARNING) and **failed backup job**.
- G2 — **Route** each ticket to the correct team via a customer-editable mapping, ready for qualification and assignment.
- G3 — **Deduplicate**: a recurring alert updates its existing open ticket instead of creating a new one.
- G4 — Provide **traceability**: every ticket links back to the PPDM instance, event ID, severity, and source asset.
- G5 — Be **safe to run on a schedule** across 2–5 PPDM instances with no lost and no duplicated events.

### Non-goals (v1)
- NG1 — No write-back to PPDM (no auto-acknowledge). One-way only. *(See ADR-0005.)*
- NG2 — No MSP/multi-tenant fleet scaling. Designed for 2–5 instances. *(Revisit trigger in ADR-0002.)*
- NG3 — No real-time/push delivery (PPDM has no webhook). Near-real-time polling only. *(See ADR-0001.)*
- NG4 — No custom analytics/dashboards beyond Jira's own reporting.
- NG5 — No INFORMATIONAL-severity alerts by default.

## 4. Personas

| Persona | Need |
|---|---|
| Backup operator | Sees failures as actionable, pre-routed Jira tickets instead of console-watching. |
| Team lead / dispatcher | Tickets land in the right project/component with team assignment for qualification. |
| Auditor / service manager | Traceable chain: PPDM event → ticket → resolution. |
| Integration maintainer | Editable routing/config without code changes; testable, observable runs. |

## 5. Scope

**In scope:** polling PPDM alerts + failed activities; normalization; routing; dedup; Jira ticket create/comment; per-instance state; dry-run; structured logging; secret management.

**Out of scope (v1):** PPDM write-back, ticket-close → PPDM sync, non-Jira targets, INFORMATIONAL alerts, fleet-scale concurrency.

## 6. Functional requirements

| ID | Requirement |
|---|---|
| FR-1 | Authenticate to each PPDM instance via `POST /api/v2/login` and use the returned Bearer token for subsequent calls; refresh on `401`. |
| FR-2 | Poll `GET /api/v2/alerts` for `severity in (CRITICAL, WARNING)` (configurable threshold) newer than the per-instance watermark, handling pagination. |
| FR-3 | Poll `GET /api/v2/activities` for completed jobs with `result.status in (FAILED, OK_WITH_ERRORS)` (configurable) newer than the watermark, handling pagination. |
| FR-4 | Normalize each alert/activity into a common **Incident** object with a stable dedup key, title, body, severity, source, and back-links. |
| FR-5 | Route each Incident to a Jira `{project, component, labels, assignee/group, priority}` via the external routing table, with a default fallback rule so nothing is dropped. |
| FR-6 | Before creating, search Jira (JQL) for an **open** issue carrying the Incident's dedup key; if found, add a recurrence comment instead of creating a duplicate. |
| FR-7 | Create a Jira issue (`POST /rest/api/3/issue`) with the dedup key stored as a searchable label, severity mapped to priority, and the body rendered as ADF (Atlassian Document Format) on Jira Cloud v3. |
| FR-7a | Attach a Jira **remote link** (`POST /rest/api/3/issue/{key}/remotelink`, `globalId` = dedup key) deep-linking back to the originating PPDM alert/activity, for end-to-end traceability. |
| FR-8 | Persist a per-instance watermark only **after** a fully successful run; on failure, do not advance it (safe replay). |
| FR-9 | Support `-DryRun`: compute and log all intended actions without calling Jira write APIs. |
| FR-10 | Process each PPDM instance in isolation: one instance failing must not stop the others. |
| FR-11 | Emit one structured log line per Incident: instance, source, dedup key, action (created/commented/skipped), Jira key. |

## 7. Non-functional requirements

| ID | Requirement |
|---|---|
| NFR-1 | **Idempotency** — at-least-once polling must never create duplicate tickets (guaranteed by FR-6). |
| NFR-2 | **No data loss** — a crash or Jira outage must not drop events (guaranteed by FR-8). |
| NFR-3 | **Security** — no plaintext credentials; secrets via PowerShell SecretManagement / env / vault; TLS validated by default. |
| NFR-4 | **Maintainability** — modular PowerShell module, single-responsibility units, Pester unit tests with mocked HTTP. |
| NFR-5 | **Operability** — runs unattended via Task Scheduler/cron; structured logs; clear exit codes. |
| NFR-6 | **Reviewability** — config and routing are plain-text and human-readable for customer sign-off. |
| NFR-7 | **Portability of Jira auth** — support Jira Cloud (email+API token) and Data Center (PAT) behind one auth abstraction. |

## 8. Data sources (verified against the provided OpenAPI specs)

**Alerts — `GET /api/v2/alerts`** (spec `9765-20.1.0.json`): `id`, `severity` (`CRITICAL`/`WARNING`/`INFORMATIONAL`), `category`, `subcategory`, `messageID`, `message`, `detailedDescription`, `postedTime`, `lastOccurrenceTime`, `responseAction`, `resource`, `jobId`, `activitiesCount`.

**Failed jobs — `GET /api/v2/activities`** (spec `9765-20.1.0.json`): `id`, `displayId`, `category`, `subcategory`, `state` (`COMPLETED`…), `result.status` (`OK`/`FAILED`/`OK_WITH_ERRORS`/`CANCELED`/`SKIPPED`/`UNKNOWN`), `result.error`, `asset`, `host`, `startTime`, `endTime`.

> **Open validation item:** PPDM's exact filter operator syntax (RSQL-style `eq` / `in` / `gt`) and date format must be confirmed against the PPDM REST API guide during implementation. Treated as a Phase-0 spike, not an assumption.

## 9. Routing & assignment

A customer-editable mapping (`config/routing.psd1`) keyed on `(source, severity, category/subcategory)` resolving to `{project, component, labels, assigneeGroup, priority}`, plus a mandatory default rule. Routing is **data, not code**, so the customer can change team ownership without a release.

## 10. Deduplication & lifecycle

- Dedup key: `ppdm:<instanceId>:<alertId|activityId>`.
- Jira is the **source of truth** for "does a ticket already exist"; the watermark only bounds the query window.
- Recurrence → comment on the existing open ticket (with timestamp/occurrence count).
- Lifecycle is one-way in v1; ticket resolution is a human/Jira workflow concern.

## 11. Security & compliance

- Credentials retrieved at runtime from a secret store; never written to disk or logs.
- TLS certificate validation enabled by default; lab self-signed opt-out is an explicit, logged flag.
- Generated reference code is scanned with **Semgrep** before delivery.
- Least-privilege Jira account (create/search/comment on target projects only); read-only PPDM account.

## 12. Success metrics

| Metric | Target |
|---|---|
| Qualifying PPDM events that become a ticket | 100% (no loss) |
| Duplicate tickets for the same event | 0 |
| Tickets landing in the correct project/component | ≥ 95% via routing table |
| Mean time from PPDM event to ticket | ≤ 1 polling interval (configurable, e.g. ≤ 5 min) |
| Unattended runs without manual intervention | ≥ 99% |

## 13. Milestones

1. **M0 — Spike:** confirm PPDM filter syntax + Jira auth flavor against live/sandbox endpoints.
2. **M1 — Read path:** PPDM client (login, paged alerts + activities) with Pester tests.
3. **M2 — Transform:** normalization + routing + dedup-key generation with tests.
4. **M3 — Write path:** Jira client (auth abstraction, search, create, comment) with tests.
5. **M4 — Orchestration:** per-instance loop, state store, retry/backoff, dry-run, logging.
6. **M5 — Hardening:** Semgrep scan, secret store wiring, docs, runbook, scheduled deployment.

## 14. Risks & open questions

| Risk / question | Mitigation |
|---|---|
| PPDM filter syntax differs from assumed | M0 spike before build |
| Jira Cloud vs DC not yet chosen | Auth abstraction (NFR-7); decide at M0 |
| Alert ↔ failed-activity overlap (same failure from both sources) | Dedup key namespacing + optional correlation on `jobId` |
| Routing table drift / unmapped categories | Mandatory default fallback rule (FR-5) |
| Token/session expiry mid-run | Refresh on 401 (FR-1) |

## 15. Acceptance criteria

- A CRITICAL alert and a FAILED backup job each produce exactly one correctly-routed Jira ticket.
- Re-running the integration over the same window creates **zero** new tickets (idempotent).
- A simulated Jira outage advances **no** watermark; the next run recovers all events.
- All credentials are sourced from the secret store; none appear in config or logs.
- `-DryRun` produces a complete action plan with no Jira writes.
