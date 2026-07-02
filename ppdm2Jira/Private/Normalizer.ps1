<#
.SYNOPSIS
    Normalizes raw PPDM alerts and activities into the common `Incident` model.

.DESCRIPTION
    Pure transformation layer (no I/O) so it is trivially Pester-testable per the
    project testing strategy. Field paths are taken from the local 20.1.0 PPDM v2
    OpenAPI spec (docs/swagger/9765-20.1.0.json): Activity.result.status,
    Activity.asset/host/protectionPolicy (Resource{name,id}), Activity.result.error
    (ActivityResultError{reason,detailedDescription,remediation,code}),
    Alert.severity/category/message/detailedDescription/postedTime,
    Alert.resource (EntityMessageResource{id,name,type,url}).

    Emits objects matching the Incident model in
    docs/superpowers/specs/2026-06-17-ppdm-jira-integration-design.md §"The Incident model".

    Targets Windows PowerShell 5.1+ (no PS7-only operators). All optional-field
    reads go through Get-ppdm2JiraProp so missing properties don't throw under
    Set-StrictMode (PPDM omits optional fields depending on event state).
#>

Set-StrictMode -Version Latest

function Get-ppdm2JiraProp {
    # StrictMode-safe property read: returns $null if the property is absent.
    param([object] $Object, [Parameter(Mandatory)][string] $Name)
    if ($null -eq $Object) { return $null }
    $p = $Object.PSObject.Properties[$Name]
    if ($p) { return $p.Value }
    return $null
}

function Get-ppdm2JiraDisplayValue {
    # PPDM returns some fields as a string and others as a {name,id} Resource object.
    param([object] $Value)
    if ($null -eq $Value) { return $null }
    if ($Value -is [string]) { return $Value }
    foreach ($prop in 'name', 'displayName', 'id') {
        $v = Get-ppdm2JiraProp $Value $prop
        if ($v) { return [string]$v }
    }
    return [string]$Value
}

function ConvertTo-ppdm2JiraSeverity {
    # Activities have no severity; derive it from result.status (design §Summary).
    param([string] $Status)
    switch ($Status) {
        'FAILED'         { 'CRITICAL'; break }
        'OK_WITH_ERRORS' { 'WARNING';  break }
        default          { 'WARNING' }
    }
}

function Limit-ppdm2JiraText {
    # Jira summary must be <= 255 chars (contract §8).
    param([string] $Text, [int] $Max = 255)
    if ([string]::IsNullOrEmpty($Text) -or $Text.Length -le $Max) { return $Text }
    return $Text.Substring(0, $Max - 1) + [char]0x2026   # ellipsis keeps length == Max
}

function ConvertTo-ppdm2JiraDate {
    param([object] $Value)
    if (-not $Value) { return $null }
    try { return ([datetimeoffset]::Parse([string]$Value)).UtcDateTime } catch { return $null }
}

function Get-ppdm2JiraUiRoot {
    # Strip the API path to get the appliance UI root for deep links.
    param([string] $BaseUrl)
    if ([string]::IsNullOrWhiteSpace($BaseUrl)) { return $null }
    try { $u = [uri]$BaseUrl; return ('{0}://{1}' -f $u.Scheme, $u.Authority) }
    catch { return ($BaseUrl -replace '/api/.*$', '') }
}

