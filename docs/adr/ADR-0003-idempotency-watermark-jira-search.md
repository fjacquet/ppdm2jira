# ADR-0003 — Idempotency via per-instance watermark + Jira-search dedup

| | |
|---|---|
| Status | Accepted |
| Date | 2026-06-17 |
| Deciders | Backup Engineering |
| Related | ADR-0001 (polling), PRD §10, FR-6, FR-8, NFR-1, NFR-2 |

## Context

Polling with overlapping time windows (ADR-0001) yields **at-least-once** delivery: the same alert/activity can be fetched more than once (restart, retry, clock skew, recurring alert). Without dedup this produces duplicate Jira tickets. Two state mechanisms are in play:

- A **watermark** (last successful event time per PPDM instance) bounds *how much* we query.
- A **dedup decision** determines *whether a ticket already exists* for a given event.

## Decision

Use **both**, with clear roles:

1. **Watermark (local state file, per instance):** record the max `postedTime` / `endTime` successfully processed. Advance it **only after** a fully successful run. Used solely to limit the query window — it is an optimisation, not the source of truth.
2. **Jira search as source of truth for dedup:** each event gets a stable key `ppdm:<instanceId>:<alertId|activityId>` stored on a Jira **label** and a searchable field. Before creating, run JQL for an **open** issue with that key. If found → add a recurrence comment; else → create.

## Consequences

**Positive**
- Surviving a lost/corrupt watermark cannot create duplicates — Jira search still catches existing tickets (worst case: a wider, slower re-scan).
- A crash or Jira outage mid-run leaves the watermark un-advanced → next run safely replays; dedup absorbs the overlap → **no loss, no duplicates**.
- Recurring alerts enrich one ticket instead of flooding the queue.

**Negative / trade-offs**
- Every event costs one Jira search before a possible create (acceptable at this volume).
- Requires a stable, collision-free dedup key and a Jira field/label to store it.

## Alternatives considered

- **Local state file only** — rejected: a lost/corrupt file causes duplicates or gaps; not safe enough (NFR-2).
- **Jira search only (no watermark)** — viable but re-scans a growing window every run; rejected for efficiency at steady state. Kept as the fallback behaviour if the watermark is missing.
