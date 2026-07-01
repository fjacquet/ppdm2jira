<#
.SYNOPSIS
    Validates that each configured PPDM instance connects and that the production alert/activity
    search filters are accepted by the live PPDM API.

.DESCRIPTION
    Read-only smoke test for the PPDM read side. For each instance in settings.psd1 (optionally
    filtered with -Instance) it:
      1. retrieves the instance token from SecretManagement (never printed),
      2. connects via PPDM-pwsh Connect-PPDMapiEndpoint,
      3. runs the EXACT production searches (Get-ppdm2JiraAlerts + Get-ppdm2JiraFailedBackups) over a
         recent window -- so the M0 PPDM filter syntax is exercised against the real API, and
      4. reports counts plus a small sample (titles only, no secrets).

    It reuses the module's own private functions (dot-sourced the same way ppdm2Jira.psm1 loads them),
    so the code path is identical to Invoke-ppdm2JiraSync. It makes no writes and never touches
    watermarks. This is an operational helper, NOT part of the importable module.

    Exit code: 0 = every checked instance passed, 1 = at least one failed (usable in schedulers/CI).

.PARAMETER ConfigPath
    Path to your settings.psd1 (same file you pass to Invoke-ppdm2JiraSync).

.PARAMETER Instance
    Optional instance id filter; defaults to all configured instances.

.PARAMETER Since
    Watermark window for the probe searches. Default: 24h ago.

.PARAMETER Sample
    How many incident titles to print per instance. Default: 5.

.EXAMPLE
    ./scripts/Test-ppdm2JiraPpdmConnection.ps1 -ConfigPath ./config/settings.psd1

.EXAMPLE
    ./scripts/Test-ppdm2JiraPpdmConnection.ps1 -ConfigPath ./config/settings.psd1 -Instance prod1 -Since (Get-Date).AddHours(-6)
#>
[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingWriteHost', '', Justification = 'Interactive operator diagnostic; coloured console status is the intended UX, not pipeline output.')]
[CmdletBinding()]
param(
    [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $ConfigPath,
    [string[]]  $Instance,
    [datetime]  $Since  = (Get-Date).AddDays(-1),
    [int]       $Sample = 5
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Load the module's private + public functions exactly as ppdm2Jira.psm1 does, so this diagnostic
# exercises the same code path the integration uses (Connect-ppdm2JiraInstance, the PpdmClient
# wrappers, the Normalizer). We dot-source rather than Import-Module because the wrappers are private.
$repoRoot   = Split-Path -Parent $PSScriptRoot
$moduleRoot = Join-Path $repoRoot 'ppdm2Jira'
if (-not (Test-Path $moduleRoot)) { throw "Module folder not found: $moduleRoot" }
foreach ($folder in 'Private', 'Public') {
    $dir = Join-Path $moduleRoot $folder
    Get-ChildItem -Path $dir -Filter '*.ps1' -File | ForEach-Object { . $_.FullName }
}

if (-not (Test-Path $ConfigPath)) { throw "Config not found: $ConfigPath" }
$settings = Import-PowerShellDataFile -Path $ConfigPath
if (-not $settings.ContainsKey('instances') -or -not $settings.instances) {
    throw "No 'instances' entries found in $ConfigPath."
}

# PPDM-pwsh provides the transport (ADR / CLAUDE.md); fail early with an install hint if absent.
foreach ($cmd in 'Connect-PPDMapiEndpoint', 'Get-PPDMactivities', 'Get-PPDMalerts') {
    if (-not (Get-Command $cmd -ErrorAction SilentlyContinue)) {
        throw "PPDM-pwsh cmdlet '$cmd' not found. Install it first: Install-Module PPDM-pwsh -Scope CurrentUser"
    }
}

$targets = @($settings.instances | Where-Object { -not $Instance -or ($_.id -in $Instance) })
if ($targets.Count -eq 0) { throw "No instances matched filter: $($Instance -join ', ')" }

$failed = 0
foreach ($inst in $targets) {
    Write-Host ''
    Write-Host ("=== PPDM instance '{0}' ({1}) ===" -f $inst.id, $inst.baseUrl) -ForegroundColor Cyan
    try {
        Connect-ppdm2JiraInstance -Instance $inst
        Write-Host '  [ok]   connected (token from SecretManagement)' -ForegroundColor Green

        $alerts = @(Get-ppdm2JiraAlerts -InstanceId $inst.id -Since $Since)
        Write-Host ('  [ok]   alert search accepted    -> {0,4} incident(s) since {1:u}' -f $alerts.Count, $Since) -ForegroundColor Green

        $jobs = @(Get-ppdm2JiraFailedBackups -InstanceId $inst.id -Since $Since)
        Write-Host ('  [ok]   activity search accepted -> {0,4} incident(s) since {1:u}' -f $jobs.Count, $Since) -ForegroundColor Green

        $shown = @(@($alerts) + @($jobs)) | Select-Object -First $Sample
        foreach ($inc in $shown) {
            Write-Host ('         - [{0,-8}] {1}' -f $inc.source, $inc.title) -ForegroundColor DarkGray
        }
    }
    catch {
        $failed++
        Write-Host ('  [FAIL] {0}' -f $_.Exception.Message) -ForegroundColor Red
    }
}

Write-Host ''
if ($failed -gt 0) {
    Write-Host ('Result: {0} of {1} PPDM instance(s) FAILED.' -f $failed, $targets.Count) -ForegroundColor Red
    exit 1
}
Write-Host ('Result: all {0} PPDM instance(s) passed.' -f $targets.Count) -ForegroundColor Green
exit 0
