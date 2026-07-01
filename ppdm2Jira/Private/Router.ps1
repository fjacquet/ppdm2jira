<#
.SYNOPSIS
    Resolves an Incident to a Jira routing target (project/component/labels/priority).
.DESCRIPTION
    Ordered rules from routing.psd1; first match wins, else the mandatory default
    (FR-5). Routing is data, not code. Also hosts the dedup-key->label sanitiser
    shared with Dedup and the remote-link globalId.
#>
Set-StrictMode -Version Latest

function ConvertTo-ppdm2JiraLabel {
    [OutputType([string])]
    param([Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $DedupKey)
    return ($DedupKey -replace '[:\s]', '_')
}

function Get-ppdm2JiraCorrelationLabel {
    # Cross-source correlation label. The same failure surfacing as BOTH an alert and an activity
    # shares a jobId (Normalizer: an activity's jobId is its own id; an alert's jobId points at that
    # activity). Tagging both events with this label lets the dedup search find the sibling issue so a
    # single failure yields a single ticket (ADR-0003 extension / M0 open item #3). Returns $null when
    # the incident has no jobId -- there is then nothing to correlate on, so it is never merged.
    [OutputType([string])]
    param([Parameter(Mandatory)] $Incident)
    $links = Get-ppdm2JiraProp $Incident 'ppdmLinks'
    $jobId = Get-ppdm2JiraProp $links 'jobId'
    if ([string]::IsNullOrWhiteSpace([string]$jobId)) { return $null }
    $instanceId = [string](Get-ppdm2JiraProp $Incident 'instanceId')
    return ConvertTo-ppdm2JiraLabel ('ppdm:job:{0}:{1}' -f $instanceId, ([string]$jobId).Trim())
}

function Test-ppdm2JiraRoutingRule {
    param([Parameter(Mandatory)] $Rule, [Parameter(Mandatory)] $Incident)
    if (-not $Rule.ContainsKey('match') -or $null -eq $Rule.match) { return $false }
    foreach ($key in $Rule.match.Keys) {
        $want = $Rule.match[$key]
        $have = Get-ppdm2JiraProp $Incident $key
        if ($want -is [array]) {
            if ($have -notin $want) { return $false }
        }
        elseif ($have -ne $want) {
            return $false
        }
    }
    return $true
}

function Resolve-ppdm2JiraTarget {
    [OutputType([pscustomobject])]
    param(
        [Parameter(Mandatory)] $Incident,
        [Parameter(Mandatory)][hashtable] $RoutingTable
    )
    $match = $null
    if ($RoutingTable.ContainsKey('rules') -and $RoutingTable.rules) {
        foreach ($rule in $RoutingTable.rules) {
            if (Test-ppdm2JiraRoutingRule -Rule $rule -Incident $Incident) { $match = $rule; break }
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
    $labels.Add((ConvertTo-ppdm2JiraLabel $Incident.dedupKey))
    $labels.Add(('source_{0}' -f $Incident.source))
    $category = Get-ppdm2JiraProp $Incident 'category'
    if ($category) { $labels.Add(('cat_{0}' -f ($category.ToString().ToLower() -replace '[:\s]', '_'))) }
    if ($match.ContainsKey('labels') -and $match.labels) { foreach ($l in $match.labels) { $labels.Add([string]$l) } }
    $corrLabel = Get-ppdm2JiraCorrelationLabel -Incident $Incident
    if ($corrLabel) { $labels.Add($corrLabel) }   # jobId correlation: created issue is findable by its sibling

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
