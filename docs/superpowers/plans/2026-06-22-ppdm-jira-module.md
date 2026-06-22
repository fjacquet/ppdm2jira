# PPDM→Jira Module Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the remaining `Ppdm2Jira` PowerShell module units (JiraClient for Cloud+DC, Router, Dedup, StateStore, orchestrator) plus manifest, config, and Pester tests so an end-to-end `-DryRun` sync runs against mocked transports.

**Architecture:** A modular PowerShell 5.1 module. Existing pure units (`Normalizer`, `PpdmClient`) feed an `Incident` model through `Router` → `Dedup`/`JiraClient` → `StateStore`, all wired by the `Invoke-Ppdm2JiraSync` orchestrator. Jira Cloud (v3/Basic/ADF) and Data Center (v2/Bearer/wiki) sit behind one client config; a single mockable HTTP boundary (`Invoke-Ppdm2JiraHttp`) keeps every unit test hermetic.

**Tech Stack:** Windows PowerShell 5.1+, Pester 5, PSScriptAnalyzer, PowerShell SecretManagement, PPDM-pwsh (runtime read transport), Semgrep (pre-delivery scan).

## Global Constraints

- **Target runtime:** Windows PowerShell `5.1+` — no PS7-only operators (`??`, `?.`, ternary), no PS7-only params (`-SkipHttpErrorCheck`, `-ResponseHeadersVariable`).
- **StrictMode:** every `.ps1` begins `Set-StrictMode -Version Latest`; all optional property reads go through `Get-Ppdm2JiraProp` (defined in `Normalizer.ps1`).
- **Naming:** every public/private function is `Verb-Ppdm2Jira<Noun>` using an approved PowerShell verb.
- **Secrets:** never stored on disk, in config, or on returned objects; fetched from SecretManagement at client construction (NFR-3).
- **Jira summary** ≤ 255 chars; **labels** contain no spaces or colons.
- **Watermark** advances only after an instance fully succeeds (FR-8 / NFR-2).
- **Tests** run with no live PPDM/Jira: HTTP is mocked at `Invoke-Ppdm2JiraHttp`; PPDM-pwsh and SecretManagement cmdlets are mocked.
- **PSTypeName** of the common model is `Ppdm2Jira.Incident` (emitted by existing `Normalizer.ps1`).

---

## File Structure

```
Ppdm2Jira/
├─ Ppdm2Jira.psd1                 # Task 1 — manifest
├─ Ppdm2Jira.psm1                 # Task 1 — loader
├─ Public/
│  └─ Invoke-Ppdm2JiraSync.ps1    # Task 9 — orchestrator (only exported function)
├─ Private/
│  ├─ Normalizer.ps1              # exists
│  ├─ PpdmClient.ps1              # exists
│  ├─ StateStore.ps1              # Task 4
│  ├─ Router.ps1                  # Task 5 (+ ConvertTo-Ppdm2JiraLabel)
│  ├─ JiraClient.ps1              # Tasks 6–7
│  └─ Dedup.ps1                   # Task 8
├─ config/
│  ├─ settings.psd1.example       # Task 5
│  └─ routing.psd1.example        # Task 5
└─ tests/
   ├─ Normalizer.Tests.ps1        # Task 2
   ├─ PpdmClient.Tests.ps1        # Task 3
   ├─ StateStore.Tests.ps1        # Task 4
   ├─ Router.Tests.ps1            # Task 5
   ├─ JiraClient.Tests.ps1        # Tasks 6–7
   ├─ Dedup.Tests.ps1             # Task 8
   ├─ Orchestrator.Tests.ps1      # Task 9
   └─ fixtures/                    # Tasks 2–3
```

**Note on manifest dependencies:** `RequiredModules` is intentionally **omitted** from the manifest so the module imports in CI without PPDM-pwsh / SecretManagement installed. Those dependencies are enforced at runtime (`Assert-Ppdm2JiraPpdmCommand` already does this for PPDM-pwsh; the secret wrapper does it for SecretManagement). Required modules are documented in the manifest's description.

**Standard test harness** (every `tests/*.Tests.ps1` opens with this, adjusting nothing but the body):

```powershell
BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'Ppdm2Jira.psd1') -Force
}
```

`InModuleScope Ppdm2Jira { ... }` is used to reach private functions and to `Mock` module-internal calls.

---

## Task 1: Module manifest and loader

**Files:**
- Create: `Ppdm2Jira/Ppdm2Jira.psm1`
- Create: `Ppdm2Jira/Ppdm2Jira.psd1`
- Test: `Ppdm2Jira/tests/Module.Tests.ps1`

**Interfaces:**
- Consumes: existing `Private/Normalizer.ps1`, `Private/PpdmClient.ps1`.
- Produces: an importable module `Ppdm2Jira` whose only exported function (for now) is none yet; private functions reachable via `InModuleScope`. Loader dot-sources `Private/*.ps1` then `Public/*.ps1`.

- [ ] **Step 1: Write the failing test**

`Ppdm2Jira/tests/Module.Tests.ps1`:
```powershell
BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'Ppdm2Jira.psd1') -Force
}

Describe 'Module loads' {
    It 'imports without error and exposes the existing Normalizer privately' {
        InModuleScope Ppdm2Jira {
            Get-Command ConvertTo-Ppdm2JiraIncident -ErrorAction Stop | Should -Not -BeNullOrEmpty
        }
    }
    It 'exports nothing public yet' {
        (Get-Module Ppdm2Jira).ExportedFunctions.Count | Should -Be 0
    }
}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/Module.Tests.ps1"`
Expected: FAIL — manifest/loader do not exist, `Import-Module` errors.

- [ ] **Step 3: Write the loader**

`Ppdm2Jira/Ppdm2Jira.psm1`:
```powershell
Set-StrictMode -Version Latest

foreach ($folder in @('Private', 'Public')) {
    $dir = Join-Path $PSScriptRoot $folder
    if (Test-Path $dir) {
        Get-ChildItem -Path $dir -Filter '*.ps1' -File | ForEach-Object {
            . $_.FullName
        }
    }
}

$publicDir = Join-Path $PSScriptRoot 'Public'
if (Test-Path $publicDir) {
    $public = Get-ChildItem -Path $publicDir -Filter '*.ps1' -File | ForEach-Object { $_.BaseName }
    if ($public) { Export-ModuleMember -Function $public }
}
```

- [ ] **Step 4: Write the manifest**

`Ppdm2Jira/Ppdm2Jira.psd1`:
```powershell
@{
    RootModule        = 'Ppdm2Jira.psm1'
    ModuleVersion     = '0.1.0'
    GUID              = 'b6d2f4a1-2c3e-4d5a-9f8b-0a1c2d3e4f5a'
    Author            = 'Platform / Backup Engineering'
    Description       = 'Polls PPDM alerts/failed backups and creates/updates Jira issues. Runtime deps (not import-enforced): PPDM-pwsh, Microsoft.PowerShell.SecretManagement.'
    PowerShellVersion = '5.1'
    FunctionsToExport = @('Invoke-Ppdm2JiraSync')
    CmdletsToExport   = @()
    VariablesToExport = @()
    AliasesToExport   = @()
}
```

Note: `FunctionsToExport` names the orchestrator (Task 9); until it exists the loader's `Export-ModuleMember` controls actual exports, so the manifest entry is harmless. The "exports nothing yet" test passes because no `Public/*.ps1` exists.

- [ ] **Step 5: Run test to verify it passes**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/Module.Tests.ps1"`
Expected: PASS (2 tests).

- [ ] **Step 6: Commit**

```bash
git add Ppdm2Jira/Ppdm2Jira.psd1 Ppdm2Jira/Ppdm2Jira.psm1 Ppdm2Jira/tests/Module.Tests.ps1
git commit -m "feat: add Ppdm2Jira module manifest and loader"
```

---

## Task 2: Normalizer tests (cover existing code)

**Files:**
- Create: `Ppdm2Jira/tests/Normalizer.Tests.ps1`
- Create: `Ppdm2Jira/tests/fixtures/activity-failed.json`
- Create: `Ppdm2Jira/tests/fixtures/alert-critical.json`

**Interfaces:**
- Consumes: `ConvertTo-Ppdm2JiraIncident -InputObject <psobject> -Source <alert|activity> -InstanceId <string> [-PpdmBaseUrl <string>]` → `Ppdm2Jira.Incident` with fields `dedupKey, source, instanceId, severity, title, body, category, subcategory, assetRef, occurredAt, ppdmLinks`.
- Produces: nothing new (test-only task).

- [ ] **Step 1: Write the fixtures**

