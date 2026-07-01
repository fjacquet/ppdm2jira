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
    return $line
}

function Invoke-ppdm2JiraSync {
    [CmdletBinding()]
    [OutputType([int])]
    param(
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $ConfigPath,
        [string[]] $Instance,
        [switch] $DryRun
    )

    $settings = Import-PowerShellDataFile -Path $ConfigPath
    $routing  = Import-PowerShellDataFile -Path $settings.routingPath
    $client   = New-ppdm2JiraClient -Config $settings.jira
    $anyFailed = $false

    foreach ($inst in $settings.instances) {
        if ($Instance -and ($inst.id -notin $Instance)) { continue }
        try {
            Connect-ppdm2JiraInstance -Instance $inst
            $wm = Get-ppdm2JiraWatermark -InstanceId $inst.id -StateDir $settings.stateDir

            $incidents = New-Object System.Collections.Generic.List[object]
            foreach ($i in (Get-ppdm2JiraAlerts -InstanceId $inst.id -Since $wm))        { $incidents.Add($i) }
            foreach ($i in (Get-ppdm2JiraFailedBackups -InstanceId $inst.id -Since $wm)) { $incidents.Add($i) }
            # Collapse an alert + activity that describe the same failure (shared jobId) into one ticket.
            $incidents = Merge-ppdm2JiraCorrelatedIncidents -Incidents $incidents

            $maxOccurred = $wm
            foreach ($inc in $incidents) {
                $target = Resolve-ppdm2JiraTarget -Incident $inc -RoutingTable $routing
                $action = Resolve-ppdm2JiraAction -Client $client -Incident $inc -Target $target

                if ($DryRun) {
                    Write-ppdm2JiraLog -Instance $inst.id -Incident $inc -Action ('dryrun:' + $action.Action) -Key $action.Key | Out-Null
                }
                elseif ($action.Action -eq 'Create') {
                    $key = New-ppdm2JiraIssue -Client $client -Target $target -Incident $inc
                    $gid = ConvertTo-ppdm2JiraLabel $inc.dedupKey
                    $url = Get-ppdm2JiraProp $inc.ppdmLinks 'deepLink'
                    Set-ppdm2JiraRemoteLink -Client $client -Key $key -GlobalId $gid -Url $url -Title ('PPDM {0} {1}' -f $inst.id, (Get-ppdm2JiraProp $inc.ppdmLinks 'id')) | Out-Null
                    Write-ppdm2JiraLog -Instance $inst.id -Incident $inc -Action 'created' -Key $key | Out-Null
                }
                else {
                    $ts = (Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ')
                    $commented = Add-ppdm2JiraComment -Client $client -Key $action.Key -Text ("Recurred at $ts")
                    if (-not $commented) {
                        $key = New-ppdm2JiraIssue -Client $client -Target $target -Incident $inc
                        Write-ppdm2JiraLog -Instance $inst.id -Incident $inc -Action 'created(404-fallback)' -Key $key | Out-Null
                    }
                    else {
                        Write-ppdm2JiraLog -Instance $inst.id -Incident $inc -Action 'commented' -Key $action.Key | Out-Null
                    }
                }

                $occurred = Get-ppdm2JiraProp $inc 'occurredAt'
                if ($occurred -and $occurred -gt $maxOccurred) { $maxOccurred = $occurred }
            }

            if (-not $DryRun) {
                Set-ppdm2JiraWatermark -InstanceId $inst.id -Time $maxOccurred -StateDir $settings.stateDir
            }
        }
        catch {
            $anyFailed = $true
            # -ErrorAction Continue keeps this a non-terminating log even when the caller runs with
            # $ErrorActionPreference = 'Stop' (e.g. CI). Otherwise Write-Error would terminate and
            # abort the per-instance loop, breaking isolation (FR-10).
            Write-Error ('[{0}] sync failed: {1}' -f $inst.id, $_.Exception.Message) -ErrorAction Continue
        }
    }

    if ($anyFailed) { return 1 } else { return 0 }
}
