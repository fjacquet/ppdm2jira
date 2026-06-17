# ADR-0001 — Use polling, not push, to ingest PPDM events

| | |
|---|---|
| Status | Accepted |
| Date | 2026-06-17 |
| Deciders | Backup Engineering, Customer |
| Related | ADR-0003 (idempotency), PRD §6, §8 |

## Context

We must ingest PPDM **alerts** and **failed backup jobs** to create Jira tickets. PPDM offers two integration styles:

1. **Push** — PPDM `external-notifications` (`GET/POST /api/v2/external-notifications`). Inspection of the OpenAPI spec (`9765-20.1.0.json`) shows the `protocol` field enumerates only **`SMTP`** and **`SNMP`**. There is **no webhook/HTTP callback** option.
2. **Pull** — query `GET /api/v2/alerts` and `GET /api/v2/activities`, which return structured JSON with the exact fields we need (severity, category, result.status, timestamps, source asset, IDs).

SMTP/SNMP would force us to parse emails or trap PDUs — lossy, brittle, and unstructured — to recover data the REST API already returns cleanly.

## Decision

**Poll the PPDM REST API** (`/api/v2/alerts` and `/api/v2/activities`) on a configurable interval, using a per-instance time **watermark** to fetch only events newer than the last successful run.

## Consequences

**Positive**
- Structured, complete data straight from the API — no parsing of emails/traps.
- Full control over filtering (severity threshold, status, time window) and pagination.
- No inbound listener/SMTP relay/SNMP receiver to host and secure.

**Negative / trade-offs**
- Latency is bounded by the poll interval (near-real-time, not instant).
- Requires durable per-instance state (watermark) — addressed in ADR-0003.
- At-least-once semantics: overlapping windows can re-fetch events → must be idempotent (ADR-0003).

## Alternatives considered

- **SMTP ingestion** — rejected: unstructured, locale/format-fragile, needs a mail pipeline.
- **SNMP traps** — rejected: lossy, needs a trap receiver, poor payload fidelity.
- **Wait for a future PPDM webhook** — rejected: not available in the in-scope versions (v1/v2/v3 specs reviewed).