`Ppdm2Jira/tests/fixtures/activity-failed.json`:
```json
{
  "id": "act-12345",
  "category": "PROTECT",
  "subcategory": "FULL",
  "state": "COMPLETED",
  "result": { "status": "FAILED", "error": { "reason": "Mount failed", "detailedDescription": "VADP mount timed out", "remediation": "Check datastore" } },
  "asset": { "name": "fileserver01", "id": "asset-9" },
  "protectionPolicy": { "name": "Gold-Daily" },
  "startTime": "2026-06-20T01:00:00Z",
  "endTime": "2026-06-20T01:05:00Z"
}
```

`Ppdm2Jira/tests/fixtures/alert-critical.json`:
```json
{
  "id": "alert-a1b2",
  "severity": "CRITICAL",
  "category": "PROTECTION",
  "subcategory": "POLICY",
  "message": "Backup window exceeded",
  "detailedDescription": "Policy Gold-Daily exceeded its window",
  "postedTime": "2026-06-20T02:00:00Z",
  "resource": { "name": "fileserver01", "id": "res-9", "type": "ASSET", "url": "https://prod1.ppdm.example/#/x" },
  "jobId": "job-77"
}
```

- [ ] **Step 2: Write the failing test**

`Ppdm2Jira/tests/Normalizer.Tests.ps1`:
```powershell
BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'Ppdm2Jira.psd1') -Force
    $script:Fix = Join-Path $PSScriptRoot 'fixtures'
}

Describe 'ConvertTo-Ppdm2JiraIncident — activity' {
    BeforeAll {
        $raw = Get-Content -Raw (Join-Path $script:Fix 'activity-failed.json') | ConvertFrom-Json
        $script:inc = $raw | ConvertTo-Ppdm2JiraIncident -Source activity -InstanceId prod1 -PpdmBaseUrl 'https://prod1.ppdm.example/api/v2'
    }
    It 'maps FAILED to CRITICAL severity' { $script:inc.severity | Should -Be 'CRITICAL' }
    It 'builds a namespaced dedup key' { $script:inc.dedupKey | Should -Be 'ppdm:prod1:act-12345' }
    It 'sets source to activity' { $script:inc.source | Should -Be 'activity' }
    It 'includes the error detail in the body' { $script:inc.body | Should -Match 'VADP mount timed out' }
    It 'carries the PSTypeName' { $script:inc.PSObject.TypeNames | Should -Contain 'Ppdm2Jira.Incident' }
}

Describe 'ConvertTo-Ppdm2JiraIncident — alert' {
    BeforeAll {
        $raw = Get-Content -Raw (Join-Path $script:Fix 'alert-critical.json') | ConvertFrom-Json
        $script:inc = $raw | ConvertTo-Ppdm2JiraIncident -Source alert -InstanceId prod1 -PpdmBaseUrl 'https://prod1.ppdm.example/api/v2'
    }
    It 'keeps CRITICAL severity from the alert' { $script:inc.severity | Should -Be 'CRITICAL' }
    It 'builds the alert dedup key' { $script:inc.dedupKey | Should -Be 'ppdm:prod1:alert-a1b2' }
}

Describe 'ConvertTo-Ppdm2JiraIncident — robustness' {
    It 'does not throw on a missing result/error under StrictMode' {
        $raw = [pscustomobject]@{ id = 'act-1'; result = [pscustomobject]@{ status = 'FAILED' } }
        { $raw | ConvertTo-Ppdm2JiraIncident -Source activity -InstanceId prod1 } | Should -Not -Throw
    }
    It 'truncates a long title to 255 chars' {
        $long = 'x' * 400
        $raw  = [pscustomobject]@{ id = 'a'; severity = 'WARNING'; category = 'C'; message = $long }
        $inc  = $raw | ConvertTo-Ppdm2JiraIncident -Source alert -InstanceId prod1
        $inc.title.Length | Should -BeLessOrEqual 255
    }
}
```

- [ ] **Step 3: Run test to verify behavior**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/Normalizer.Tests.ps1"`
Expected: PASS (8 tests). If any fail, the bug is in the test's expectation — reconcile against `Private/Normalizer.ps1`, do not change the Normalizer unless a real defect is found.

- [ ] **Step 4: Commit**

```bash
git add Ppdm2Jira/tests/Normalizer.Tests.ps1 Ppdm2Jira/tests/fixtures/activity-failed.json Ppdm2Jira/tests/fixtures/alert-critical.json
git commit -m "test: cover Normalizer alert/activity transforms"
```

---

## Task 3: PpdmClient tests (cover existing code)

**Files:**
- Create: `Ppdm2Jira/tests/PpdmClient.Tests.ps1`

**Interfaces:**
- Consumes: `Get-Ppdm2JiraAlerts -InstanceId -Since [-Severity] [-Category] [-UnacknowledgedOnly] [-PageSize] [-PpdmBaseUrl]` and `Get-Ppdm2JiraFailedBackups -InstanceId -Since [-Status] [-Category] [-PageSize] [-PpdmBaseUrl]`. These call `Get-PPDMalerts -filter -body` and `Get-PPDMactivities -filter -pageSize`, piping results through `ConvertTo-Ppdm2JiraIncident`.
- Produces: nothing new (test-only task).

- [ ] **Step 1: Write the failing test**

`Ppdm2Jira/tests/PpdmClient.Tests.ps1`:
```powershell
BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'Ppdm2Jira.psd1') -Force
    # PPDM-pwsh is not installed in CI: provide stubs so the module's cmdlets resolve and are mockable.
    function global:Get-PPDMactivities { param($filter, $pageSize) }
    function global:Get-PPDMalerts     { param($filter, $body) }
}
AfterAll {
    Remove-Item Function:\Get-PPDMactivities, Function:\Get-PPDMalerts -ErrorAction SilentlyContinue
}

Describe 'Get-Ppdm2JiraFailedBackups' {
    It 'builds a job-level filter with 24-hour UTC timestamp and pipes through the Normalizer' {
        InModuleScope Ppdm2Jira {
            $captured = $null
            Mock Get-PPDMactivities {
                $script:captured = $filter
                [pscustomobject]@{ id = 'act-1'; result = [pscustomobject]@{ status = 'FAILED' } }
            }
            $since = [datetime]::SpecifyKind([datetime]'2026-06-20T13:05:09', 'Utc')
            $out = Get-Ppdm2JiraFailedBackups -InstanceId prod1 -Since $since
            $script:captured | Should -Match 'result\.status in \("FAILED","OK_WITH_ERRORS"\)'
            $script:captured | Should -Match 'startTime ge "2026-06-20T13:05:09Z"'   # HH (24h), not hh
            $script:captured | Should -Match 'classType in \("JOB","JOB_GROUP"\)'
            $out.source | Should -Be 'activity'
        }
    }
}

Describe 'Get-Ppdm2JiraAlerts' {
    It 'builds a severity+postedTime filter and appends UnacknowledgedOnly' {
        InModuleScope Ppdm2Jira {
            $captured = $null
            Mock Get-PPDMalerts {
                $script:captured = $filter
                [pscustomobject]@{ id = 'al-1'; severity = 'CRITICAL'; category = 'PROTECTION'; message = 'm' }
            }
            $since = [datetime]::SpecifyKind([datetime]'2026-06-20T00:00:00', 'Utc')
            $out = Get-Ppdm2JiraAlerts -InstanceId prod1 -Since $since -UnacknowledgedOnly
            $script:captured | Should -Match 'severity in \("CRITICAL","WARNING"\)'
            $script:captured | Should -Match 'acknowledgement\.acknowledgeState eq "UNACKNOWLEDGED"'
            $out.source | Should -Be 'alert'
        }
    }
}
```

- [ ] **Step 2: Run test to verify it passes**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/PpdmClient.Tests.ps1"`
Expected: PASS (2 tests).

- [ ] **Step 3: Commit**

```bash
git add Ppdm2Jira/tests/PpdmClient.Tests.ps1
git commit -m "test: cover PpdmClient filter construction"
```

---

## Task 4: StateStore

**Files:**
- Create: `Ppdm2Jira/Private/StateStore.ps1`
- Test: `Ppdm2Jira/tests/StateStore.Tests.ps1`

**Interfaces:**
- Produces:
  - `Get-Ppdm2JiraWatermark -InstanceId <string> -StateDir <string>` → `[datetime]` (UTC; `1970-01-01T00:00:00Z` if no file).
  - `Set-Ppdm2JiraWatermark -InstanceId <string> -Time <datetime> -StateDir <string>` → void; writes `{instanceId, watermark}` JSON atomically (temp + move) to `<StateDir>/<InstanceId>.watermark.json`.

- [ ] **Step 1: Write the failing test**