function ConvertTo-ppdm2JiraIncident {
    <#
    .SYNOPSIS
        Shapes a raw PPDM alert or activity into a common Incident (design spec).
    .PARAMETER InputObject
        A single raw object as returned by Get-PPDMactivities / Get-PPDMalerts.
    .PARAMETER Source
        'activity' (backup job) or 'alert'.
    .PARAMETER InstanceId
        Logical PPDM instance id (e.g. 'prod1') — used in dedupKey and titles.
    .PARAMETER PpdmBaseUrl
        Appliance base URL, for traceability deep links. Defaults to the connected session.
    .OUTPUTS
        PSCustomObject (PSTypeName 'ppdm2Jira.Incident')
    #>
    [CmdletBinding()]
    [OutputType([pscustomobject])]
    param(
        [Parameter(Mandatory, ValueFromPipeline)]
        [psobject] $InputObject,

        [Parameter(Mandatory)]
        [ValidateSet('alert', 'activity')]
        [string] $Source,

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string] $InstanceId,

        [string] $PpdmBaseUrl = (Get-ppdm2JiraPpdmBaseUrl)
    )
    begin { $uiRoot = Get-ppdm2JiraUiRoot $PpdmBaseUrl }
    process {
        if ($null -eq $InputObject) { return }
        $raw   = $InputObject
        $lines = New-Object System.Collections.Generic.List[string]

        if ($Source -eq 'activity') {
            $id        = [string](Get-ppdm2JiraProp $raw 'id')
            $result    = Get-ppdm2JiraProp $raw 'result'
            $status    = [string](Get-ppdm2JiraProp $result 'status')
            $severity  = ConvertTo-ppdm2JiraSeverity $status
            $category  = Get-ppdm2JiraDisplayValue (Get-ppdm2JiraProp $raw 'category')
            $subcat    = [string](Get-ppdm2JiraProp $raw 'subcategory')
            $asset     = Get-ppdm2JiraProp $raw 'asset'
            $hostObj   = Get-ppdm2JiraProp $raw 'host'      # not $host — that's an automatic variable
            $assetName = Get-ppdm2JiraDisplayValue $asset
            if (-not $assetName) { $assetName = Get-ppdm2JiraDisplayValue $hostObj }
            if (-not $assetName) { $assetName = '<unknown asset>' }
            $occurred  = ConvertTo-ppdm2JiraDate (Get-ppdm2JiraProp $raw 'endTime')
            if (-not $occurred) { $occurred = ConvertTo-ppdm2JiraDate (Get-ppdm2JiraProp $raw 'startTime') }
            if (-not $occurred) { $occurred = ConvertTo-ppdm2JiraDate (Get-ppdm2JiraProp $raw 'createTime') }

            $title = '[PPDM:{0}] Backup {1} — {2} ({3})' -f $InstanceId, $status, $assetName, $category

            $lines.Add(('PPDM instance: {0}  •  Severity: {1}' -f $InstanceId, $severity))
            $lines.Add(('Asset: {0}  •  Activity: {1} ({2})' -f $assetName, $id, $status))
            $policy = Get-ppdm2JiraDisplayValue (Get-ppdm2JiraProp $raw 'protectionPolicy')
            if ($policy) { $lines.Add(('Policy: {0}' -f $policy)) }
            if ($result) {
                $err = Get-ppdm2JiraProp $result 'error'
                if ($err) {
                    $reason = Get-ppdm2JiraProp $err 'reason'
                    $detail = Get-ppdm2JiraProp $err 'detailedDescription'
                    $remed  = Get-ppdm2JiraProp $err 'remediation'
                    if ($reason) { $lines.Add(('Reason: {0}'      -f $reason)) }
                    if ($detail) { $lines.Add(('Error: {0}'       -f $detail)) }
                    if ($remed)  { $lines.Add(('Remediation: {0}' -f $remed)) }
                }
            }

            $assetRef = [pscustomobject]@{
                name = $assetName
                id   = if ($asset) { [string](Get-ppdm2JiraProp $asset 'id') } else { $null }
                host = Get-ppdm2JiraDisplayValue $hostObj
            }
            $deepLink = if ($uiRoot) { '{0}/#/administration/monitoring/activities?id={1}' -f $uiRoot, $id } else { $null }
            $links = [pscustomobject]@{
                id       = $id
                kind     = 'activity'
                jobId    = $id          # activity id is the job id for correlation
                deepLink = $deepLink    # UI route best-effort — confirm in M0 spike
                apiPath  = '/api/v2/activities/{0}' -f $id
            }
        }
        else {
            $id        = [string](Get-ppdm2JiraProp $raw 'id')
            $severity  = [string](Get-ppdm2JiraProp $raw 'severity')
            $category  = Get-ppdm2JiraDisplayValue (Get-ppdm2JiraProp $raw 'category')
            $subcat    = [string](Get-ppdm2JiraProp $raw 'subcategory')
            $message   = [string](Get-ppdm2JiraProp $raw 'message')
            $resource  = Get-ppdm2JiraProp $raw 'resource'
            $assetName = Get-ppdm2JiraDisplayValue $resource
            $occurred  = ConvertTo-ppdm2JiraDate (Get-ppdm2JiraProp $raw 'postedTime')
            if (-not $occurred) { $occurred = ConvertTo-ppdm2JiraDate (Get-ppdm2JiraProp $raw 'lastOccurrenceTime') }

            $title = '[PPDM:{0}] {1} {2} — {3}' -f $InstanceId, $severity, $category, $message

            $lines.Add(('PPDM instance: {0}  •  Severity: {1}' -f $InstanceId, $severity))
            if ($assetName) { $lines.Add(('Resource: {0}' -f $assetName)) }
            if ($message)   { $lines.Add(('Message: {0}'  -f $message)) }
            $detail = Get-ppdm2JiraProp $raw 'detailedDescription'
            if ($detail) { $lines.Add(('Detail: {0}' -f $detail)) }
            $respAction = Get-ppdm2JiraProp $raw 'responseAction'
            if ($respAction) { $lines.Add(('Action: {0}' -f (Get-ppdm2JiraDisplayValue $respAction))) }

            $assetRef = [pscustomobject]@{
                name = $assetName
                id   = if ($resource) { [string](Get-ppdm2JiraProp $resource 'id') }   else { $null }
                type = if ($resource) { [string](Get-ppdm2JiraProp $resource 'type') } else { $null }
            }
            $resUrl = Get-ppdm2JiraProp $resource 'url'
            $deepLink = if ($resUrl) { [string]$resUrl }
                        elseif ($uiRoot) { '{0}/#/administration/alerts?id={1}' -f $uiRoot, $id }
                        else { $null }
            $links = [pscustomobject]@{
                id       = $id
                kind     = 'alert'
                jobId    = [string](Get-ppdm2JiraProp $raw 'jobId')    # correlate alert<->activity (design open item #3)
                taskId   = [string](Get-ppdm2JiraProp $raw 'taskId')
                deepLink = $deepLink
                apiPath  = '/api/v2/alerts/{0}' -f $id
            }
        }

        if ($links.deepLink) { $lines.Add(('PPDM link: {0}' -f $links.deepLink)) }

        [pscustomobject]@{
            PSTypeName  = 'ppdm2Jira.Incident'
            dedupKey    = 'ppdm:{0}:{1}' -f $InstanceId, $id   # raw; JiraClient sanitises to label (contract §4)
            source      = $Source
            instanceId  = $InstanceId
            severity    = $severity
            title       = Limit-ppdm2JiraText $title 255
            body        = ($lines -join [Environment]::NewLine)
            category    = $category
            subcategory = $subcat
            assetRef    = $assetRef
            occurredAt  = $occurred
            ppdmLinks   = $links
        }
    }
}
