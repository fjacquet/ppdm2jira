<#
.SYNOPSIS
    Orchestrates one PPDM->Jira sync pass across all configured instances.
.DESCRIPTION
    Per-instance, isolated (FR-10). Reads alerts + failed backups since the watermark (minus a
    small overlap to cover visibility skew), routes + dedups each Incident, creates or comments
    in Jira, and advances the watermark ONLY after the instance fully succeeds (FR-8). -DryRun
    computes actions with no writes (FR-9). Settings are validated fail-fast, before any instance
    is touched (Assert-ppdm2JiraSettings, Private/Config.ps1).
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

function Invoke-ppdm2JiraSync {
    [CmdletBinding()]
    [OutputType([int])]
    param(
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $ConfigPath,
        [string[]] $Instance,
        [switch] $DryRun
    )

    $settings = Import-PowerShellDataFile -Path $ConfigPath
    Assert-ppdm2JiraSettings -Settings $settings
    $routing  = Import-PowerShellDataFile -Path $settings.routingPath
    $client   = New-ppdm2JiraClient -Config $settings.jira
    $anyFailed = $false

    $overlapMinutes = 5
    if ($settings.ContainsKey('queryOverlapMinutes')) { $overlapMinutes = [int]$settings.queryOverlapMinutes }

    foreach ($inst in $settings.instances) {
        if ($Instance -and ($inst.id -notin $Instance)) { continue }
        try {
            Connect-ppdm2JiraInstance -Instance $inst
            $wm = Get-ppdm2JiraWatermark -InstanceId $inst.id -StateDir $settings.stateDir
            # Read a bit before the watermark to cover clock/visibility skew (endTime/postedTime
            # can lag behind when a job/alert actually becomes queryable). The watermark itself
            # still advances from $wm below (never from $since), so it can never move backwards.
            $since = $wm.AddMinutes(-$overlapMinutes)

            $incidents = New-Object System.Collections.Generic.List[object]
            foreach ($i in (Get-ppdm2JiraAlerts -InstanceId $inst.id -Since $since))        { $incidents.Add($i) }
            foreach ($i in (Get-ppdm2JiraFailedBackups -InstanceId $inst.id -Since $since)) { $incidents.Add($i) }
            # Collapse an alert + activity that describe the same failure (shared jobId) into one ticket.
            $incidents = Merge-ppdm2JiraCorrelatedIncidents -Incidents $incidents

            $maxOccurred = $wm
            foreach ($inc in $incidents) {
                $target   = Resolve-ppdm2JiraTarget -Incident $inc -RoutingTable $routing
                $action   = Resolve-ppdm2JiraAction -Client $client -Incident $inc -Target $target
                $occurred = Get-ppdm2JiraProp $inc 'occurredAt'

                if ($DryRun) {
                    Write-ppdm2JiraLog -Instance $inst.id -Incident $inc -Action ('dryrun:' + $action.Action) -Key $action.Key
                }
                elseif ($action.Action -eq 'Create') {
                    $key = New-ppdm2JiraIssueWithLink -Client $client -Target $target -Incident $inc -InstanceId $inst.id
                    Write-ppdm2JiraLog -Instance $inst.id -Incident $inc -Action 'created' -Key $key
                }
                else {
                    # Traceable back to the exact PPDM event, not just "sometime during this sync pass".
                    $ts = if ($occurred) { Format-ppdm2JiraTimestamp $occurred } else { Format-ppdm2JiraTimestamp (Get-Date) }
                    $commentText = 'Recurred at {0} — event {1}' -f $ts, $inc.dedupKey
                    $commented = Add-ppdm2JiraComment -Client $client -Key $action.Key -Text $commentText
                    if (-not $commented) {
                        $key = New-ppdm2JiraIssueWithLink -Client $client -Target $target -Incident $inc -InstanceId $inst.id
                        Write-ppdm2JiraLog -Instance $inst.id -Incident $inc -Action 'created(404-fallback)' -Key $key
                    }
                    else {
                        Write-ppdm2JiraLog -Instance $inst.id -Incident $inc -Action 'commented' -Key $action.Key
                    }
                }

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