`Ppdm2Jira/tests/StateStore.Tests.ps1`:
```powershell
BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'Ppdm2Jira.psd1') -Force
}

Describe 'StateStore' {
    BeforeEach {
        $script:dir = Join-Path ([IO.Path]::GetTempPath()) ("p2j-" + [guid]::NewGuid())
    }
    AfterEach {
        if (Test-Path $script:dir) { Remove-Item $script:dir -Recurse -Force }
    }
    It 'returns epoch start when no watermark exists' {
        $wm = Get-Ppdm2JiraWatermark -InstanceId prod1 -StateDir $script:dir
        $wm.ToUniversalTime().ToString('yyyy-MM-dd') | Should -Be '1970-01-01'
    }
    It 'round-trips a watermark through write then read' {
        $t = [datetime]::SpecifyKind([datetime]'2026-06-21T10:11:12', 'Utc')
        Set-Ppdm2JiraWatermark -InstanceId prod1 -Time $t -StateDir $script:dir
        $back = Get-Ppdm2JiraWatermark -InstanceId prod1 -StateDir $script:dir
        $back.ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ') | Should -Be '2026-06-21T10:11:12Z'
    }
    It 'leaves no .tmp file after an atomic write' {
        Set-Ppdm2JiraWatermark -InstanceId prod1 -Time (Get-Date) -StateDir $script:dir
        (Get-ChildItem $script:dir -Filter '*.tmp').Count | Should -Be 0
    }
}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/StateStore.Tests.ps1"`
Expected: FAIL — `Get-Ppdm2JiraWatermark` not defined.

- [ ] **Step 3: Write the implementation**

`Ppdm2Jira/Private/StateStore.ps1`:
```powershell
<#
.SYNOPSIS
    Durable per-PPDM-instance watermark (last fully-synced event time).
.DESCRIPTION
    One JSON file per instance under the configured state dir. Writes are atomic
    (temp file + Move-Item) so a crash mid-write cannot corrupt the watermark (NFR-2).
#>
Set-StrictMode -Version Latest

function Get-Ppdm2JiraWatermarkPath {
    param([Parameter(Mandatory)][string] $InstanceId, [Parameter(Mandatory)][string] $StateDir)
    return (Join-Path $StateDir ("{0}.watermark.json" -f $InstanceId))
}

function Get-Ppdm2JiraWatermark {
    [OutputType([datetime])]
    param(
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $InstanceId,
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $StateDir
    )
    $path = Get-Ppdm2JiraWatermarkPath -InstanceId $InstanceId -StateDir $StateDir
    if (-not (Test-Path $path)) {
        return [datetime]::SpecifyKind([datetime]'1970-01-01T00:00:00', 'Utc')
    }
    $obj = Get-Content -Raw -Path $path | ConvertFrom-Json
    return ([datetimeoffset]::Parse([string]$obj.watermark)).UtcDateTime
}

function Set-Ppdm2JiraWatermark {
    param(
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $InstanceId,
        [Parameter(Mandatory)][datetime] $Time,
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $StateDir
    )
    if (-not (Test-Path $StateDir)) {
        New-Item -ItemType Directory -Path $StateDir -Force | Out-Null
    }
    $path = Get-Ppdm2JiraWatermarkPath -InstanceId $InstanceId -StateDir $StateDir
    $tmp  = "$path.tmp"
    $payload = [ordered]@{
        instanceId = $InstanceId
        watermark  = $Time.ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ')
    }
    $payload | ConvertTo-Json | Set-Content -Path $tmp -Encoding UTF8
    Move-Item -Path $tmp -Destination $path -Force
}
```

- [ ] **Step 4: Run test to verify it passes**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/StateStore.Tests.ps1"`
Expected: PASS (3 tests).

- [ ] **Step 5: Commit**

```bash
git add Ppdm2Jira/Private/StateStore.ps1 Ppdm2Jira/tests/StateStore.Tests.ps1
git commit -m "feat: add StateStore with atomic per-instance watermark"
```

---

## Task 5: Router, label sanitiser, and config templates

**Files:**
- Create: `Ppdm2Jira/Private/Router.ps1`
- Create: `Ppdm2Jira/config/routing.psd1.example`
- Create: `Ppdm2Jira/config/settings.psd1.example`
- Test: `Ppdm2Jira/tests/Router.Tests.ps1`

**Interfaces:**
- Produces:
  - `ConvertTo-Ppdm2JiraLabel -DedupKey <string>` → `[string]` with `:` and whitespace replaced by `_`.
  - `Resolve-Ppdm2JiraTarget -Incident <Ppdm2Jira.Incident> -RoutingTable <hashtable>` → `[pscustomobject]` `JiraTarget` `{ project, issueType, component, assigneeGroup, priorityId, labels[] }`. First matching rule wins; falls back to `RoutingTable.default`.
- `RoutingTable` shape: `@{ rules = @( @{ match = @{ source=...; severity=...; category=... }; project=...; issueType=...; component=...; assigneeGroup=...; labels=@(); priority=@{ CRITICAL='1'; WARNING='3' } } ); default = @{ ... same keys, no match ... } }`.

- [ ] **Step 1: Write the failing test**

`Ppdm2Jira/tests/Router.Tests.ps1`:
```powershell
BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'Ppdm2Jira.psd1') -Force

    $script:routing = @{
        rules = @(
            @{ match = @{ source = 'activity'; severity = 'CRITICAL' }
               project = 'BKP'; issueType = 'Incident'; component = 'Backup Operations'
               assigneeGroup = 'backup-team'; labels = @('backup'); priority = @{ CRITICAL = '1'; WARNING = '3' } }
        )
        default = @{ project = 'OPS'; issueType = 'Task'; component = $null
                     assigneeGroup = $null; labels = @(); priority = @{ CRITICAL = '2'; WARNING = '3' } }
    }
    function New-Inc {
        param($source, $severity, $category, $dedup)
        [pscustomobject]@{ PSTypeName = 'Ppdm2Jira.Incident'; source = $source; severity = $severity
                           category = $category; dedupKey = $dedup }
    }
}

Describe 'ConvertTo-Ppdm2JiraLabel' {
    It 'replaces colons and spaces with underscores' {
        ConvertTo-Ppdm2JiraLabel 'ppdm:prod 1:a1b2' | Should -Be 'ppdm_prod_1_a1b2'
    }
}

Describe 'Resolve-Ppdm2JiraTarget' {
    It 'routes a matching incident to the matched rule' {
        $t = Resolve-Ppdm2JiraTarget -Incident (New-Inc 'activity' 'CRITICAL' 'PROTECT' 'ppdm:prod1:act-1') -RoutingTable $script:routing
        $t.project    | Should -Be 'BKP'
        $t.priorityId | Should -Be '1'
        $t.labels     | Should -Contain 'ppdm_prod1_act-1'
        $t.labels     | Should -Contain 'source_activity'
        $t.labels     | Should -Contain 'cat_protect'
    }
    It 'falls back to default when nothing matches' {
        $t = Resolve-Ppdm2JiraTarget -Incident (New-Inc 'alert' 'WARNING' 'OTHER' 'ppdm:prod1:al-9') -RoutingTable $script:routing
        $t.project    | Should -Be 'OPS'
        $t.priorityId | Should -Be '3'
    }
}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/Router.Tests.ps1"`
Expected: FAIL — `ConvertTo-Ppdm2JiraLabel` / `Resolve-Ppdm2JiraTarget` not defined.

- [ ] **Step 3: Write the implementation**

`Ppdm2Jira/Private/Router.ps1`:
```powershell
<#
.SYNOPSIS
    Resolves an Incident to a Jira routing target (project/component/labels/priority).
.DESCRIPTION
    Ordered rules from routing.psd1; first match wins, else the mandatory default
    (FR-5). Routing is data, not code. Also hosts the dedup-key->label sanitiser
    shared with Dedup and the remote-link globalId.
#>
Set-StrictMode -Version Latest

function ConvertTo-Ppdm2JiraLabel {
    [OutputType([string])]
    param([Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $DedupKey)
    return ($DedupKey -replace '[:\s]', '_')
}

function Test-Ppdm2JiraRoutingRule {
    param([Parameter(Mandatory)] $Rule, [Parameter(Mandatory)] $Incident)
    if (-not $Rule.ContainsKey('match') -or $null -eq $Rule.match) { return $false }
    foreach ($key in $Rule.match.Keys) {
        $want = $Rule.match[$key]
        $have = Get-Ppdm2JiraProp $Incident $key
        if ($want -is [array]) {
            if ($have -notin $want) { return $false }
        }
        elseif ($have -ne $want) {
            return $false
        }
    }
    return $true
}

function Resolve-Ppdm2JiraTarget {
    [OutputType([pscustomobject])]
    param(
        [Parameter(Mandatory)] $Incident,
        [Parameter(Mandatory)][hashtable] $RoutingTable
    )
    $match = $null
    if ($RoutingTable.ContainsKey('rules') -and $RoutingTable.rules) {
        foreach ($rule in $RoutingTable.rules) {
            if (Test-Ppdm2JiraRoutingRule -Rule $rule -Incident $Incident) { $match = $rule; break }
        }
    }
    if ($null -eq $match) {
        if (-not $RoutingTable.ContainsKey('default')) {
            throw 'Routing table has no matching rule and no default rule.'
        }
        $match = $RoutingTable.default
    }

    $labels = New-Object System.Collections.Generic.List[string]
    $labels.Add('ppdm')
    $labels.Add((ConvertTo-Ppdm2JiraLabel $Incident.dedupKey))
    $labels.Add(('source_{0}' -f $Incident.source))
    $category = Get-Ppdm2JiraProp $Incident 'category'
    if ($category) { $labels.Add(('cat_{0}' -f ($category.ToString().ToLower() -replace '[:\s]', '_'))) }
    if ($match.ContainsKey('labels') -and $match.labels) { foreach ($l in $match.labels) { $labels.Add([string]$l) } }

    $priorityId = $null
    if ($match.ContainsKey('priority') -and $match.priority -and $match.priority.ContainsKey($Incident.severity)) {
        $priorityId = [string]$match.priority[$Incident.severity]
    }

    [pscustomobject]@{
        project       = $match.project
        issueType     = if ($match.ContainsKey('issueType') -and $match.issueType) { $match.issueType } else { 'Incident' }
        component     = if ($match.ContainsKey('component')) { $match.component } else { $null }
        assigneeGroup = if ($match.ContainsKey('assigneeGroup')) { $match.assigneeGroup } else { $null }
        priorityId    = $priorityId
        labels        = ($labels.ToArray() | Select-Object -Unique)
    }
}
```

