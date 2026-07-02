<#
.SYNOPSIS
    Fail-fast validation of the parsed settings.psd1 shape.
.DESCRIPTION
    Runs once, before any PPDM/Jira instance is touched, so a missing/malformed key surfaces as
    one aggregated, operator-readable error instead of a confusing null-reference deep in the
    per-instance loop (or worse, a partially-run instance).
#>
Set-StrictMode -Version Latest

function Assert-ppdm2JiraSettings {
    # PSUseSingularNouns: plural is intentional -- validates the whole settings document
    # (the parsed settings.psd1), not a single setting.
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [CmdletBinding()]
    param([Parameter(Mandatory)][hashtable] $Settings)

    $problems = New-Object System.Collections.Generic.List[string]

    if (-not $Settings.ContainsKey('stateDir') -or [string]::IsNullOrWhiteSpace([string]$Settings.stateDir)) {
        $problems.Add('settings.stateDir is required.')
    }
    if (-not $Settings.ContainsKey('routingPath') -or [string]::IsNullOrWhiteSpace([string]$Settings.routingPath)) {
        $problems.Add('settings.routingPath is required.')
    }

    if (-not $Settings.ContainsKey('jira') -or $null -eq $Settings.jira) {
        $problems.Add('settings.jira is required.')
    }
    else {
        $jira = $Settings.jira
        foreach ($key in 'baseUrl', 'authMode', 'bodyFormat', 'apiVersion', 'secretName') {
            if (-not $jira.ContainsKey($key) -or [string]::IsNullOrWhiteSpace([string]$jira[$key])) {
                $problems.Add("settings.jira.$key is required.")
            }
        }
    }

    if (-not $Settings.ContainsKey('instances') -or -not $Settings.instances -or @($Settings.instances).Count -eq 0) {
        $problems.Add('settings.instances must contain at least one instance.')
    }
    else {
        $i = 0
        foreach ($inst in $Settings.instances) {
            foreach ($key in 'id', 'baseUrl', 'secretName') {
                if (-not $inst.ContainsKey($key) -or [string]::IsNullOrWhiteSpace([string]$inst[$key])) {
                    $problems.Add("settings.instances[$i].$key is required.")
                }
            }
            $i++
        }
    }

    if ($Settings.ContainsKey('queryOverlapMinutes')) {
        $val = $Settings.queryOverlapMinutes
        $ok = $false
        if ($val -is [int] -and $val -ge 0) { $ok = $true }
        if (-not $ok) { $problems.Add('settings.queryOverlapMinutes must be an integer >= 0.') }
    }

    if ($problems.Count -gt 0) {
        $bullets = ($problems | ForEach-Object { '  - {0}' -f $_ }) -join [Environment]::NewLine
        throw ('Invalid ppdm2Jira settings:{0}{1}' -f [Environment]::NewLine, $bullets)
    }
}
