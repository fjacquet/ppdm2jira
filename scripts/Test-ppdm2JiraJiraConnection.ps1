<#
.SYNOPSIS
    Validates Jira connectivity, authentication, and JQL search for the configured Jira instance
    (Data Center v2 or Cloud v3).

.DESCRIPTION
    Read-only smoke test for the Jira write side. It:
      1. builds the JiraClient from settings.psd1 (secret pulled from SecretManagement, never printed),
      2. calls GET /myself to confirm base URL + auth + API flavour resolve correctly, and
      3. runs a dedup-style JQL search against a project (the same path Find-ppdm2JiraOpenIssue uses in
         production) to confirm the search endpoint and JQL are accepted.

    No issues are created, commented, or modified. It reuses the module's own private functions
    (dot-sourced the same way ppdm2Jira.psm1 loads them), so auth/endpoint/flavour handling is
    identical to Invoke-ppdm2JiraSync. This is an operational helper, NOT part of the importable module.

    Exit code: 0 = passed, 1 = failed (usable in schedulers/CI).

.PARAMETER ConfigPath
    Path to your settings.psd1 (same file you pass to Invoke-ppdm2JiraSync).

.PARAMETER Project
    Jira project key to run the probe search against. Defaults to the routing default project
    (settings.routingPath -> default.project) when omitted.

.EXAMPLE
    ./scripts/Test-ppdm2JiraJiraConnection.ps1 -ConfigPath ./config/settings.psd1

.EXAMPLE
    ./scripts/Test-ppdm2JiraJiraConnection.ps1 -ConfigPath ./config/settings.psd1 -Project OPS
#>
[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingWriteHost', '', Justification = 'Interactive operator diagnostic; coloured console status is the intended UX, not pipeline output.')]
[CmdletBinding()]
param(
    [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $ConfigPath,
    [string] $Project
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Load the module's private + public functions exactly as ppdm2Jira.psm1 does, so this diagnostic
# uses the same JiraClient auth/endpoint/flavour code as the integration. We dot-source rather than
# Import-Module because New-ppdm2JiraClient / Invoke-ppdm2JiraRequest / Find-ppdm2JiraOpenIssue are private.
$repoRoot   = Split-Path -Parent $PSScriptRoot
$moduleRoot = Join-Path $repoRoot 'ppdm2Jira'
if (-not (Test-Path $moduleRoot)) { throw "Module folder not found: $moduleRoot" }
foreach ($folder in 'Private', 'Public') {
    $dir = Join-Path $moduleRoot $folder
    Get-ChildItem -Path $dir -Filter '*.ps1' -File | ForEach-Object { . $_.FullName }
}

if (-not (Test-Path $ConfigPath)) { throw "Config not found: $ConfigPath" }
$settings = Import-PowerShellDataFile -Path $ConfigPath
if (-not $settings.ContainsKey('jira') -or -not $settings.jira) {
    throw "No 'jira' section found in $ConfigPath."
}

# Resolve a project to probe: explicit -Project wins, else the routing default project.
if (-not $Project) {
    if ($settings.ContainsKey('routingPath') -and (Test-Path $settings.routingPath)) {
        $routing = Import-PowerShellDataFile -Path $settings.routingPath
        if ($routing.ContainsKey('default') -and $routing.default.ContainsKey('project')) {
            $Project = [string]$routing.default.project
        }
    }
}
if (-not $Project) {
    throw "No -Project given and no routing default project found. Pass -Project <KEY>."
}

$jira = $settings.jira
Write-Host ('=== Jira {0} (apiVersion={1}, authMode={2}, bodyFormat={3}) ===' -f `
        $jira.baseUrl, $jira.apiVersion, $jira.authMode, $jira.bodyFormat) -ForegroundColor Cyan

$failed = 0
try {
    $client = New-ppdm2JiraClient -Config $jira
    Write-Host '  [ok]   client built (secret from SecretManagement, not retained on the object)' -ForegroundColor Green

    # 1. Preflight: GET /myself confirms base URL + auth header + API version all line up.
    $me = Invoke-ppdm2JiraRequest -Client $client -Method GET -Path '/myself'
    if ($me.StatusCode -in 401, 403) {
        throw "Auth rejected (HTTP $($me.StatusCode)) on /myself. Check secret, authMode ($($jira.authMode)), and email/PAT."
    }
    if ($me.StatusCode -ge 400) {
        throw "GET /myself failed (HTTP $($me.StatusCode)). Check baseUrl and apiVersion ($($jira.apiVersion))."
    }
    $who = Get-ppdm2JiraProp $me.Content 'displayName'
    if (-not $who) { $who = Get-ppdm2JiraProp $me.Content 'name' }
    Write-Host ("  [ok]   authenticated as '{0}' (HTTP {1})" -f $who, $me.StatusCode) -ForegroundColor Green

    # 2. Dedup-style JQL search -- identical path to Find-ppdm2JiraOpenIssue, read-only. A deliberately
    #    non-matching probe label proves the search endpoint + JQL are accepted for this project without
    #    depending on any existing issue. Find-ppdm2JiraOpenIssue throws on HTTP >= 400, so reaching here
    #    means the search succeeded.
    $probeLabel = 'ppdm_connectivity_probe_no_match'
    $key = Find-ppdm2JiraOpenIssue -Client $client -Project $Project -Label $probeLabel
    $detail = if ($key) { "matched $key" } else { 'no match (expected for the probe label)' }
    Write-Host ("  [ok]   JQL search accepted for project '{0}' -> {1}" -f $Project, $detail) -ForegroundColor Green
}
catch {
    $failed = 1
    Write-Host ('  [FAIL] {0}' -f $_.Exception.Message) -ForegroundColor Red
}

Write-Host ''
if ($failed) {
    Write-Host 'Result: Jira validation FAILED.' -ForegroundColor Red
    exit 1
}
Write-Host 'Result: Jira validation passed.' -ForegroundColor Green
exit 0
