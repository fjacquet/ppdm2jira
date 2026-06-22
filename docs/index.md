# Ppdm2Jira

A one-way integration that polls **Dell PowerProtect Data Manager (PPDM)** for critical/warning
alerts and failed backup jobs and opens or updates **Jira** issues for them — routed to the right
team, deduplicated so recurrences don't spam the queue, and traceable back to the originating PPDM
event.

[Get started with the Quickstart →](guide/quickstart.md){ .md-button .md-button--primary }
[User Guide](guide/user-guide.md){ .md-button }

## How it works

```
for each PPDM instance:
  read alerts (CRITICAL/WARNING) + failed activities (FAILED/OK_WITH_ERRORS) since the watermark
    → normalize each into a common Incident
    → route to a Jira target (project/component/labels/priority) via routing.psd1
    → search Jira for an open issue with the dedup label
        found    → add a recurrence comment
        not found → create the issue (+ idempotent remote-link back to PPDM)
  advance the per-instance watermark ONLY after the whole instance succeeds
```

Single-responsibility units behind one orchestrator. The read side uses the
[PPDM-pwsh](https://github.com/bottkars/PPDM-pwsh) module; the write side abstracts **Jira Cloud**
(v3 / Basic / ADF) and **Jira Data Center** (v2 / Bearer / wiki) behind one client config. All
network I/O funnels through a single mockable boundary, so the test suite needs no live systems.

| Unit | Responsibility |
|---|---|
| `PpdmClient` | Build PPDM filters, read alerts/activities → `Incident[]` |
| `Normalizer` | Pure transform: raw alert\|activity → common `Incident` |
| `Router` | `Incident` → Jira `{project, component, labels, priority}` (config-driven, default fallback) |
| `JiraClient` | Auth-abstracted find / create / comment / remote-link (Cloud + Data Center) |
| `Dedup` | Jira-as-source-of-truth create-vs-comment decision |
| `StateStore` | Durable, atomic per-instance watermark |
| `Invoke-Ppdm2JiraSync` | Orchestrate per instance — the only exported function |

## Documentation map

- **[Quickstart](guide/quickstart.md)** — progressive tutorial, from first dry run to extending the module
- **[User Guide](guide/user-guide.md)** — install, configure, run, schedule, troubleshoot
- **[PRD](prd/PRD-ppdm-jira-integration.md)** — problem, requirements, success metrics
- **[Design spec](superpowers/specs/2026-06-17-ppdm-jira-integration-design.md)** — architecture & data flow
- **[Jira integration contract](design/jira-integration-contract.md)** — endpoints, ADF, dedup, field mapping
- **[ADRs](adr/index.md)** — the load-bearing decisions

## Status

v1 — one-way (PPDM → Jira), scheduled polling, 2–5 PPDM instances. Verified: Pester 39/39,
PSScriptAnalyzer 0, Semgrep 0; CI on Ubuntu (pwsh 7) and Windows (Windows PowerShell 5.1 + pwsh 7).
Source and releases on [GitHub](https://github.com/fjacquet/ppdm2jira).
