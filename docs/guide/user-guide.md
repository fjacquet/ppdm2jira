# Ppdm2Jira — User Guide

How to install, configure, run, and schedule the integration. For the *why*, see the
[PRD](../prd/PRD-ppdm-jira-integration.md), [design spec](../superpowers/specs/2026-06-17-ppdm-jira-integration-design.md),
and [ADRs](../adr/index.md).

## 1. Prerequisites

| Requirement | Notes |
|---|---|
| Windows PowerShell 5.1+ or PowerShell 7+ | The module targets 5.1 and is tested on both. |
| [`PPDM-pwsh`](https://github.com/bottkars/PPDM-pwsh) | Read transport; `Install-Module PPDM-pwsh`. |
| `Microsoft.PowerShell.SecretManagement` + a vault | e.g. `Microsoft.PowerShell.SecretStore`. |
| PPDM account | Read-only is sufficient. |
| Jira service account | **Create Issues** + **Add Comments** on each target project. Use a dedicated account, not a person's. |

## 2. Install

```powershell
git clone https://github.com/fjacquet/ppdm2jira.git
Import-Module ./ppdm2jira/Ppdm2Jira/Ppdm2Jira.psd1
Get-Command -Module Ppdm2Jira      # → Invoke-Ppdm2JiraSync
```

## 3. Store credentials (SecretManagement — no `.env`, no plaintext)

Credentials are fetched from a SecretManagement vault at runtime and are never written to config or
disk ([ADR-0006](../adr/ADR-0006-secret-management-and-tls.md), NFR-3). There is intentionally **no
`.env` file** — config holds only the *names* of vault entries.

One-time vault setup:

```powershell
Install-Module Microsoft.PowerShell.SecretManagement, Microsoft.PowerShell.SecretStore -Scope CurrentUser
Register-SecretVault -Name Ppdm2Jira -ModuleName Microsoft.PowerShell.SecretStore -DefaultVault

# One secret per PPDM instance:
Set-Secret -Name ppdm-prod1 -Secret '<ppdm-credential — see table below>'

# One secret for Jira:
Set-Secret -Name jira-api-token -Secret '<jira-api-token-or-PAT>'
```

The secret **names** above are what you reference in `settings.psd1` (`instances[].secretName` and
`jira.secretName`). For unattended/scheduled runs, configure the vault to unlock without prompting
(e.g. `Set-SecretStoreConfiguration -Authentication None` on a suitably protected host, or use a
cloud-backed vault).

### Helper script (recommended)

Instead of running `Set-Secret` by hand, use the bundled setup script — it reads your
`settings.psd1`, figures out exactly which secret names are required (every PPDM instance plus Jira),
and prompts securely for each. Values are read as `SecureString` and never materialized as plaintext.

```powershell
# First-time setup: register a default vault and prompt for each missing secret
./scripts/Set-Ppdm2JiraSecrets.ps1 -ConfigPath ./config/settings.psd1 -RegisterVaultIfMissing

# Preview what it would do, without prompting or writing
./scripts/Set-Ppdm2JiraSecrets.ps1 -ConfigPath ./config/settings.psd1 -WhatIf

# Rotate / overwrite existing secrets
./scripts/Set-Ppdm2JiraSecrets.ps1 -ConfigPath ./config/settings.psd1 -Force
```

It is idempotent: existing secrets are skipped unless you pass `-Force`.

### What each secret holds

| Secret (`secretName`) | Holds | Paired with | Used as |
|---|---|---|---|
| `jira.secretName` — **Jira Cloud** | API token from `id.atlassian.com` | `jira.email` (settings) | `Authorization: Basic base64(email:token)` |
| `jira.secretName` — **Jira Data Center** | Personal Access Token (PAT) | — | `Authorization: Bearer <PAT>` |
| `instances[].secretName` — **PPDM** | PPDM API token (see caveat) | — | passed to `Connect-PPDMapiEndpoint -Token` (SecureString) |

The Jira secret pairs with the `jira.email` field for Cloud Basic auth; Data Center uses the PAT alone.

> ⚠️ **PPDM auth caveat (deployment-time confirmation).** The current implementation treats each
> PPDM secret as a single **token** and passes it to `Connect-PPDMapiEndpoint -Token` with **no
> username**. PPDM's native login (`POST /api/v2/login`) is **username + password**, and the exact
> `Connect-PPDMapiEndpoint` signature in your PPDM-pwsh version must be confirmed (an M0 spike item;
> see the [PRD §14 / design spec open items](../prd/PRD-ppdm-jira-integration.md)). If your PPDM
> requires username + password, add a `username` field to each instance in `settings.psd1`, store
> the **password** as the secret, and adjust `Connect-Ppdm2JiraInstance` to pass a `PSCredential`
> instead of `-Token`. This is the one credential detail not yet validated against a live appliance.

## 4. Configure

Copy the templates and edit them. Both are PowerShell data files loaded with
`Import-PowerShellDataFile`. They are git-ignored once named `settings.psd1` / `routing.psd1`.

```powershell
Copy-Item ./ppdm2jira/Ppdm2Jira/config/settings.psd1.example ./config/settings.psd1
Copy-Item ./ppdm2jira/Ppdm2Jira/config/routing.psd1.example  ./config/routing.psd1
```

### settings.psd1

```powershell
@{
    stateDir    = './state'                       # where per-instance watermarks are written
    routingPath = './config/routing.psd1'
    instances   = @(
        @{ id = 'prod1'; baseUrl = 'https://prod1.ppdm.example/api/v2'; secretName = 'ppdm-prod1' }
    )
    jira = @{
        baseUrl     = 'https://your-org.atlassian.net'
        apiVersion  = 3            # 3 = Cloud (ADF) | 2 = Data Center (wiki)
        authMode    = 'basic'      # 'basic' = Cloud (email:token) | 'bearer' = DC (PAT)
        bodyFormat  = 'adf'        # 'adf' = Cloud | 'wiki' = DC
        email       = 'svc-ppdm2jira@your-org.example'   # used only for basic auth
        secretName  = 'jira-api-token'
        tlsValidate = $true        # keep $true; only disable for a lab with self-signed certs
    }
}
```

| Field | Meaning |
|---|---|
| `instances[].id` | Logical id used in dedup keys, titles, and the watermark filename. |
| `instances[].baseUrl` | PPDM REST base (`.../api/v2`). |
| `instances[].secretName` | Vault entry holding that instance's PPDM credential. |
| `jira.apiVersion / authMode / bodyFormat` | Select Cloud (3/basic/adf) or Data Center (2/bearer/wiki). |
| `jira.email` | Jira Cloud account email (Basic auth only). |
| `jira.secretName` | Vault entry holding the Jira API token / PAT. |
| `tlsValidate` | TLS verification; disabling logs a warning per request. |

### routing.psd1

Ordered `rules` matched on `(source, severity, category/subcategory)`, first match wins, falling back
to a **mandatory `default`** so no event is ever dropped. Each target sets `project`, `issueType`,
`component`, optional `assigneeGroup`, extra `labels`, and a severity→`priority` id map.

```powershell
@{
    rules = @(
        @{ match = @{ source = 'activity'; severity = 'CRITICAL' }
           project = 'BKP'; issueType = 'Incident'; component = 'Backup Operations'
           assigneeGroup = 'backup-team'; labels = @('backup'); priority = @{ CRITICAL = '1'; WARNING = '3' } }
    )
    default = @{ project = 'OPS'; issueType = 'Task'; component = $null; labels = @(); priority = @{ CRITICAL = '2'; WARNING = '3' } }
}
```

> Find Jira priority ids with `GET /rest/api/3/priority/search`; confirm `project`, `issueType`, and
> `component` exist on the target project's create screen before the first run.

## 5. Run

```powershell
# Dry run: reads, routes, and dedup-searches, but performs NO Jira writes and does NOT advance the watermark.
Invoke-Ppdm2JiraSync -ConfigPath ./config/settings.psd1 -DryRun

# Real run across all configured instances:
Invoke-Ppdm2JiraSync -ConfigPath ./config/settings.psd1

# Limit to specific instances:
Invoke-Ppdm2JiraSync -ConfigPath ./config/settings.psd1 -Instance prod1
```

| Parameter | Purpose |
|---|---|
| `-ConfigPath` | Path to `settings.psd1` (required). |
| `-Instance` | One or more instance ids to process (default: all). |
| `-DryRun` | Compute and log intended actions with no Jira writes and no watermark advance. |

**Exit code:** `0` if every processed instance succeeded, `1` if any instance failed. Each Incident
emits one structured JSON log line: `{instance, source, dedupKey, action, jiraKey}`.

**Watermark semantics:** the per-instance watermark advances only after that instance finishes
without error. If any incident in an instance fails, the watermark is not advanced and the run
returns `1`; the next run re-reads the same window and dedup prevents duplicate tickets
([ADR-0007](../adr/ADR-0007-per-incident-failure-fails-instance.md)).

## 6. Schedule

The module is designed for unattended, scheduled runs.

**Windows — Task Scheduler:**

```powershell
$action  = New-ScheduledTaskAction -Execute 'pwsh.exe' -Argument '-NoProfile -Command "Import-Module C:\ppdm2jira\Ppdm2Jira\Ppdm2Jira.psd1; exit (Invoke-Ppdm2JiraSync -ConfigPath C:\ppdm2jira\config\settings.psd1)"'
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 5)
Register-ScheduledTask -TaskName 'Ppdm2JiraSync' -Action $action -Trigger $trigger -RunLevel Limited
```

**Linux/macOS — cron** (every 5 minutes):

```cron
*/5 * * * * pwsh -NoProfile -Command "Import-Module /opt/ppdm2jira/Ppdm2Jira/Ppdm2Jira.psd1; exit (Invoke-Ppdm2JiraSync -ConfigPath /opt/ppdm2jira/config/settings.psd1)" >> /var/log/ppdm2jira.log 2>&1
```

Ensure the scheduled context can unlock the secret vault non-interactively (see §3).

## 7. Troubleshooting

| Symptom | Likely cause / fix |
|---|---|
| `PPDM-pwsh cmdlet '...' not found` | `Install-Module PPDM-pwsh` and connect first. |
| `Get-Secret not found` | Install SecretManagement and register a vault (§3). |
| Auth/permission error (401/403) | Jira account lacks Create/Comment on the project, or wrong `authMode`/token. The run fails fast and does **not** advance the watermark. |
| Two tickets for one failure | Known v1 limitation — an alert and its activity are not correlated. |
| Duplicate tickets across runs | Check the `state/` watermark files are persisted between runs and the dedup label is JQL-searchable. |
| Live calls throw on a non-2xx | Confirm you're on a supported runtime; HTTP error mapping covers both Windows PowerShell (`WebException`) and PowerShell 7 (`HttpResponseException`). |

## 8. Verify your changes

```powershell
Invoke-Pester ./Ppdm2Jira/tests
Invoke-ScriptAnalyzer -Path ./Ppdm2Jira -Recurse -Severity Warning,Error
```
