<#
.SYNOPSIS
    Structured per-incident logging for the sync pipeline.
#>
Set-StrictMode -Version Latest

function Write-ppdm2JiraLog {
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
        jiraKey  = if ([string]::IsNullOrEmpty($Key)) { $null } else { $Key }
    } | ConvertTo-Json -Compress
    Write-Information $line -InformationAction Continue
}
