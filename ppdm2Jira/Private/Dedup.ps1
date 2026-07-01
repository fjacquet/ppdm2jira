<#
.SYNOPSIS
    Decides create-vs-comment for an Incident using Jira as the source of truth (ADR-0003).
#>
Set-StrictMode -Version Latest

function Merge-ppdm2JiraCorrelatedIncidents {
    <#
    .SYNOPSIS
        Collapses incidents that describe the same failure (shared jobId) into one representative,
        so a single failure opens a single Jira ticket (ADR-0003 extension / M0 open item #3).
    .DESCRIPTION
        A PPDM failure can surface as BOTH an alert and an activity; each has its own eventId (hence
        its own dedupKey), so without correlation the pipeline would open two tickets. This groups the
        current pass's incidents by their correlation label (Get-ppdm2JiraCorrelationLabel, derived
        from jobId) and keeps one per group -- preferring the activity (richer job detail) as primary.
        The dropped events' dedupKeys are folded into the primary's body so no traceability is lost.
        Incidents without a jobId have no correlation label and are always passed through untouched.
        This handles the within-pass case; the correlation label handles the cross-pass (straddle) case.
    #>
    # PSUseSingularNouns: plural is intentional -- takes and returns a collection of incidents.
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [OutputType([object[]])]
    param([Parameter(Mandatory)][AllowEmptyCollection()][object[]] $Incidents)

    $singles = New-Object System.Collections.Generic.List[object]
    $groups  = [ordered]@{}
    foreach ($inc in $Incidents) {
        $key = Get-ppdm2JiraCorrelationLabel -Incident $inc
        if (-not $key) { $singles.Add($inc); continue }
        if (-not $groups.Contains($key)) { $groups[$key] = New-Object System.Collections.Generic.List[object] }
        $groups[$key].Add($inc)
    }

    $result = New-Object System.Collections.Generic.List[object]
    foreach ($inc in $singles) { $result.Add($inc) }

    foreach ($key in $groups.Keys) {
        $members = $groups[$key]
        if ($members.Count -eq 1) { $result.Add($members[0]); continue }

        $primary = $null
        foreach ($m in $members) { if ($m.source -eq 'activity') { $primary = $m; break } }
        if ($null -eq $primary) { $primary = $members[0] }

        $droppedKeys = New-Object System.Collections.Generic.List[string]
        foreach ($m in $members) {
            if ([object]::ReferenceEquals($m, $primary)) { continue }
            $droppedKeys.Add([string]$m.dedupKey)
        }
        if ($droppedKeys.Count -gt 0) {
            $existing = [string](Get-ppdm2JiraProp $primary 'body')
            $primary.body = $existing + [Environment]::NewLine +
                ('Correlated PPDM events (same job, one ticket): {0}' -f ($droppedKeys -join ', '))
        }
        # Carry the newest occurredAt across the correlated set. The orchestrator advances the watermark
        # to the max occurredAt of the (merged) incidents, so if a dropped sibling occurred later than
        # the primary, the watermark would lag and re-read the pair next run.
        $maxOcc = Get-ppdm2JiraProp $primary 'occurredAt'
        foreach ($m in $members) {
            $o = Get-ppdm2JiraProp $m 'occurredAt'
            if ($o -and (-not $maxOcc -or $o -gt $maxOcc)) { $maxOcc = $o }
        }
        if ($maxOcc) { $primary.occurredAt = $maxOcc }
        $result.Add($primary)
    }
    # Return a plain array (comma-wrapped so a single/empty result doesn't unroll to a scalar/$null).
    return , $result.ToArray()
}

function Resolve-ppdm2JiraAction {
    [OutputType([pscustomobject])]
    param(
        [Parameter(Mandatory)] $Client,
        [Parameter(Mandatory)] $Incident,
        [Parameter(Mandatory)] $Target
    )
    $label = ConvertTo-ppdm2JiraLabel $Incident.dedupKey
    $corr  = Get-ppdm2JiraCorrelationLabel -Incident $Incident
    # Search by the per-event dedup label OR the jobId correlation label, so a sibling event from an
    # earlier pass (straddling the watermark) comments on the existing ticket instead of duplicating it.
    $key   = Find-ppdm2JiraOpenIssue -Client $Client -Project $Target.project -Label $label -CorrelationLabel $corr
    if ($key) {
        return [pscustomobject]@{ Action = 'Comment'; Key = $key }
    }
    return [pscustomobject]@{ Action = 'Create'; Key = $null }
}