- [ ] **Step 4: Run test to verify it passes**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/Router.Tests.ps1"`
Expected: PASS (3 tests).

- [ ] **Step 5: Write the config templates**

`Ppdm2Jira/config/routing.psd1.example`:
```powershell
@{
    rules = @(
        @{
            match         = @{ source = 'activity'; severity = 'CRITICAL' }
            project       = 'BKP'
            issueType     = 'Incident'
            component     = 'Backup Operations'
            assigneeGroup = 'backup-team'
            labels        = @('backup')
            priority      = @{ CRITICAL = '1'; WARNING = '3' }
        },
        @{
            match         = @{ source = 'alert' }
            project       = 'OPS'
            issueType     = 'Incident'
            component     = 'Monitoring'
            labels        = @()
            priority      = @{ CRITICAL = '2'; WARNING = '3' }
        }
    )
    # Mandatory fallback so nothing is ever dropped (FR-5).
    default = @{
        project   = 'OPS'
        issueType = 'Task'
        component = $null
        labels    = @()
        priority  = @{ CRITICAL = '2'; WARNING = '3' }
    }
}
```

`Ppdm2Jira/config/settings.psd1.example`:
```powershell
@{
    stateDir    = './state'
    routingPath = './config/routing.psd1'
    instances   = @(
        @{ id = 'prod1'; baseUrl = 'https://prod1.ppdm.example/api/v2'; secretName = 'ppdm-prod1' }
    )
    jira = @{
        baseUrl     = 'https://your-org.atlassian.net'
        apiVersion  = 3            # 3 = Cloud (ADF), 2 = Data Center (wiki)
        authMode    = 'basic'      # 'basic' = Cloud (email:token), 'bearer' = DC (PAT)
        bodyFormat  = 'adf'        # 'adf' = Cloud, 'wiki' = DC
        email       = 'svc-ppdm2jira@your-org.example'   # used only for basic auth
        secretName  = 'jira-api-token'
        tlsValidate = $true
    }
}
```

- [ ] **Step 6: Commit**

```bash
git add Ppdm2Jira/Private/Router.ps1 Ppdm2Jira/tests/Router.Tests.ps1 Ppdm2Jira/config/routing.psd1.example Ppdm2Jira/config/settings.psd1.example
git commit -m "feat: add Router, label sanitiser, and config templates"
```

---

## Task 6: JiraClient core — config, auth, HTTP boundary, body rendering

**Files:**
- Create: `Ppdm2Jira/Private/JiraClient.ps1`
- Test: `Ppdm2Jira/tests/JiraClient.Tests.ps1`

**Interfaces:**
- Produces (consumed by Task 7, 8, 9):
  - `New-Ppdm2JiraClient -Config <hashtable>` → client `[pscustomobject]` `{ baseUrl, apiBase, authMode, bodyFormat, authHeader, tlsValidate }`. `Config` keys: `baseUrl, apiVersion(3|2), authMode(basic|bearer), bodyFormat(adf|wiki), email, secretName, tlsValidate`.
  - `Invoke-Ppdm2JiraHttp -Uri -Method -Headers -JsonBody [-SkipTls]` → `{ StatusCode[int], Headers, Content }` — **the only function that touches the network; mocked in all tests.**
  - `Invoke-Ppdm2JiraRequest -Client -Method -Path [-Body] [-MaxRetries]` → `{ StatusCode, Headers, Content }`; retries `429/5xx`, honours `Retry-After`.
  - `ConvertTo-Ppdm2JiraAdf -Text` → ordered hashtable ADF doc.
  - `Get-Ppdm2JiraBody -Client -Text` → ADF doc (Cloud) or plain string (DC).
  - `Get-Ppdm2JiraSecret -Name` → plaintext secret (wraps `Get-Secret`; mocked in tests).

- [ ] **Step 1: Write the failing test**

`Ppdm2Jira/tests/JiraClient.Tests.ps1`:
```powershell
BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'Ppdm2Jira.psd1') -Force
    # SecretManagement not guaranteed in CI: stub Get-Secret so the wrapper resolves/mocks.
    function global:Get-Secret { param([string]$Name, [switch]$AsPlainText) }
}
AfterAll {
    Remove-Item Function:\Get-Secret -ErrorAction SilentlyContinue
}

Describe 'New-Ppdm2JiraClient' {
    It 'builds a Basic auth header for Cloud and never retains the secret' {
        InModuleScope Ppdm2Jira {
            Mock Get-Ppdm2JiraSecret { 'tok123' }
            $c = New-Ppdm2JiraClient -Config @{ baseUrl='https://x.atlassian.net'; apiVersion=3; authMode='basic'; bodyFormat='adf'; email='a@b.c'; secretName='s' }
            $c.apiBase    | Should -Be '/rest/api/3'
            $c.authHeader | Should -BeLike 'Basic *'
            $expected = 'Basic ' + [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes('a@b.c:tok123'))
            $c.authHeader | Should -Be $expected
            ($c.PSObject.Properties.Name) | Should -Not -Contain 'secret'
        }
    }
    It 'builds a Bearer header and v2 base for Data Center' {
        InModuleScope Ppdm2Jira {
            Mock Get-Ppdm2JiraSecret { 'pat999' }
            $c = New-Ppdm2JiraClient -Config @{ baseUrl='https://jira.dc.local'; apiVersion=2; authMode='bearer'; bodyFormat='wiki'; secretName='s' }
            $c.apiBase    | Should -Be '/rest/api/2'
            $c.authHeader | Should -Be 'Bearer pat999'
        }
    }
}

Describe 'Get-Ppdm2JiraBody' {
    It 'renders ADF for adf clients' {
        InModuleScope Ppdm2Jira {
            $c = [pscustomobject]@{ bodyFormat = 'adf' }
            $doc = Get-Ppdm2JiraBody -Client $c -Text "line1`nline2"
            $doc.type | Should -Be 'doc'
            $doc.content.Count | Should -Be 2
            $doc.content[0].content[0].text | Should -Be 'line1'
        }
    }
    It 'returns a plain string for wiki clients' {
        InModuleScope Ppdm2Jira {
            $c = [pscustomobject]@{ bodyFormat = 'wiki' }
            Get-Ppdm2JiraBody -Client $c -Text "a`nb" | Should -Be "a`nb"
        }
    }
}

Describe 'Invoke-Ppdm2JiraRequest' {
    It 'retries on 503 then returns the 200 result' {
        InModuleScope Ppdm2Jira {
            $script:calls = 0
            Mock Start-Sleep {}
            Mock Invoke-Ppdm2JiraHttp {
                $script:calls++
                if ($script:calls -eq 1) { return [pscustomobject]@{ StatusCode = 503; Headers = @{}; Content = $null } }
                return [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = [pscustomobject]@{ ok = $true } }
            }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; tlsValidate=$true }
            $r = Invoke-Ppdm2JiraRequest -Client $c -Method GET -Path '/myself'
            $script:calls | Should -Be 2
            $r.StatusCode | Should -Be 200
            $r.Content.ok | Should -BeTrue
        }
    }
}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/JiraClient.Tests.ps1"`
Expected: FAIL — JiraClient functions not defined.

- [ ] **Step 3: Write the implementation**

