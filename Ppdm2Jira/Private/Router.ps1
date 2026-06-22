<#
.SYNOPSIS
    Resolves an Incident to a Jira routing target (project/component/labels/priority).
.DESCRIPTION
    Ordered rules from routing.psd1; first match wins, else the mandatory default
    (FR-5). Routing is data, not code. Also hosts the dedup-key->label sanitiser
    shared with Dedup and the remote-link globalId.
#>
Set-StrictMode -Version Latest

function ConvertTo-Ppdm2JiraLabel {
    [OutputType([string])]
    param([Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $DedupKey)
    return ($DedupKey -replace '[:\s]', '_')
}

function Test-Ppdm2JiraRoutingRule {
    param([Parameter(Mandatory)] $Rule, [Parameter(Mandatory)] $Incident)
    if (-not $Rule.ContainsKey('match') -or $null -eq $Rule.match) { return $false }
    foreach ($key in $Rule.match.Keys) {
        $want = $Rule.match[$key]
        $have = Get-Ppdm2JiraProp $Incident $key
        if ($want -is [array]) {
            if ($have -notin $want) { return $false }
        }
        elseif ($have -ne $want) {
            return $false
        }
    }
    return $true
}

function Resolve-Ppdm2JiraTarget {
    [OutputType([pscustomobject])]
    param(
        [Parameter(Mandatory)] $Incident,
        [Parameter(Mandatory)][hashtable] $RoutingTable
    )
    $match = $null
    if ($RoutingTable.ContainsKey('rules') -and $RoutingTable.rules) {
        foreach ($rule in $RoutingTable.rules) {
            if (Test-Ppdm2JiraRoutingRule -Rule $rule -Incident $Incident) { $match = $rule; break }
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
    $labels.Add((ConvertTo-Ppdm2JiraLabel $Incident.dedupKey))
    $labels.Add(('source_{0}' -f $Incident.source))
    $category = Get-Ppdm2JiraProp $Incident 'category'
    if ($category) { $labels.Add(('cat_{0}' -f ($category.ToString().ToLower() -replace '[:\s]', '_'))) }
    if ($match.ContainsKey('labels') -and $match.labels) { foreach ($l in $match.labels) { $labels.Add([string]$l) } }

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
