# ppdm2Jira Quickstart — From Dummies to Black Belt

A progressive, hands-on path. Each "belt" builds on the previous one. Stop whenever you have what you
need — **White belt alone is enough to see it work**; Black belt is for people extending or operating
it in production.

> Reference docs (look things up rather than learn step-by-step): the
> [User Guide](user-guide.md), [Jira contract](../design/jira-integration-contract.md), and [ADRs](../adr/index.md).

---

## 🥋 Belt map

| Belt | You'll be able to... | Time |
|---|---|---|
| ⬜ **White** | Import the module and do a safe dry run | 5 min |
| 🟨 **Yellow** | Store credentials and open your first real ticket | 15 min |
| 🟧 **Orange** | Route tickets to the right team and understand dedup | 20 min |
| 🟩 **Green** | Run it on a schedule across multiple PPDM instances | 20 min |
| 🟦 **Blue** | Operate it: failures, watermarks, TLS, secret rotation, logs | 30 min |
| 🟫 **Brown** | Target Jira Data Center, tune retries, read the Incident model | 30 min |
| ⬛ **Black** | Extend routing, write tests, run CI, plan a real deployment | — |

---

## ⬜ White belt — "Does this thing even run?"

**Goal:** import the module and watch a dry run, with *zero* credentials and *zero* risk.

### 1. Prerequisites