`Ppdm2Jira/Private/JiraClient.ps1`:
```powershell
<#
.SYNOPSIS
    Auth-abstracted Jira client for Cloud (v3/Basic/ADF) and Data Center (v2/Bearer/wiki).
.DESCRIPTION
    One config selects flavour; only auth and body-format branch. All network I/O funnels
    through Invoke-Ppdm2JiraHttp (the single mockable boundary). Operations live in the same
    file (see find/create/comment/remotelink). Secrets are fetched at client construction and
    never stored on the returned object (NFR-3, ADR-0006).
#>
Set-StrictMode -Version Latest

function Get-Ppdm2JiraSecret {
    [OutputType([string])]
    param([Parameter(Mandatory)][string] $Name)
    if (-not (Get-Command Get-Secret -ErrorAction SilentlyContinue)) {
        throw "SecretManagement cmdlet 'Get-Secret' not found. Install Microsoft.PowerShell.SecretManagement and register a vault."
    }
    return [string](Get-Secret -Name $Name -AsPlainText)
}

function New-Ppdm2JiraClient {
    [OutputType([pscustomobject])]
    param([Parameter(Mandatory)][hashtable] $Config)

    $secret = Get-Ppdm2JiraSecret -Name $Config.secretName
    switch ($Config.authMode) {
        'basic' {
            $pair = '{0}:{1}' -f $Config.email, $secret
            $auth = 'Basic ' + [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($pair))
        }
        'bearer' { $auth = 'Bearer ' + $secret }
        default  { throw "Unknown authMode '$($Config.authMode)' (expected 'basic' or 'bearer')." }
    }
    $apiBase = if ([int]$Config.apiVersion -eq 3) { '/rest/api/3' } else { '/rest/api/2' }
    $tls = if ($Config.ContainsKey('tlsValidate')) { [bool]$Config.tlsValidate } else { $true }

    [pscustomobject]@{
        baseUrl     = $Config.baseUrl
        apiBase     = $apiBase
        authMode    = $Config.authMode
        bodyFormat  = $Config.bodyFormat
        authHeader  = $auth
        tlsValidate = $tls
    }
}

function ConvertTo-Ppdm2JiraAdf {
    [OutputType([System.Collections.Specialized.OrderedDictionary])]
    param([string] $Text)
    $paras = New-Object System.Collections.Generic.List[object]
    foreach ($line in ($Text -split "`r?`n")) {
        $t = if ([string]::IsNullOrEmpty($line)) { ' ' } else { $line }
        $paras.Add([ordered]@{ type = 'paragraph'; content = @([ordered]@{ type = 'text'; text = $t }) })
    }
    return [ordered]@{ type = 'doc'; version = 1; content = $paras.ToArray() }
}

function Get-Ppdm2JiraBody {
    param([Parameter(Mandatory)] $Client, [string] $Text)
    if ($Client.bodyFormat -eq 'adf') { return (ConvertTo-Ppdm2JiraAdf -Text $Text) }
    return $Text
}

function Invoke-Ppdm2JiraHttp {
    <# Integration boundary. Returns @{StatusCode;Headers;Content}; never throws for HTTP error codes. #>
    [OutputType([pscustomobject])]
    param(
        [Parameter(Mandatory)][string] $Uri,
        [Parameter(Mandatory)][string] $Method,
        [Parameter(Mandatory)][hashtable] $Headers,
        [string] $JsonBody,
        [switch] $SkipTls
    )
    $oldCallback = [System.Net.ServicePointManager]::ServerCertificateValidationCallback
    if ($SkipTls) {
        Write-Warning 'TLS validation disabled for this Jira request (explicit opt-out).'
        [System.Net.ServicePointManager]::ServerCertificateValidationCallback = { $true }
    }
    try {
        $params = @{ Uri = $Uri; Method = $Method; Headers = $Headers; UseBasicParsing = $true; ErrorAction = 'Stop' }
        if ($JsonBody) { $params.Body = $JsonBody; $params.ContentType = 'application/json' }
        $resp = Invoke-WebRequest @params
        $content = if ($resp.Content) { $resp.Content | ConvertFrom-Json } else { $null }
        return [pscustomobject]@{ StatusCode = [int]$resp.StatusCode; Headers = $resp.Headers; Content = $content }
    }
    catch [System.Net.WebException] {
        $r = $_.Exception.Response
        if ($null -ne $r) {
            $reader = New-Object System.IO.StreamReader($r.GetResponseStream())
            $raw = $reader.ReadToEnd()
            $content = if ($raw) { try { $raw | ConvertFrom-Json } catch { $raw } } else { $null }
            return [pscustomobject]@{ StatusCode = [int]$r.StatusCode; Headers = $r.Headers; Content = $content }
        }
        throw
    }
    finally {
        [System.Net.ServicePointManager]::ServerCertificateValidationCallback = $oldCallback
    }
}

function Invoke-Ppdm2JiraRequest {
    [OutputType([pscustomobject])]
    param(
        [Parameter(Mandatory)] $Client,
        [Parameter(Mandatory)][string] $Method,
        [Parameter(Mandatory)][string] $Path,
        $Body,
        [int] $MaxRetries = 3
    )
    $uri = $Client.baseUrl.TrimEnd('/') + $Client.apiBase + $Path
    $headers = @{ Authorization = $Client.authHeader; Accept = 'application/json' }
    $json = if ($PSBoundParameters.ContainsKey('Body') -and $null -ne $Body) { $Body | ConvertTo-Json -Depth 20 } else { $null }

    $attempt = 0
    while ($true) {
        $attempt++
        $r = Invoke-Ppdm2JiraHttp -Uri $uri -Method $Method -Headers $headers -JsonBody $json -SkipTls:(-not $Client.tlsValidate)
        $retryable = @(429, 500, 502, 503, 504)
        if (($r.StatusCode -in $retryable) -and ($attempt -le $MaxRetries)) {
            $delay = [int][math]::Min(30, [math]::Pow(2, $attempt))
            if ($r.Headers -and $r.Headers['Retry-After']) {
                $parsed = 0
                if ([int]::TryParse([string]$r.Headers['Retry-After'], [ref]$parsed)) { $delay = $parsed }
            }
            Start-Sleep -Seconds $delay
            continue
        }
        return $r
    }
}
```

- [ ] **Step 4: Run test to verify it passes**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/JiraClient.Tests.ps1"`
Expected: PASS (5 tests).

- [ ] **Step 5: Commit**

```bash
git add Ppdm2Jira/Private/JiraClient.ps1 Ppdm2Jira/tests/JiraClient.Tests.ps1
git commit -m "feat: add JiraClient core (auth, HTTP boundary, ADF/wiki rendering)"
```

---

## Task 7: JiraClient operations — find, create, comment, remote link

**Files:**
- Modify: `Ppdm2Jira/Private/JiraClient.ps1` (append the four operations)
- Modify: `Ppdm2Jira/tests/JiraClient.Tests.ps1` (append operation tests)

**Interfaces:**
- Produces (consumed by Task 8, 9):
  - `Find-Ppdm2JiraOpenIssue -Client -Project -Label` → issue key `[string]` or `$null`. Throws on 401/403.
  - `New-Ppdm2JiraIssue -Client -Target -Incident` → issue key `[string]`. Throws on 400/401/403.
  - `Add-Ppdm2JiraComment -Client -Key -Text` → `[bool]` — `$true` commented, `$false` if 404 (caller creates). Throws on 401/403.
  - `Set-Ppdm2JiraRemoteLink -Client -Key -GlobalId -Url -Title` → `[bool]` (best effort).

- [ ] **Step 1: Append the failing tests**

