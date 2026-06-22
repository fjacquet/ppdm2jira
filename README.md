# Ppdm2Jira

[![CI](https://github.com/fjacquet/ppdm2jira/actions/workflows/ci.yml/badge.svg)](https://github.com/fjacquet/ppdm2jira/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![PowerShell 5.1+](https://img.shields.io/badge/PowerShell-5.1%2B-5391FE.svg)](https://learn.microsoft.com/powershell/)
[![Pester](https://img.shields.io/badge/tested%20with-Pester%205-3A6CF6.svg)](https://pester.dev/)

A one-way integration that polls **Dell PowerProtect Data Manager (PPDM)** for critical/warning
alerts and failed backup jobs and opens or updates **Jira** issues for them — routed to the right
team, deduplicated so recurrences don't spam the queue, and traceable back to the originating PPDM
event.

> **Status:** v1 — one-way (PPDM → Jira), scheduled polling, 2–5 PPDM instances. See the
> [PRD](docs/prd/PRD-ppdm-jira-integration.md) and [design spec](docs/superpowers/specs/2026-06-17-ppdm-jira-integration-design.md).

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

The module is a set of single-responsibility units behind one orchestrator. The read side talks to
PPDM via the [PPDM-pwsh](https://github.com/bottkars/PPDM-pwsh) module; the write side abstracts
**Jira Cloud** (v3 / Basic / ADF) and **Jira Data Center** (v2 / Bearer / wiki) behind one client
config. All network I/O funnels through a single, mockable boundary, so the test suite needs no live
systems.

| Unit | Responsibility |
|---|---|
| `PpdmClient` | Build PPDM filters, read alerts/activities → `Incident[]` |
| `Normalizer` | Pure transform: raw alert\|activity → common `Incident` |
| `Router` | `Incident` → Jira `{project, component, labels, priority}` (config-driven, default fallback) |
| `JiraClient` | Auth-abstracted find / create / comment / remote-link (Cloud + Data Center) |
| `Dedup` | Jira-as-source-of-truth create-vs-comment decision |
| `StateStore` | Durable, atomic per-instance watermark |
| `Invoke-Ppdm2JiraSync` | Orchestrate per instance — the only exported function |

## Requirements

- **Windows PowerShell 5.1+** or **PowerShell 7+**
- [`PPDM-pwsh`](https://github.com/bottkars/PPDM-pwsh) (read transport)
- [`Microsoft.PowerShell.SecretManagement`](https://learn.microsoft.com/powershell/utility-modules/secretmanagement/overview) + a registered vault (e.g. `Microsoft.PowerShell.SecretStore`)
- A Jira service account with **Create Issues** + **Add Comments** on the target projects
- A read-only PPDM account

## Quick start

```powershell
# 1. Clone and import
git clone https://github.com/fjacquet/ppdm2jira.git
Import-Module ./ppdm2jira/Ppdm2Jira/Ppdm2Jira.psd1

# 2. Create config from the templates
Copy-Item ./ppdm2jira/Ppdm2Jira/config/settings.psd1.example ./settings.psd1
Copy-Item ./ppdm2jira/Ppdm2Jira/config/routing.psd1.example  ./routing.psd1
#   ...edit baseUrl, instance ids, jira flavour, routing rules...

# 3. Register the secrets named in settings.psd1 (prompts securely; no plaintext on disk)
./ppdm2jira/scripts/Set-Ppdm2JiraSecrets.ps1 -ConfigPath ./settings.psd1 -RegisterVaultIfMissing

# 4. Dry run (no Jira writes), then run for real
Invoke-Ppdm2JiraSync -ConfigPath ./settings.psd1 -DryRun
Invoke-Ppdm2JiraSync -ConfigPath ./settings.psd1
```

Full setup (secret vault, config fields, scheduling, troubleshooting) is in the
**[User Guide](docs/guide/user-guide.md)**.

## Configuration

Credentials are **never** stored in config or on disk — config holds only `secretName` references
that name entries in your SecretManagement vault ([ADR-0006](docs/adr/ADR-0006-secret-management-and-tls.md)).
`settings.psd1` defines instances, the Jira client flavour, and paths; `routing.psd1` is a
customer-editable mapping with a mandatory default rule so nothing is ever dropped. Start from
`Ppdm2Jira/config/*.psd1.example`.

## Testing

```powershell
Invoke-Pester ./Ppdm2Jira/tests                 # full suite (HTTP/PPDM/secrets all mocked)
Invoke-ScriptAnalyzer -Path ./Ppdm2Jira -Recurse
```

CI runs the suite + PSScriptAnalyzer on Ubuntu (pwsh 7) and Windows (Windows PowerShell 5.1 and pwsh 7).

## Documentation

- [PRD](docs/prd/PRD-ppdm-jira-integration.md) — problem, requirements, success metrics
- [Design spec](docs/superpowers/specs/2026-06-17-ppdm-jira-integration-design.md) — architecture & data flow
- [Jira integration contract](docs/design/jira-integration-contract.md) — endpoints, ADF, dedup, field mapping
- [ADRs](docs/adr/) — the load-bearing decisions
- [User Guide](docs/guide/user-guide.md) — install, configure, run, schedule
- [CHANGELOG](CHANGELOG.md)

## Known limitations (v1)

- No alert↔activity correlation — a single failure surfacing as both may yield two tickets.
- A per-incident failure fails the whole instance run and does **not** advance the watermark (safe
  replay; see [ADR-0007](docs/adr/ADR-0007-per-incident-failure-fails-instance.md)).
- Live PPDM filter syntax and the Jira deployment flavour are confirmed at deployment time.

## License

[MIT](LICENSE). Adapts MIT-licensed filter knowledge from PPDM-pwsh — see [THIRD_PARTY_NOTICES](THIRD_PARTY_NOTICES.md).
