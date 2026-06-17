# ADR-0004 — Config-driven routing (routing is data, not code)

| | |
|---|---|
| Status | Accepted |
| Date | 2026-06-17 |
| Deciders | Backup Engineering, Customer |
| Related | PRD §9, FR-5 |

## Context

Each ticket must reach the team that owns the affected system, ready for qualification and assignment. Team ownership, project structure, and components change over time and are a **customer** concern, not an engineering one. Hard-coding routing would force a code change and release for every reorganisation.

## Decision

Drive routing from an external, human-readable mapping file (`config/routing.psd1`) keyed on `(source, severity, category/subcategory)` and resolving to:

```
{ project, component, labels, assigneeGroup, priority }
```

Rules are evaluated most-specific first; a **mandatory default fallback rule** guarantees every event is routable so nothing is silently dropped (FR-5).

## Consequences

**Positive**
- Customers re-own/re-route tickets by editing data, with no code change or redeploy.
- The routing table is itself a reviewable, sign-off-able artifact.
- Severity→priority mapping lives beside routing, keeping ticket shaping in one place.

**Negative / trade-offs**
- Mis-edited config can mis-route; mitigated by schema validation on load and a tested default rule.
- Very complex conditional routing may eventually outgrow a flat table (acceptable for v1 scope).

## Alternatives considered

- **Single project, manual triage** — rejected: loses most of the automation value (no pre-assignment).
- **Hard-coded routing in code** — rejected: every ownership change needs a release; not customer-editable.
- **Route purely by source/resource** — folded in as one of the table's key dimensions rather than the sole basis.