Append to `Ppdm2Jira/tests/JiraClient.Tests.ps1`:
```powershell
Describe 'Find-Ppdm2JiraOpenIssue' {
    It 'posts to /search/jql for Cloud and returns the first key' {
        InModuleScope Ppdm2Jira {
            $script:path = $null
            Mock Invoke-Ppdm2JiraHttp {
                $script:path = $Uri
                [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = [pscustomobject]@{ issues = @([pscustomobject]@{ key = 'OPS-1' }) } }
            }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; tlsValidate=$true }
            $key = Find-Ppdm2JiraOpenIssue -Client $c -Project 'OPS' -Label 'ppdm_prod1_a1'
            $key | Should -Be 'OPS-1'
            $script:path | Should -BeLike '*/rest/api/3/search/jql'
        }
    }
    It 'returns $null when no open issue matches' {
        InModuleScope Ppdm2Jira {
            Mock Invoke-Ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = [pscustomobject]@{ issues = @() } } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; tlsValidate=$true }
            Find-Ppdm2JiraOpenIssue -Client $c -Project 'OPS' -Label 'ppdm_prod1_a1' | Should -BeNullOrEmpty
        }
    }
    It 'uses /search for Data Center (v2)' {
        InModuleScope Ppdm2Jira {
            $script:path = $null
            Mock Invoke-Ppdm2JiraHttp { $script:path = $Uri; [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = [pscustomobject]@{ issues = @() } } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/2'; authHeader='Bearer z'; tlsValidate=$true }
            Find-Ppdm2JiraOpenIssue -Client $c -Project 'OPS' -Label 'l' | Out-Null
            $script:path | Should -BeLike '*/rest/api/2/search'
        }
    }
}

Describe 'New-Ppdm2JiraIssue' {
    It 'returns the created key on 201' {
        InModuleScope Ppdm2Jira {
            Mock Invoke-Ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 201; Headers = @{}; Content = [pscustomobject]@{ key = 'BKP-42' } } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; bodyFormat='adf'; tlsValidate=$true }
            $target = [pscustomobject]@{ project='BKP'; issueType='Incident'; component='Backup Operations'; priorityId='1'; labels=@('ppdm') }
            $inc = [pscustomobject]@{ title='t'; body='b' }
            New-Ppdm2JiraIssue -Client $c -Target $target -Incident $inc | Should -Be 'BKP-42'
        }
    }
    It 'throws on 401' {
        InModuleScope Ppdm2Jira {
            Mock Invoke-Ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 401; Headers = @{}; Content = $null } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; bodyFormat='adf'; tlsValidate=$true }
            $target = [pscustomobject]@{ project='BKP'; issueType='Incident'; priorityId='1'; labels=@(); component=$null }
            { New-Ppdm2JiraIssue -Client $c -Target $target -Incident ([pscustomobject]@{ title='t'; body='b' }) } | Should -Throw
        }
    }
}

Describe 'Add-Ppdm2JiraComment' {
    It 'returns $true on success' {
        InModuleScope Ppdm2Jira {
            Mock Invoke-Ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 201; Headers = @{}; Content = [pscustomobject]@{ id='10' } } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; bodyFormat='adf'; tlsValidate=$true }
            Add-Ppdm2JiraComment -Client $c -Key 'OPS-1' -Text 'recurred' | Should -BeTrue
        }
    }
    It 'returns $false on 404 so the caller can fall back to create' {
        InModuleScope Ppdm2Jira {
            Mock Invoke-Ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 404; Headers = @{}; Content = $null } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; bodyFormat='adf'; tlsValidate=$true }
            Add-Ppdm2JiraComment -Client $c -Key 'OPS-404' -Text 'x' | Should -BeFalse
        }
    }
}
```

- [ ] **Step 2: Run tests to verify the new ones fail**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/JiraClient.Tests.ps1"`
Expected: FAIL — operation functions not defined (earlier 5 still pass).

- [ ] **Step 3: Append the implementation**

Append to `Ppdm2Jira/Private/JiraClient.ps1`:
```powershell
function Find-Ppdm2JiraOpenIssue {
    [OutputType([string])]
    param(
        [Parameter(Mandatory)] $Client,
        [Parameter(Mandatory)][string] $Project,
        [Parameter(Mandatory)][string] $Label
    )
    $jql = 'project = "{0}" AND labels = "{1}" AND statusCategory != Done ORDER BY created DESC' -f $Project, $Label
    if ($Client.apiBase -like '*api/3') {
        $body = @{ jql = $jql; fields = @('key', 'status'); maxResults = 1 }
        $res  = Invoke-Ppdm2JiraRequest -Client $Client -Method POST -Path '/search/jql' -Body $body
    }
    else {
        $body = @{ jql = $jql; fields = @('key', 'status'); maxResults = 1; startAt = 0 }
        $res  = Invoke-Ppdm2JiraRequest -Client $Client -Method POST -Path '/search' -Body $body
    }
    if ($res.StatusCode -in 401, 403) { throw "Jira auth/permission error ($($res.StatusCode)) searching for label '$Label'." }
    if ($res.StatusCode -ge 400) { throw "Jira search failed ($($res.StatusCode))." }
    $issues = Get-Ppdm2JiraProp $res.Content 'issues'
    if ($issues -and @($issues).Count -gt 0) { return [string](@($issues)[0].key) }
    return $null
}

function New-Ppdm2JiraIssue {
    [OutputType([string])]
    param(
        [Parameter(Mandatory)] $Client,
        [Parameter(Mandatory)] $Target,
        [Parameter(Mandatory)] $Incident
    )
    $fields = [ordered]@{
        project     = @{ key = $Target.project }
        issuetype   = @{ name = $Target.issueType }
        summary     = $Incident.title
        labels      = @($Target.labels)
        description = (Get-Ppdm2JiraBody -Client $Client -Text $Incident.body)
    }
    if ($Target.priorityId) { $fields.priority   = @{ id = [string]$Target.priorityId } }
    if ($Target.component)  { $fields.components = @(@{ name = $Target.component }) }

    $res = Invoke-Ppdm2JiraRequest -Client $Client -Method POST -Path '/issue' -Body @{ fields = $fields }
    if ($res.StatusCode -in 401, 403) { throw "Jira auth/permission error ($($res.StatusCode)) creating issue in $($Target.project)." }
    if ($res.StatusCode -ge 400) {
        $detail = if ($res.Content) { ($res.Content | ConvertTo-Json -Depth 5 -Compress) } else { '' }
        throw "Jira create failed ($($res.StatusCode)): $detail"
    }
    return [string]$res.Content.key
}

function Add-Ppdm2JiraComment {
    [OutputType([bool])]
    param(
        [Parameter(Mandatory)] $Client,
        [Parameter(Mandatory)][string] $Key,
        [Parameter(Mandatory)][string] $Text
    )
    $body = @{ body = (Get-Ppdm2JiraBody -Client $Client -Text $Text) }
    $res  = Invoke-Ppdm2JiraRequest -Client $Client -Method POST -Path ('/issue/{0}/comment' -f $Key) -Body $body
    if ($res.StatusCode -eq 404) { return $false }
    if ($res.StatusCode -in 401, 403) { throw "Jira auth/permission error ($($res.StatusCode)) commenting on $Key." }
    if ($res.StatusCode -ge 400) { throw "Jira comment failed ($($res.StatusCode)) on $Key." }
    return $true
}

function Set-Ppdm2JiraRemoteLink {
    [OutputType([bool])]
    param(
        [Parameter(Mandatory)] $Client,
        [Parameter(Mandatory)][string] $Key,
        [Parameter(Mandatory)][string] $GlobalId,
        [string] $Url,
        [string] $Title
    )
    $obj = @{ title = $Title }
    if ($Url) { $obj.url = $Url }
    $body = @{ globalId = $GlobalId; object = $obj }
    $res = Invoke-Ppdm2JiraRequest -Client $Client -Method POST -Path ('/issue/{0}/remotelink' -f $Key) -Body $body
    return ($res.StatusCode -lt 400)
}
```

- [ ] **Step 4: Run tests to verify all pass**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/JiraClient.Tests.ps1"`
Expected: PASS (12 tests total).

- [ ] **Step 5: Commit**

```bash
git add Ppdm2Jira/Private/JiraClient.ps1 Ppdm2Jira/tests/JiraClient.Tests.ps1
git commit -m "feat: add JiraClient operations (find/create/comment/remotelink)"
```

---

## Task 8: Dedup

**Files:**
- Create: `Ppdm2Jira/Private/Dedup.ps1`
- Test: `Ppdm2Jira/tests/Dedup.Tests.ps1`

**Interfaces:**
- Consumes: `Find-Ppdm2JiraOpenIssue`, `ConvertTo-Ppdm2JiraLabel`.
- Produces: `Resolve-Ppdm2JiraAction -Client -Incident -Target` → `[pscustomobject]` `{ Action = 'Create'|'Comment'; Key = <string|null> }`. Jira is source of truth (ADR-0003).

- [ ] **Step 1: Write the failing test**

`Ppdm2Jira/tests/Dedup.Tests.ps1`:
```powershell
BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'Ppdm2Jira.psd1') -Force
}

Describe 'Resolve-Ppdm2JiraAction' {
    It 'returns Comment with the existing key when an open issue is found' {
        InModuleScope Ppdm2Jira {
            Mock Find-Ppdm2JiraOpenIssue { 'OPS-7' }
            $inc = [pscustomobject]@{ dedupKey = 'ppdm:prod1:a1' }
            $target = [pscustomobject]@{ project = 'OPS' }
            $a = Resolve-Ppdm2JiraAction -Client ([pscustomobject]@{}) -Incident $inc -Target $target
            $a.Action | Should -Be 'Comment'
            $a.Key    | Should -Be 'OPS-7'
        }
    }
    It 'returns Create when no open issue is found, searching by sanitised label' {
        InModuleScope Ppdm2Jira {
            $script:label = $null
            Mock Find-Ppdm2JiraOpenIssue { $script:label = $Label; $null }
            $inc = [pscustomobject]@{ dedupKey = 'ppdm:prod1:a1' }
            $target = [pscustomobject]@{ project = 'OPS' }
            $a = Resolve-Ppdm2JiraAction -Client ([pscustomobject]@{}) -Incident $inc -Target $target
            $a.Action     | Should -Be 'Create'
            $a.Key        | Should -BeNullOrEmpty
            $script:label | Should -Be 'ppdm_prod1_a1'
        }
    }
}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/Dedup.Tests.ps1"`
Expected: FAIL — `Resolve-Ppdm2JiraAction` not defined.

