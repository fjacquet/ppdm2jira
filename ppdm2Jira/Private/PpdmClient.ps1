<#
.SYNOPSIS
    Thin read wrappers over the PPDM-pwsh module that return normalized Incidents.

.DESCRIPTION
    `Get-ppdm2JiraFailedBackups` and `Get-ppdm2JiraAlerts` build a PPDM filter
    string (watermark + status/severity), call the PPDM-pwsh transport cmdlets
    (Get-PPDMactivities / Get-PPDMalerts), and pipe each raw result through
    ConvertTo-ppdm2JiraIncident (Normalizer.ps1).

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
    Format-ppdm2JiraTimestamp is the single owner of that format string; reused
    by the orchestrator's recurrence-comment path and StateStore's watermark write.
#>

Set-StrictMode -Version Latest

function Format-ppdm2JiraTimestamp {
    # PPDM filter expects ISO-8601 Zulu, 24-hour.
    param([Parameter(Mandatory)][datetime] $Value)
    return $Value.ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ')
}

function ConvertTo-ppdm2JiraQuotedList {
    # Renders a string array as a PPDM/JQL-style quoted, comma-joined list: 'a','b' -> '"a","b"'.
    [OutputType([string])]
    param([Parameter(Mandatory)][string[]] $Values)
    return (($Values | ForEach-Object { '"{0}"' -f $_ }) -join ',')
}

function Get-ppdm2JiraPpdmBaseUrl {
    # Wraps the connected PPDM-pwsh session global so PpdmClient/Normalizer parameter
    # defaults share one StrictMode-safe accessor instead of repeating the Get-Variable call.
    [OutputType([string])]
    param()
    return (Get-Variable -Name 'PPDM_API_BaseUri' -Scope Global -ValueOnly -ErrorAction SilentlyContinue)
}

function Assert-ppdm2JiraPpdmCommand {
    param([Parameter(Mandatory)][string] $Name)
    if (-not (Get-Command $Name -ErrorAction SilentlyContinue)) {
        throw "PPDM-pwsh cmdlet '$Name' not found. Install (Install-Module PPDM-pwsh) and connect (Connect-PPDMapiEndpoint) first."
    }
}

function Connect-ppdm2JiraInstance {
    # PSAvoidUsingConvertToSecureStringWithPlainText: the secret is retrieved from
    # a managed secrets store (Get-ppdm2JiraSecret), never hardcoded. ConvertTo-SecureString
    # is required here only as an adapter to the PPDM-pwsh Connect-PPDMapiEndpoint API,
    # which demands a SecureString token parameter.
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingConvertToSecureStringWithPlainText', '')]
    param([Parameter(Mandatory)] $Instance)
    if (-not (Get-Command Connect-PPDMapiEndpoint -ErrorAction SilentlyContinue)) {
        throw "PPDM-pwsh cmdlet 'Connect-PPDMapiEndpoint' not found. Install PPDM-pwsh first."
    }
    $secret = Get-ppdm2JiraSecret -Name $Instance.secretName
    $secure = ConvertTo-SecureString $secret -AsPlainText -Force
    Connect-PPDMapiEndpoint -PPDM_API_URI $Instance.baseUrl -Token $secure | Out-Null
}

function Get-ppdm2JiraFailedBackups {
    <#
    .SYNOPSIS
        Returns failed/partial backup jobs since the watermark as Incidents.
    .PARAMETER InstanceId
        Logical PPDM instance id (e.g. 'prod1').
    .PARAMETER Since
        Watermark — only jobs with endTime >= this are returned. Default: 24h ago. An activity
        becomes eligible exactly when it gets an endTime — the same field the watermark advances
        on (design spec §"Watermark correctness"), so a job that starts before and finishes after
        a sync pass is never permanently missed.
    .PARAMETER Status
        result.status values treated as actionable. Default: FAILED + OK_WITH_ERRORS.
    .PARAMETER Category
        Activity categories to include. Default: PROTECT + CLOUD_PROTECT.
    .PARAMETER PageSize
        Page size passed to Get-PPDMactivities.
    .EXAMPLE
        Get-ppdm2JiraFailedBackups -InstanceId prod1 -Since (Get-Date).AddHours(-6)
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
        [string]    $PpdmBaseUrl  = (Get-ppdm2JiraPpdmBaseUrl)
    )
    Assert-ppdm2JiraPpdmCommand -Name 'Get-PPDMactivities'

    $sinceIso   = Format-ppdm2JiraTimestamp $Since
    $statusList = ConvertTo-ppdm2JiraQuotedList $Status
    $catList    = ConvertTo-ppdm2JiraQuotedList $Category

    # job-level granularity: parentId ne null + classType in ("JOB","JOB_GROUP")
    # endTime (not startTime) is the visibility filter — see .PARAMETER Since.
    $filter = 'result.status in ({0}) and endTime ge "{1}" and parentId ne null and classType in ("JOB","JOB_GROUP") and category in ({2})' `
        -f $statusList, $sinceIso, $catList
    Write-Verbose "PPDM activities filter: $filter"

    Get-PPDMactivities -filter $filter -pageSize $PageSize |
        ConvertTo-ppdm2JiraIncident -Source activity -InstanceId $InstanceId -PpdmBaseUrl $PpdmBaseUrl
}

function Get-ppdm2JiraAlerts {
    <#
    .SYNOPSIS
        Returns CRITICAL/WARNING alerts since the watermark as Incidents.
    .PARAMETER InstanceId
        Logical PPDM instance id (e.g. 'prod1').
    .PARAMETER Since
        Watermark — only alerts with postedTime >= this are returned. Default: 24h ago.
    .PARAMETER Severity
        Alert severities to include. Default: CRITICAL + WARNING (INFORMATIONAL excluded, design out-of-scope).
    .PARAMETER Category
        Optional Alert categories (e.g. PROTECTION, PROTECTION_COPY). Omit for all.
    .PARAMETER UnacknowledgedOnly
        Exclude already-acknowledged alerts (acknowledgeState eq UNACKNOWLEDGED).
    .EXAMPLE
        Get-ppdm2JiraAlerts -InstanceId prod1 -Category PROTECTION,PROTECTION_COPY -UnacknowledgedOnly
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
        [string]    $PpdmBaseUrl         = (Get-ppdm2JiraPpdmBaseUrl)
    )
    Assert-ppdm2JiraPpdmCommand -Name 'Get-PPDMalerts'

    $sinceIso = Format-ppdm2JiraTimestamp $Since
    $sevList  = ConvertTo-ppdm2JiraQuotedList $Severity

    # ge (not gt): consistent with the activities filter and replay-safe -- Jira-search dedup
    # (ADR-0003) already makes re-reading a boundary-second event idempotent, so matching it on
    # every pass is strictly safer than the old gt, which could miss a same-second alert.
    $filter = 'severity in ({0}) and postedTime ge "{1}"' -f $sevList, $sinceIso
    if ($Category) {
        $catList = ConvertTo-ppdm2JiraQuotedList $Category
        $filter += ' and category in ({0})' -f $catList
    }
    if ($UnacknowledgedOnly) {
        $filter += ' and acknowledgement.acknowledgeState eq "UNACKNOWLEDGED"'
    }
    Write-Verbose "PPDM alerts filter: $filter"

    Get-PPDMalerts -filter $filter -body @{ pageSize = $PageSize } |
        ConvertTo-ppdm2JiraIncident -Source alert -InstanceId $InstanceId -PpdmBaseUrl $PpdmBaseUrl
}
