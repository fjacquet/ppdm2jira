<#
.SYNOPSIS
    Decides create-vs-comment for an Incident using Jira as the source of truth (ADR-0003).
#>
Set-StrictMode -Version Latest

function Resolve-ppdm2JiraAction {
    [OutputType([pscustomobject])]
    param(
        [Parameter(Mandatory)] $Client,
        [Parameter(Mandatory)] $Incident,
        [Parameter(Mandatory)] $Target
    )
    $label = ConvertTo-ppdm2JiraLabel $Incident.dedupKey
    $key   = Find-ppdm2JiraOpenIssue -Client $Client -Project $Target.project -Label $label
    if ($key) {
        return [pscustomobject]@{ Action = 'Comment'; Key = $key }
    }
    return [pscustomobject]@{ Action = 'Create'; Key = $null }
}