- [ ] **Step 3: Write the implementation**

`Ppdm2Jira/Private/Dedup.ps1`:
```powershell
<#
.SYNOPSIS
    Decides create-vs-comment for an Incident using Jira as the source of truth (ADR-0003).
#>
Set-StrictMode -Version Latest

function Resolve-Ppdm2JiraAction {
    [OutputType([pscustomobject])]
    param(
        [Parameter(Mandatory)] $Client,
        [Parameter(Mandatory)] $Incident,
        [Parameter(Mandatory)] $Target
    )
    $label = ConvertTo-Ppdm2JiraLabel $Incident.dedupKey
    $key   = Find-Ppdm2JiraOpenIssue -Client $Client -Project $Target.project -Label $label
    if ($key) {
        return [pscustomobject]@{ Action = 'Comment'; Key = $key }
    }
    return [pscustomobject]@{ Action = 'Create'; Key = $null }
}
```

- [ ] **Step 4: Run test to verify it passes**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/Dedup.Tests.ps1"`
Expected: PASS (2 tests).

- [ ] **Step 5: Commit**

```bash
git add Ppdm2Jira/Private/Dedup.ps1 Ppdm2Jira/tests/Dedup.Tests.ps1
git commit -m "feat: add Dedup create-vs-comment resolution"
```

---

## Task 9: Orchestrator (`Invoke-Ppdm2JiraSync`)

**Files:**
- Create: `Ppdm2Jira/Public/Invoke-Ppdm2JiraSync.ps1`
- Test: `Ppdm2Jira/tests/Orchestrator.Tests.ps1`

**Interfaces:**
- Consumes: every unit above plus `Get-Ppdm2JiraAlerts`, `Get-Ppdm2JiraFailedBackups`, and the runtime helpers `Connect-Ppdm2JiraInstance`, `Write-Ppdm2JiraLog`.
- Produces: `Invoke-Ppdm2JiraSync -ConfigPath <string> [-Instance <string[]>] [-DryRun]` → exit code `[int]` (0 all-ok, 1 if any instance failed). The single exported function.

- [ ] **Step 1: Write the failing test**

`Ppdm2Jira/tests/Orchestrator.Tests.ps1`:
```powershell
BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'Ppdm2Jira.psd1') -Force
    $script:tmp = Join-Path ([IO.Path]::GetTempPath()) ("p2j-orch-" + [guid]::NewGuid())
    New-Item -ItemType Directory -Path $script:tmp -Force | Out-Null

    $routingPath = Join-Path $script:tmp 'routing.psd1'
    @"
@{ rules = @(); default = @{ project='OPS'; issueType='Task'; component=`$null; labels=@(); priority=@{ CRITICAL='2'; WARNING='3' } } }
"@ | Set-Content -Path $routingPath -Encoding UTF8

    $script:settingsPath = Join-Path $script:tmp 'settings.psd1'
    @"
@{
    stateDir    = '$($script:tmp -replace '\\','\\')\state'
    routingPath = '$($routingPath -replace '\\','\\')'
    instances   = @( @{ id='prod1'; baseUrl='https://prod1/api/v2'; secretName='s' } )
    jira        = @{ baseUrl='https://x'; apiVersion=3; authMode='basic'; bodyFormat='adf'; email='a@b.c'; secretName='j' }
}
"@ | Set-Content -Path $script:settingsPath -Encoding UTF8
}
AfterAll {
    if (Test-Path $script:tmp) { Remove-Item $script:tmp -Recurse -Force }
}

Describe 'Invoke-Ppdm2JiraSync' {
    BeforeEach {
        InModuleScope Ppdm2Jira {
            Mock New-Ppdm2JiraClient { [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; bodyFormat='adf'; tlsValidate=$true } }
            Mock Connect-Ppdm2JiraInstance {}
            Mock Get-Ppdm2JiraFailedBackups { @() }
            Mock Get-Ppdm2JiraAlerts {
                [pscustomobject]@{ PSTypeName='Ppdm2Jira.Incident'; source='alert'; severity='CRITICAL'; category='PROTECTION'
                                   dedupKey='ppdm:prod1:al-1'; title='t'; body='b'; occurredAt=([datetime]'2026-06-21T00:00:00Z')
                                   ppdmLinks=[pscustomobject]@{ id='al-1'; deepLink='https://prod1/x' } }
            }
            Mock New-Ppdm2JiraIssue { 'OPS-100' }
            Mock Set-Ppdm2JiraRemoteLink { $true }
            Mock Add-Ppdm2JiraComment { $true }
            Mock Resolve-Ppdm2JiraAction { [pscustomobject]@{ Action='Create'; Key=$null } }
        }
    }

    It 'creates an issue and advances the watermark on success' {
        InModuleScope Ppdm2Jira {
            $rc = Invoke-Ppdm2JiraSync -ConfigPath $using:settingsPath
            $rc | Should -Be 0
            Should -Invoke New-Ppdm2JiraIssue -Times 1
            Should -Invoke Set-Ppdm2JiraWatermark -Times 1
        } -Parameters @{ settingsPath = $script:settingsPath }
    }

    It 'in DryRun writes nothing and does not advance the watermark' {
        InModuleScope Ppdm2Jira -Parameters @{ settingsPath = $script:settingsPath } {
            Mock Set-Ppdm2JiraWatermark {}
            $rc = Invoke-Ppdm2JiraSync -ConfigPath $settingsPath -DryRun
            $rc | Should -Be 0
            Should -Invoke New-Ppdm2JiraIssue -Times 0
            Should -Invoke Set-Ppdm2JiraWatermark -Times 0
        }
    }

    It 'does not advance the watermark when issue creation throws' {
        InModuleScope Ppdm2Jira -Parameters @{ settingsPath = $script:settingsPath } {
            Mock New-Ppdm2JiraIssue { throw 'boom' }
            Mock Set-Ppdm2JiraWatermark {}
            $rc = Invoke-Ppdm2JiraSync -ConfigPath $settingsPath
            $rc | Should -Be 1
            Should -Invoke Set-Ppdm2JiraWatermark -Times 0
        }
    }
}
```

> Note: the first It uses the `-Parameters` form on `InModuleScope` (Pester 5.1+) to pass `$settingsPath`. Keep all three consistent — use `InModuleScope Ppdm2Jira -Parameters @{ settingsPath = $script:settingsPath } { ... }` and reference `$settingsPath` inside.

- [ ] **Step 2: Run test to verify it fails**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/Orchestrator.Tests.ps1"`
Expected: FAIL — `Invoke-Ppdm2JiraSync` not defined.

- [ ] **Step 3: Write the implementation**

