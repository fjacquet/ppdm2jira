# ADR-0005 — One-way sync (PPDM → Jira) for v1

| | |
|---|---|
| Status | Accepted |
| Date | 2026-06-17 |
| Deciders | Backup Engineering, Customer |
| Related | PRD §3 (NG1), §10 |

## Context

The system could be one-way (create/update Jira tickets from PPDM events) or two-way (also write back to PPDM — e.g., acknowledge/annotate the alert via `POST /api/v2/alerts/{id}/acknowledgement` when the Jira ticket is resolved). Two-way sync adds value but also adds: a Jira→integration trigger path, a write-capable PPDM account, status-mapping rules, and new failure modes.

## Decision

Ship **one-way (PPDM → Jira)** in v1. The integration only reads from PPDM and creates/comments in Jira. Ticket lifecycle (qualification, assignment, resolution) is handled inside Jira.

## Consequences

**Positive**
- Smallest, lowest-risk surface to build, review, and approve.
- PPDM credentials can be **read-only** (smaller blast radius, easier security sign-off).
- No dependency on Jira webhooks/automation to drive a write-back path.

**Negative / trade-offs**
- PPDM's alert acknowledgement state is not updated when work completes in Jira; operators may see an alert "open" in PPDM that is resolved in Jira.
- Reporting that correlates PPDM-ack with Jira-resolution is deferred.

## Revisit trigger

Plan two-way sync as a v2 increment if the customer needs PPDM alert state to reflect Jira resolution, or needs closed-loop SLA reporting across both systems.

## Alternatives considered

- **Two-way sync now** — deferred: extra moving parts and write permissions not justified for v1 acceptance.
