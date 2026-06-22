<#
.SYNOPSIS
    Thin read wrappers over the PPDM-pwsh module that return normalized Incidents.

.DESCRIPTION
    `Get-Ppdm2JiraFailedBackups` and `Get-Ppdm2JiraAlerts` build a PPDM filter
    string (watermark + status/severity), call the PPDM-pwsh transport cmdlets
    (Get-PPDMactivities / Get-PPDMalerts), and pipe each raw result through
    ConvertTo-Ppdm2JiraIncident (Normalizer.ps1).

    Transport/auth (token, pagination plumbing) is delegated to PPDM-pwsh, which
    must already be connected via Connect-PPDMapiEndpoint (sets $Global:PPDM_API_BaseUri).
    Because the wrappers call the module cmdlets (not Invoke-RestMethod directly),
    Pester tests mock Get-PPDMactivities / Get-PPDMalerts.

    Filter strings are adapted from PPDM-pwsh (MIT, (c) 2023 Karsten Bott) —
    PredefinedFilter 'PROTECT_FAILED'. The proven, non-obvious parts are
    `parentId ne null` + `classType in ("JOB","JOB_GROUP")` to get job-level
    (not step-level) granularity. See THIRD_PARTY_NOTICES.

    Timestamp format fixes a latent bug in the upstream module, which used `hh`
    (12-hour) — this uses `HH` (24-hour) UTC, required for a correct watermark.
#>

Set-StrictMode -Version Latest

function Format-Ppdm2JiraTimestamp {
    # PPDM filter expects ISO-8601 Zulu, 24-hour.
    param([Parameter(Mandatory)][datetime] $Value)
    return $Value.ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ')
}

function Assert-Ppdm2JiraPpdmCommand {
    param([Parameter(Mandatory)][string] $Name)
    if (-not (Get-Command $Name -ErrorAction SilentlyContinue)) {
        throw "PPDM-pwsh cmdlet '$Name' not found. Install (Install-Module PPDM-pwsh) and connect (Connect-PPDMapiEndpoint) first."
    }
}

function Get-Ppdm2JiraFailedBackups {
    <#
    .SYNOPSIS
        Returns failed/partial backup jobs since the watermark as Incidents.
    .PARAMETER InstanceId
        Logical PPDM instance id (e.g. 'prod1').
    .PARAMETER Since
        Watermark — only jobs with startTime >= this are returned. Default: 24h ago.
    .PARAMETER Status
        result.status values treated as actionable. Default: FAILED + OK_WITH_ERRORS.
    .PARAMETER Category
        Activity categories to include. Default: PROTECT + CLOUD_PROTECT.
    .PARAMETER PageSize
        Page size passed to Get-PPDMactivities.
    .EXAMPLE
        Get-Ppdm2JiraFailedBackups -InstanceId prod1 -Since (Get-Date).AddHours(-6)
    #>
    # PSUseSingularNouns: plural is intentional — returns a collection of backup job records.
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [CmdletBinding()]
    [OutputType([pscustomobject])]
    param(
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $InstanceId,
        [datetime]  $Since        = (Get-Date).AddDays(-1),
        [string[]]  $Status       = @('FAILED', 'OK_WITH_ERRORS'),
        [string[]]  $Category     = @('PROTECT', 'CLOUD_PROTECT'),
        [int]       $PageSize     = 200,
        [string]    $PpdmBaseUrl  = (Get-Variable -Name 'PPDM_API_BaseUri' -Scope Global -ValueOnly -ErrorAction SilentlyContinue)
    )
    Assert-Ppdm2JiraPpdmCommand -Name 'Get-PPDMactivities'

    $sinceIso   = Format-Ppdm2JiraTimestamp $Since
    $statusList = ($Status   | ForEach-Object { '"{0}"' -f $_ }) -join ','
    $catList    = ($Category | ForEach-Object { '"{0}"' -f $_ }) -join ','

    # job-level granularity: parentId ne null + classType in ("JOB","JOB_GROUP")
    $filter = 'result.status in ({0}) and startTime ge "{1}" and parentId ne null and classType in ("JOB","JOB_GROUP") and category in ({2})' `
        -f $statusList, $sinceIso, $catList
    Write-Verbose "PPDM activities filter: $filter"

    Get-PPDMactivities -filter $filter -pageSize $PageSize |
        ConvertTo-Ppdm2JiraIncident -Source activity -InstanceId $InstanceId -PpdmBaseUrl $PpdmBaseUrl
}

function Get-Ppdm2JiraAlerts {
    <#
    .SYNOPSIS
        Returns CRITICAL/WARNING alerts since the watermark as Incidents.
    .PARAMETER InstanceId
        Logical PPDM instance id (e.g. 'prod1').
    .PARAMETER Since
        Watermark — only alerts with postedTime > this are returned. Default: 24h ago.
    .PARAMETER Severity
        Alert severities to include. Default: CRITICAL + WARNING (INFORMATIONAL excluded, design out-of-scope).
    .PARAMETER Category
        Optional Alert categories (e.g. PROTECTION, PROTECTION_COPY). Omit for all.
    .PARAMETER UnacknowledgedOnly
        Exclude already-acknowledged alerts (acknowledgeState eq UNACKNOWLEDGED).
    .EXAMPLE
        Get-Ppdm2JiraAlerts -InstanceId prod1 -Category PROTECTION,PROTECTION_COPY -UnacknowledgedOnly
    #>
    # PSUseSingularNouns: plural is intentional — returns a collection of alert records.
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [CmdletBinding()]
    [OutputType([pscustomobject])]
    param(
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $InstanceId,
        [datetime]  $Since               = (Get-Date).AddDays(-1),
        [string[]]  $Severity            = @('CRITICAL', 'WARNING'),
        [string[]]  $Category,
        [switch]    $UnacknowledgedOnly,
        [int]       $PageSize            = 200,
        [string]    $PpdmBaseUrl         = (Get-Variable -Name 'PPDM_API_BaseUri' -Scope Global -ValueOnly -ErrorAction SilentlyContinue)
    )
    Assert-Ppdm2JiraPpdmCommand -Name 'Get-PPDMalerts'

    $sinceIso = Format-Ppdm2JiraTimestamp $Since
    $sevList  = ($Severity | ForEach-Object { '"{0}"' -f $_ }) -join ','

    $filter = 'severity in ({0}) and postedTime gt "{1}"' -f $sevList, $sinceIso
    if ($Category) {
        $catList = ($Category | ForEach-Object { '"{0}"' -f $_ }) -join ','
        $filter += ' and category in ({0})' -f $catList
    }
    if ($UnacknowledgedOnly) {
        $filter += ' and acknowledgement.acknowledgeState eq "UNACKNOWLEDGED"'
    }
    Write-Verbose "PPDM alerts filter: $filter"

    Get-PPDMalerts -filter $filter -body @{ pageSize = $PageSize } |
        ConvertTo-Ppdm2JiraIncident -Source alert -InstanceId $InstanceId -PpdmBaseUrl $PpdmBaseUrl
}