`Ppdm2Jira/Public/Invoke-Ppdm2JiraSync.ps1`:
```powershell
<#
.SYNOPSIS
    Orchestrates one PPDM->Jira sync pass across all configured instances.
.DESCRIPTION
    Per-instance, isolated (FR-10). Reads alerts + failed backups since the watermark,
    routes + dedups each Incident, creates or comments in Jira, and advances the watermark
    ONLY after the instance fully succeeds (FR-8). -DryRun computes actions with no writes (FR-9).
.PARAMETER ConfigPath
    Path to settings.psd1.
.PARAMETER Instance
    Optional instance id filter; defaults to all configured instances.
.PARAMETER DryRun
    Compute and log intended actions without any Jira write or watermark advance.
.OUTPUTS
    [int] exit code: 0 = all instances succeeded, 1 = at least one failed.
#>
Set-StrictMode -Version Latest

function Connect-Ppdm2JiraInstance {
    param([Parameter(Mandatory)] $Instance)
    if (-not (Get-Command Connect-PPDMapiEndpoint -ErrorAction SilentlyContinue)) {
        throw "PPDM-pwsh cmdlet 'Connect-PPDMapiEndpoint' not found. Install PPDM-pwsh first."
    }
    $secret = Get-Ppdm2JiraSecret -Name $Instance.secretName
    $secure = ConvertTo-SecureString $secret -AsPlainText -Force
    Connect-PPDMapiEndpoint -PPDM_API_URI $Instance.baseUrl -Token $secure | Out-Null
}

function Write-Ppdm2JiraLog {
    param(
        [Parameter(Mandatory)][string] $Instance,
        [Parameter(Mandatory)] $Incident,
        [Parameter(Mandatory)][string] $Action,
        [string] $Key
    )
    $line = [ordered]@{
        instance = $Instance
        source   = $Incident.source
        dedupKey = $Incident.dedupKey
        action   = $Action
        jiraKey  = $Key
    } | ConvertTo-Json -Compress
    Write-Information $line -InformationAction Continue
    return $line
}

function Invoke-Ppdm2JiraSync {
    [CmdletBinding()]
    [OutputType([int])]
    param(
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $ConfigPath,
        [string[]] $Instance,
        [switch] $DryRun
    )

    $settings = Import-PowerShellDataFile -Path $ConfigPath
    $routing  = Import-PowerShellDataFile -Path $settings.routingPath
    $client   = New-Ppdm2JiraClient -Config $settings.jira
    $anyFailed = $false

    foreach ($inst in $settings.instances) {
        if ($Instance -and ($inst.id -notin $Instance)) { continue }
        try {
            Connect-Ppdm2JiraInstance -Instance $inst
            $wm = Get-Ppdm2JiraWatermark -InstanceId $inst.id -StateDir $settings.stateDir

            $incidents = New-Object System.Collections.Generic.List[object]
            foreach ($i in (Get-Ppdm2JiraAlerts -InstanceId $inst.id -Since $wm))        { $incidents.Add($i) }
            foreach ($i in (Get-Ppdm2JiraFailedBackups -InstanceId $inst.id -Since $wm)) { $incidents.Add($i) }

            $maxOccurred = $wm
            foreach ($inc in $incidents) {
                $target = Resolve-Ppdm2JiraTarget -Incident $inc -RoutingTable $routing
                $action = Resolve-Ppdm2JiraAction -Client $client -Incident $inc -Target $target

                if ($DryRun) {
                    Write-Ppdm2JiraLog -Instance $inst.id -Incident $inc -Action ('dryrun:' + $action.Action) -Key $action.Key | Out-Null
                }
                elseif ($action.Action -eq 'Create') {
                    $key = New-Ppdm2JiraIssue -Client $client -Target $target -Incident $inc
                    $gid = ConvertTo-Ppdm2JiraLabel $inc.dedupKey
                    $url = Get-Ppdm2JiraProp $inc.ppdmLinks 'deepLink'
                    Set-Ppdm2JiraRemoteLink -Client $client -Key $key -GlobalId $gid -Url $url -Title ('PPDM {0} {1}' -f $inst.id, (Get-Ppdm2JiraProp $inc.ppdmLinks 'id')) | Out-Null
                    Write-Ppdm2JiraLog -Instance $inst.id -Incident $inc -Action 'created' -Key $key | Out-Null
                }
                else {
                    $ts = (Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ')
                    $commented = Add-Ppdm2JiraComment -Client $client -Key $action.Key -Text ("Recurred at $ts")
                    if (-not $commented) {
                        $key = New-Ppdm2JiraIssue -Client $client -Target $target -Incident $inc
                        Write-Ppdm2JiraLog -Instance $inst.id -Incident $inc -Action 'created(404-fallback)' -Key $key | Out-Null
                    }
                    else {
                        Write-Ppdm2JiraLog -Instance $inst.id -Incident $inc -Action 'commented' -Key $action.Key | Out-Null
                    }
                }

                $occurred = Get-Ppdm2JiraProp $inc 'occurredAt'
                if ($occurred -and $occurred -gt $maxOccurred) { $maxOccurred = $occurred }
            }

            if (-not $DryRun) {
                Set-Ppdm2JiraWatermark -InstanceId $inst.id -Time $maxOccurred -StateDir $settings.stateDir
            }
        }
        catch {
            $anyFailed = $true
            Write-Error ('[{0}] sync failed: {1}' -f $inst.id, $_.Exception.Message)
        }
    }

    if ($anyFailed) { return 1 } else { return 0 }
}
```

- [ ] **Step 4: Run test to verify it passes**

Run: `pwsh -c "Invoke-Pester ./Ppdm2Jira/tests/Orchestrator.Tests.ps1"`
Expected: PASS (3 tests). The module now exports `Invoke-Ppdm2JiraSync`.

- [ ] **Step 5: Commit**

```bash
git add Ppdm2Jira/Public/Invoke-Ppdm2JiraSync.ps1 Ppdm2Jira/tests/Orchestrator.Tests.ps1
git commit -m "feat: add Invoke-Ppdm2JiraSync orchestrator"
```

---

## Task 10: Full-suite gate — ScriptAnalyzer + Semgrep

**Files:**
- Create: `Ppdm2Jira/tests/Run-AllTests.ps1`

**Interfaces:**
- Consumes: every unit + test from Tasks 1–9.
- Produces: a one-command verification entry point and a clean security scan.

- [ ] **Step 1: Write the suite runner**

`Ppdm2Jira/tests/Run-AllTests.ps1`:
```powershell
# Runs the full Pester suite for the Ppdm2Jira module.
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$config = New-PesterConfiguration
$config.Run.Path = $here
$config.Output.Verbosity = 'Detailed'
Invoke-Pester -Configuration $config
```

- [ ] **Step 2: Run the whole suite**

Run: `pwsh -c "./Ppdm2Jira/tests/Run-AllTests.ps1"`
Expected: PASS — all tests from Tasks 1–9 green (Module 2, Normalizer 8, PpdmClient 2, StateStore 3, Router 3, JiraClient 12, Dedup 2, Orchestrator 3).

- [ ] **Step 3: Run PSScriptAnalyzer**

Run: `pwsh -c "Invoke-ScriptAnalyzer -Path ./Ppdm2Jira -Recurse -Severity Warning,Error"`
Expected: no Error-severity findings. Fix any (commonly: unapproved verbs, unused variables). If a finding is a deliberate exception, suppress it narrowly with `[Diagnostics.CodeAnalysis.SuppressMessageAttribute]` and a comment.

- [ ] **Step 4: Semgrep security scan (project security rule)**

Run the `semgrep` MCP `semgrep_scan` tool over `Ppdm2Jira/` (per the project security rule: scan generated code before delivery). Expected: no high-severity findings. Triage any (e.g. the TLS-callback opt-out in `Invoke-Ppdm2JiraHttp` is intentional and guarded by `-SkipTls` + a warning — document, don't silence blindly).

- [ ] **Step 5: Commit**

```bash
git add Ppdm2Jira/tests/Run-AllTests.ps1
git commit -m "test: add full-suite runner; pass ScriptAnalyzer and Semgrep gates"
```

---

## Self-Review

**1. Spec coverage**

| Spec section | Task(s) |
|---|---|
| §1 Manifest & loader | Task 1 |
| §2 JiraClient (config/auth, request chokepoint, ADF/wiki) | Task 6 |
| §2 JiraClient operations (find/create/comment/remotelink, Cloud+DC) | Task 7 |
| §3 Router + label sanitiser + config templates | Task 5 |
| §4 StateStore (atomic watermark) | Task 4 |
| §4 Dedup (create-vs-comment, Jira source of truth) | Task 8 |
| §5 Orchestrator (per-instance loop, DryRun, advance-on-success, isolation) | Task 9 |
| §6 Tests — Normalizer / PpdmClient (existing code) | Tasks 2, 3 |
| §6 Tests — all new units | Tasks 4–9 |
| §6 Semgrep + full suite | Task 10 |
| §7 Error handling (401/403 throw, 404 fallback, 429/5xx retry) | Tasks 6 (retry), 7 (status mapping), 9 (404 fallback) |
| §8 Known limitations (no correlation) | Carried as-is; no task creates correlation, matching the decision |

No gaps.

**2. Placeholder scan:** No `TBD`/`TODO`/"add error handling" placeholders; every code step shows complete code.

**3. Type consistency check:**
- `Invoke-Ppdm2JiraHttp` returns `{StatusCode, Headers, Content}` — consumed consistently by `Invoke-Ppdm2JiraRequest` and all operation tests.
- Client object shape `{baseUrl, apiBase, authMode, bodyFormat, authHeader, tlsValidate}` — produced by `New-Ppdm2JiraClient`, consumed by operations and orchestrator mocks (mocks set the subset each path reads).
- `JiraTarget` `{project, issueType, component, assigneeGroup, priorityId, labels}` — produced by `Resolve-Ppdm2JiraTarget`, consumed by `New-Ppdm2JiraIssue` (`project, issueType, summary←Incident, labels, priorityId, component`). Consistent.
- `Action` `{Action, Key}` — produced by `Resolve-Ppdm2JiraAction`, consumed by orchestrator. Consistent.
- `ConvertTo-Ppdm2JiraLabel` used identically in Router, Dedup, orchestrator (`globalId`).
- Incident fields read (`dedupKey, source, severity, category, title, body, occurredAt, ppdmLinks.{id,deepLink}`) all exist on the Normalizer's output.

No inconsistencies found.
