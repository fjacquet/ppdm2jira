# ADR-0002 — Implement in PowerShell (with a documented revisit trigger to Go)

| | |
|---|---|
| Status | Accepted |
| Date | 2026-06-17 |
| Deciders | Backup Engineering, Customer |
| Related | PRD §3 (non-goals), ADR-0004 |

## Context

The integration must poll 2–5 PPDM instances, transform events, and create Jira tickets on a schedule. Three implementation styles were compared: a **PowerShell script/module**, a **compiled Go service**, and an **n8n / low-code workflow**.

| Criterion | PowerShell | Go | n8n |
|---|---|---|---|
| Fit for scheduled REST/JSON polling at this scale | Strong | Strong (heavier) | Quick to wire |
| Dedup / routing / state logic clarity | Adequate | Best (typed, testable) | Poor (hidden in visual nodes) |
| Customer-reviewable artifact | Plain text | Needs Go literacy | JSON export, not review-friendly |
| Unit testing | Pester + mocked HTTP | Best | Limited |
| Deployment footprint | Task Scheduler/cron, no infra | Binary/container | Requires the n8n platform |
| Secret handling | SecretManagement / vault | Good | Stored in n8n DB |

## Decision

Implement v1 as a **modular PowerShell module** (`Ppdm2Jira`) with single-responsibility units and Pester tests — not a monolithic `.ps1`.

Rationale: at 2–5 instances with one-way, scheduled polling, PowerShell is low-friction, needs no extra runtime infrastructure, and produces the **most customer-reviewable artifact** for the approval gate. The hard logic (dedup, routing) stays in readable, testable code rather than being hidden in a low-code canvas.

## Revisit trigger

Re-evaluate in favour of a **Go service** (which aligns with the team's existing Dell-exporter stack) if **any** of these become true:
- Scale moves to the "Many / MSP fleet" tier (per-tenant routing, high concurrency).
- A long-running daemon / sub-minute latency is required.
- Cross-platform container deployment becomes a hard requirement.

## Consequences

**Positive** — fast to deliver, no runtime infra, readable for sign-off, native REST/JSON, testable with Pester.

**Negative** — weaker type safety than Go; verbose for complex transforms; PowerShell 7+ must be present on the host.

## Alternatives considered

- **Go service** — deferred via the revisit trigger above; overkill for 2–5 instances today.
- **n8n / low-code** — rejected: the dedup/routing logic is the crux of the system and low-code hides exactly that from version control and review.
