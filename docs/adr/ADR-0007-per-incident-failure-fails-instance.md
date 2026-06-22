# ADR-0007 — A per-incident failure fails the whole instance run

| | |
|---|---|
| Status | Accepted (as built, 2026-06-22) |
| Relates to | ADR-0003 (idempotency/watermark), [Jira contract §8](../design/jira-integration-contract.md), PRD NFR-2 |

## Context

The Jira integration contract §8 originally said that on a `400` (field/screen validation) the
integration should "fail the item, continue others." Taken literally, that means: skip the bad
incident, keep processing the rest of the instance, and still advance the watermark at the end.

That wording conflicts with the **no-data-loss** guarantee (NFR-2) realised by the watermark design
(ADR-0003): the watermark advances only after a *fully* successful instance run so that a crash or
outage never drops events. If we skipped a failed incident **and** advanced the watermark past it,
that incident would never be retried — it would be silently lost. Dedup (Jira search) already makes
re-processing the *successful* incidents safe (they become comments, not duplicate tickets), so
replaying the whole window on the next run is cheap and correct.

## Decision

When **any** incident in an instance fails (a Jira `4xx`/`5xx` that isn't the handled `404`→create
case, an auth error, or any unexpected throw), the orchestrator:

1. logs the failure for that instance,
2. does **not** advance that instance's watermark,
3. returns a non-zero exit code,
4. continues to the **next instance** (per-instance isolation, FR-10).

The watermark advances only when an instance processes every incident without error. The failed
window is re-read on the next run; dedup prevents duplicate tickets for the incidents that already
succeeded.

## Consequences

- **No data loss** — a failing incident is retried next run rather than skipped-and-forgotten.
- **Per-instance isolation preserved** — one instance's failure never blocks the others.
- **Slightly more rework on failure** — the next run re-reads and re-dedups the whole window for the
  failed instance. This is bounded by the poll window and made safe/cheap by Jira-search dedup.
- **Contract wording updated** — §8 of the Jira integration contract is amended from "fail the item,
  continue others" to reflect instance-level failure semantics.

## Alternatives considered

- **Per-incident skip + advance watermark (the literal §8 reading).** Rejected: it can silently drop
  the failed event, violating NFR-2.
- **Per-incident dead-letter queue.** Deferred: adds state and operational surface beyond v1 scope;
  the replay-on-next-run approach achieves no-data-loss without it. Revisit if a single poison
  incident repeatedly blocks an instance's watermark in practice.