You need PowerShell (Windows PowerShell 5.1+ or [PowerShell 7+](https://learn.microsoft.com/powershell/)).
Check:

```powershell
$PSVersionTable.PSVersion
```

### 2. Get the code and import

```powershell
git clone https://github.com/fjacquet/ppdm2jira.git
cd ppdm2jira
Import-Module ./ppdm2Jira/ppdm2Jira.psd1
Get-Command -Module ppdm2Jira          # → Invoke-ppdm2JiraSync
```

Only **one** command is public: `Invoke-ppdm2JiraSync`. Everything else is internal.

### 3. Make a throwaway config

```powershell
Copy-Item ./ppdm2Jira/config/settings.psd1.example ./settings.psd1
Copy-Item ./ppdm2Jira/config/routing.psd1.example  ./routing.psd1
```

### 4. Dry run

`-DryRun` reads, routes, and decides create-vs-comment — but performs **no Jira writes** and **does
not** touch any watermark. It will fail to reach the example PPDM host, and that's fine — you're just
confirming the module loads and the pipeline wires up.

```powershell
Invoke-ppdm2JiraSync -ConfigPath ./settings.psd1 -DryRun
```

> 🥋 **You earned your white belt** when the module imports and `-DryRun` runs without a *syntax* or
> *load* error. Connection errors to the dummy host are expected.

---

## 🟨 Yellow belt — "Open a real ticket"

**Goal:** point at a real PPDM + Jira, store credentials safely, and create your first ticket.

### 1. Understand the credential model (important)

Credentials are **never** stored in config or in a `.env` file. They live in a PowerShell
**SecretManagement** vault and are fetched at runtime ([ADR-0006](../adr/ADR-0006-secret-management-and-tls.md)).
Config only holds the *names* of vault entries.

### 2. Edit `settings.psd1`

```powershell
@{
    stateDir    = './state'
    routingPath = './routing.psd1'
    instances   = @(
        @{ id = 'prod1'; baseUrl = 'https://YOUR-PPDM/api/v2'; secretName = 'ppdm-prod1' }
    )
    jira = @{
        baseUrl    = 'https://YOUR-ORG.atlassian.net'
        apiVersion = 3            # 3 = Cloud
        authMode   = 'basic'      # Cloud uses email:token
        bodyFormat = 'adf'        # Cloud uses ADF
        email      = 'svc-ppdm2jira@your-org.example'
        secretName = 'jira-api-token'
        tlsValidate = $true
    }
}
```

### 3. Store the secrets with the helper

The setup script reads `settings.psd1`, works out exactly which secrets are needed, and prompts for
each. Values are entered as `SecureString` — no plaintext ever lands on disk.

```powershell
./scripts/Set-ppdm2JiraSecrets.ps1 -ConfigPath ./settings.psd1 -RegisterVaultIfMissing
```

You'll be prompted for the **PPDM token** (for `ppdm-prod1`) and the **Jira API token** (for
`jira-api-token`; create it at `id.atlassian.com`).

### 4. Dry run, then go live

```powershell
Invoke-ppdm2JiraSync -ConfigPath ./settings.psd1 -DryRun   # see the intended actions first
Invoke-ppdm2JiraSync -ConfigPath ./settings.psd1           # create/update real tickets
```

Each incident prints one structured log line:

```json
{"instance":"prod1","source":"alert","dedupKey":"ppdm:prod1:al-123","action":"created","jiraKey":"OPS-482"}
```

> 🥋 **Yellow belt:** a CRITICAL alert or FAILED backup in PPDM produced a Jira ticket, and the log
> shows `"action":"created"` with a real `jiraKey`.

---

## 🟧 Orange belt — "Right team, no duplicates"

**Goal:** route tickets to the correct project/team and understand why re-runs don't spam.

### Routing is data, not code

`routing.psd1` is an ordered list of rules matched on `(source, severity, category, …)`. **First match
wins**, falling back to a **mandatory `default`** so nothing is ever dropped.

```powershell
@{
    rules = @(
        @{ match = @{ source = 'activity'; severity = 'CRITICAL' }
           project = 'BKP'; issueType = 'Incident'; component = 'Backup Operations'
           assigneeGroup = 'backup-team'; priority = @{ CRITICAL = '1'; WARNING = '3' } },

        @{ match = @{ source = 'alert' }
           project = 'OPS'; issueType = 'Incident'; component = 'Monitoring'
           priority = @{ CRITICAL = '2'; WARNING = '3' } }
    )
    default = @{ project = 'OPS'; issueType = 'Task'; priority = @{ CRITICAL = '2'; WARNING = '3' } }
}
```

- `source` is `activity` (a backup job) or `alert`.
- `priority` maps the incident severity to a **Jira priority id** (find ids with `GET /rest/api/3/priority/search`).
- Edit routing without touching code or shipping a release — it's just data.

### How deduplication works

Every incident has a stable **dedup key** `ppdm:<instance>:<eventId>`, sanitised to a Jira **label**
`ppdm_<instance>_<eventId>`. Before creating, the module searches Jira for an *open* issue carrying
that label:

- **found** → adds a recurrence comment (no duplicate),
- **not found** → creates the issue (and an idempotent remote-link back to PPDM).

Jira itself is the source of truth — so re-running over the same window is safe and creates **zero**
new tickets.

> 🥋 **Orange belt:** your tickets land in the intended project/component, and running the sync twice
> in a row shows `"action":"commented"` (or nothing new) the second time.

---

## 🟩 Green belt — "Set it and forget it"

**Goal:** run unattended on a schedule, across several PPDM instances.

### Multiple instances

```powershell
instances = @(
    @{ id = 'prod1'; baseUrl = 'https://prod1/api/v2'; secretName = 'ppdm-prod1' }
    @{ id = 'dr1';   baseUrl = 'https://dr1/api/v2';   secretName = 'ppdm-dr1'   }
)
```

Run `./scripts/Set-ppdm2JiraSecrets.ps1 -ConfigPath ./settings.psd1` again — it detects the new
`ppdm-dr1` secret and prompts only for that. Each instance is processed in isolation: one failing does
not stop the others.

Target a single instance when testing: `Invoke-ppdm2JiraSync -ConfigPath ./settings.psd1 -Instance prod1`.

### Schedule it

**Linux/macOS (cron, every 5 min):**

```cron
*/5 * * * * pwsh -NoProfile -Command "Import-Module /opt/ppdm2jira/ppdm2Jira/ppdm2Jira.psd1; exit (Invoke-ppdm2JiraSync -ConfigPath /opt/ppdm2jira/settings.psd1)" >> /var/log/ppdm2jira.log 2>&1
```

**Windows (Task Scheduler):** see [User Guide §6](user-guide.md#6-schedule).

The process **exit code is 0** if every instance succeeded, **1** if any failed — wire that into your
scheduler/monitoring. For unattended runs, configure the vault to unlock non-interactively
(`Set-SecretStoreConfiguration -Authentication None` on a protected host, or a cloud-backed vault).

> 🥋 **Green belt:** the scheduled job runs on its own, processes all instances, and you can tell
> success from failure by the exit code and the per-incident log lines.

---

## 🟦 Blue belt — "Operate it like a pro"

**Goal:** understand failure, recovery, and security behaviour.

### Watermarks and no-data-loss

Each instance has a **watermark** (a JSON file under `stateDir`) marking the last fully-synced event
time. It advances **only after an instance completes with no errors**. If anything fails mid-instance,
the watermark is *not* advanced and the run returns `1`; the next run re-reads the same window, and
dedup prevents duplicate tickets. Net effect: **no event is ever lost or duplicated**
([ADR-0007](../adr/ADR-0007-per-incident-failure-fails-instance.md)).

- Don't hand-edit watermark files. To "replay from scratch" for an instance, delete its
  `state/<id>.watermark.json` (be aware dedup still prevents duplicates for already-open tickets).

### What the HTTP layer does for you

- `429` / `5xx` → retried with backoff (honours `Retry-After`).
- `404` on a recurrence comment (issue was deleted) → falls back to creating a fresh issue.
- `401` / `403` → fails fast, does **not** advance the watermark — fix the credential/permission and re-run.

### Security & TLS

- Use a **dedicated Jira service account** (Create Issues + Add Comments) and a **read-only PPDM** account.
- TLS validation is on by default. Only disable per-instance for a lab with self-signed certs — it
  logs a warning every request when off.
- Rotate secrets any time: `./scripts/Set-ppdm2JiraSecrets.ps1 -ConfigPath ./settings.psd1 -Force`.

### Observability

Pipe the JSON log lines to your log stack and key on `action` (`created` / `commented` /
`created(404-fallback)` / `dryrun:*`) and `jiraKey`.

> 🥋 **Blue belt:** you can explain what happens when Jira is down mid-run, where state lives, and how
> to rotate a leaked token.

---

## 🟫 Brown belt — "Jira Data Center, internals, and tuning"

**Goal:** the deeper model and the non-Cloud path.

### Jira Data Center / Server

Flip three fields in `settings.psd1`:

```powershell
jira = @{
    baseUrl    = 'https://jira.your-dc.local'
    apiVersion = 2          # Data Center REST v2
    authMode   = 'bearer'   # Personal Access Token
    bodyFormat = 'wiki'     # wiki markup instead of ADF
    secretName = 'jira-pat'
    # 'email' is not used for bearer auth
}
```

The same `JiraClient` handles both flavours: it switches the auth header, the body format (ADF vs
wiki), the base path (`/rest/api/3` vs `/rest/api/2`), and the search endpoint (`/search/jql` vs
`/search`). Your routing, dedup, and orchestration are identical.

### The `Incident` model (the seam)

Both alerts and activities are normalized into one common shape before anything Jira-specific happens:

```
Incident { dedupKey, source, instanceId, severity, title, body, category, subcategory,
           assetRef, occurredAt, ppdmLinks }
```

- Activities have no severity, so it's derived from `result.status` (`FAILED`→CRITICAL,
  `OK_WITH_ERRORS`→WARNING).
- `title` is truncated to Jira's 255-char `summary` limit.
- `body` is newline-joined plain text; the JiraClient renders it to ADF (Cloud) or wiki (DC).

### Retry tuning

The HTTP request layer retries `429/5xx` up to a bound (1 initial attempt + `MaxRetries` retries,
default 3 → at most 4 calls), with exponential backoff capped at 30s and `Retry-After` honoured.

> 🥋 **Brown belt:** you can switch a deployment from Cloud to Data Center by editing config alone, and
> you can trace a PPDM field all the way to a Jira ADF paragraph.

---

## ⬛ Black belt — "Extend, test, ship"

**Goal:** change behaviour safely and deploy with confidence.

### Run the test suite

Everything external (Jira HTTP, PPDM-pwsh, SecretManagement) is mocked — no live systems needed.

```powershell
Invoke-Pester ./ppdm2Jira/tests
Invoke-ScriptAnalyzer -Path ./ppdm2Jira -Recurse -Severity Warning,Error
```

CI runs both on Ubuntu (pwsh 7) and Windows (Windows PowerShell 5.1 + pwsh 7). Tip: also run the
suite with `$ErrorActionPreference = 'Stop'` locally — CI does, and some bugs only appear there.

### The testing pattern (how to add tests)

Private functions are reached with `InModuleScope`, and HTTP is mocked at the single boundary
`Invoke-ppdm2JiraHttp`:

```powershell
InModuleScope ppdm2Jira {
    Mock Invoke-ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 201; Headers = @{}; Content = [pscustomobject]@{ key = 'OPS-9' } } }
    # ...call the function under test, assert on the result or on `Should -Invoke`
}
```

### Where to change things

| Want to change… | Edit… |
|---|---|
| Which alerts/jobs are pulled | `Private/PpdmClient.ps1` (filter strings) |
| How an event becomes an Incident | `Private/Normalizer.ps1` (pure, no I/O — easy to test) |
| Routing logic / new match keys | `Private/Router.ps1` + `routing.psd1` |
| Jira payloads / a new operation | `Private/JiraClient.ps1` |
| Create-vs-comment policy | `Private/Dedup.ps1` |
| Orchestration / logging | `Public/Invoke-ppdm2JiraSync.ps1` |

Keep `Set-StrictMode -Version Latest`, target PowerShell 5.1 syntax, read optional fields via
`Get-ppdm2JiraProp`, and keep all network I/O behind `Invoke-ppdm2JiraHttp`.

### Before a production deployment — confirm the M0 items

These are not yet validated against a live appliance (see PRD §14 and the design spec open items):

1. **PPDM auth shape.** The current build passes a single token to `Connect-PPDMapiEndpoint -Token`.
   If your PPDM/PPDM-pwsh needs **username + password**, add a `username` field to each instance in
   `settings.psd1`, store the **password** as the secret, and adjust `Connect-ppdm2JiraInstance` to
   pass a `PSCredential` (see [User Guide §3 caveat](user-guide.md)).
2. **PPDM filter operator syntax** (`eq`/`in`/`gt`) and timestamp format against your PPDM version.
3. **Jira flavour** (Cloud v3/ADF vs Data Center v2/wiki) and `/search/jql` pagination shape.

### Known v1 limitations (design choices, not bugs)

- **No alert↔activity correlation** — a single failure surfacing as both may yield two tickets.
- **Per-incident failure fails the instance** (no watermark advance) — safe replay, by design
  ([ADR-0007](../adr/ADR-0007-per-incident-failure-fails-instance.md)).

> 🥋 **Black belt:** you can add a unit with tests, keep the suite and ScriptAnalyzer green on both
> runtimes, and you know exactly what to confirm before pointing this at production.

---

## Where to go next

- [User Guide](user-guide.md) — full reference for config, scheduling, troubleshooting
- [Jira integration contract](../design/jira-integration-contract.md) — exact endpoints, ADF, dedup, field mapping
- [ADRs](../adr/index.md) — the decisions behind the design
- [CHANGELOG](https://github.com/fjacquet/ppdm2jira/blob/main/CHANGELOG.md)
