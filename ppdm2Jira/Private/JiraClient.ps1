<#
.SYNOPSIS
    Auth-abstracted Jira client for Cloud (v3/Basic/ADF) and Data Center (v2/Bearer/wiki).
.DESCRIPTION
    One config selects flavour; only auth and body-format branch. All network I/O funnels
    through Invoke-ppdm2JiraHttp (the single mockable boundary). Operations live in the same
    file (see find/create/comment/remotelink). Secrets are fetched at client construction and
    never stored on the returned object (NFR-3, ADR-0006).
#>
Set-StrictMode -Version Latest

function Get-ppdm2JiraSecret {
    [OutputType([string])]
    param([Parameter(Mandatory)][string] $Name)
    if (-not (Get-Command Get-Secret -ErrorAction SilentlyContinue)) {
        throw "SecretManagement cmdlet 'Get-Secret' not found. Install Microsoft.PowerShell.SecretManagement and register a vault."
    }
    return [string](Get-Secret -Name $Name -AsPlainText)
}

function New-ppdm2JiraClient {
    # PSUseShouldProcessForStateChangingFunctions: this is a pure factory function that
    # constructs and returns a configuration object; it makes no system state changes.
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [OutputType([pscustomobject])]
    param([Parameter(Mandatory)][hashtable] $Config)

    $secret = Get-ppdm2JiraSecret -Name $Config.secretName
    switch ($Config.authMode) {
        'basic' {
            $pair = '{0}:{1}' -f $Config.email, $secret
            $auth = 'Basic ' + [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($pair))
        }
        'bearer' { $auth = 'Bearer ' + $secret }
        default  { throw "Unknown authMode '$($Config.authMode)' (expected 'basic' or 'bearer')." }
    }
    # Validated the same way as authMode: a typo here would otherwise silently send a plain
    # string body to a v3 (ADF-only) API and surface later as a confusing Jira 400.
    switch ($Config.bodyFormat) {
        'adf'  { }
        'wiki' { }
        default { throw "Unknown bodyFormat '$($Config.bodyFormat)' (expected 'adf' or 'wiki')." }
    }
    $apiVersion = [int]$Config.apiVersion
    $apiBase = if ($apiVersion -eq 3) { '/rest/api/3' } else { '/rest/api/2' }
    $tls = if ($Config.ContainsKey('tlsValidate')) { [bool]$Config.tlsValidate } else { $true }

    [pscustomobject]@{
        baseUrl     = $Config.baseUrl
        apiBase     = $apiBase
        apiVersion  = $apiVersion
        authMode    = $Config.authMode
        bodyFormat  = $Config.bodyFormat
        authHeader  = $auth
        tlsValidate = $tls
    }
}

function ConvertTo-ppdm2JiraAdf {
    [OutputType([System.Collections.Specialized.OrderedDictionary])]
    param([string] $Text)
    $paras = New-Object System.Collections.Generic.List[object]
    foreach ($line in ($Text -split "`r?`n")) {
        $t = if ([string]::IsNullOrEmpty($line)) { ' ' } else { $line }
        $paras.Add([ordered]@{ type = 'paragraph'; content = @([ordered]@{ type = 'text'; text = $t }) })
    }
    return [ordered]@{ type = 'doc'; version = 1; content = $paras.ToArray() }
}

function Get-ppdm2JiraBody {
    param([Parameter(Mandatory)] $Client, [string] $Text)
    if ($Client.bodyFormat -eq 'adf') { return (ConvertTo-ppdm2JiraAdf -Text $Text) }
    return $Text
}

function Invoke-ppdm2JiraHttp {
    <# Integration boundary. Returns @{StatusCode;Headers;Content}; never throws for HTTP error codes. #>
    [OutputType([pscustomobject])]
    param(
        [Parameter(Mandatory)][string] $Uri,
        [Parameter(Mandatory)][string] $Method,
        [Parameter(Mandatory)][hashtable] $Headers,
        [string] $JsonBody,
        [switch] $SkipTls
    )
    # PS7's Invoke-WebRequest is HttpClient-based and ignores ServicePointManager's certificate
    # validation callback, so tlsValidate=$false silently did nothing there. -SkipCertificateCheck
    # is the PS7-native opt-out; Windows PowerShell 5.1 (Desktop) has no such switch and keeps the
    # callback-swap approach.
    $isCore = $PSVersionTable.PSEdition -eq 'Core'
    $oldCallback = [System.Net.ServicePointManager]::ServerCertificateValidationCallback
    if ($SkipTls) {
        Write-Warning 'TLS validation disabled for this Jira request (explicit opt-out).'
        if (-not $isCore) {
            [System.Net.ServicePointManager]::ServerCertificateValidationCallback = { $true }
        }
    }
    try {
        $params = @{ Uri = $Uri; Method = $Method; Headers = $Headers; UseBasicParsing = $true; ErrorAction = 'Stop' }
        if ($JsonBody) { $params.Body = $JsonBody; $params.ContentType = 'application/json' }
        if ($SkipTls -and $isCore) { $params.SkipCertificateCheck = $true }
        $resp = Invoke-WebRequest @params
        $content = if ($resp.Content) { $resp.Content | ConvertFrom-Json } else { $null }
        return [pscustomobject]@{ StatusCode = [int]$resp.StatusCode; Headers = $resp.Headers; Content = $content }
    }
    catch {
        $ex   = $_.Exception
        $resp = Get-ppdm2JiraProp $ex 'Response'
        if ($null -ne $resp) {
            if ($resp -is [System.Net.HttpWebResponse]) {
                # Windows PowerShell 5.1 path: WebException -> HttpWebResponse. Dispose both the
                # reader and the response so a busy error path can't leak the underlying socket.
                try {
                    $reader = New-Object System.IO.StreamReader($resp.GetResponseStream())
                    try {
                        $raw = $reader.ReadToEnd()
                    }
                    finally {
                        $reader.Dispose()
                    }
                    $code    = [int]$resp.StatusCode
                    $headers = $resp.Headers
                }
                finally {
                    $resp.Dispose()
                }
            }
            else {
                # PowerShell 7+ path: HttpResponseException -> HttpResponseMessage
                $code    = [int]$resp.StatusCode
                $hdrs    = @{}
                foreach ($h in $resp.Headers) { $hdrs[$h.Key] = ($h.Value -join ',') }
                $headers = $hdrs
                $ed  = Get-ppdm2JiraProp $_ 'ErrorDetails'
                $raw = if ($null -ne $ed) { Get-ppdm2JiraProp $ed 'Message' } else { $null }
            }
            $content = if ($raw) { try { $raw | ConvertFrom-Json } catch { $raw } } else { $null }
            return [pscustomobject]@{ StatusCode = $code; Headers = $headers; Content = $content }
        }
        throw
    }
    finally {
        [System.Net.ServicePointManager]::ServerCertificateValidationCallback = $oldCallback
    }
}

function Invoke-ppdm2JiraRequest {
    [OutputType([pscustomobject])]
    param(
        [Parameter(Mandatory)] $Client,
        [Parameter(Mandatory)][string] $Method,
        [Parameter(Mandatory)][string] $Path,
        $Body,
        [int] $MaxRetries = 3
    )
    $uri = $Client.baseUrl.TrimEnd('/') + $Client.apiBase + $Path
    $headers = @{ Authorization = $Client.authHeader; Accept = 'application/json' }
    $json = if ($PSBoundParameters.ContainsKey('Body') -and $null -ne $Body) { $Body | ConvertTo-Json -Depth 20 } else { $null }

    $retryable = @(429, 500, 502, 503, 504)
    $attempt = 0
    # Retries are bounded: 1 initial attempt + up to $MaxRetries retries (default 3 => at most 4 calls).
    while ($true) {
        $attempt++
        $r = Invoke-ppdm2JiraHttp -Uri $uri -Method $Method -Headers $headers -JsonBody $json -SkipTls:(-not $Client.tlsValidate)
        if (($r.StatusCode -in $retryable) -and ($attempt -le $MaxRetries)) {
            $delay = [int][math]::Min(30, [math]::Pow(2, $attempt))
            if ($r.Headers -and $r.Headers['Retry-After']) {
                $parsed = 0
                if ([int]::TryParse([string]$r.Headers['Retry-After'], [ref]$parsed)) { $delay = $parsed }
            }
            Start-Sleep -Seconds $delay
            continue
        }
        return $r
    }
}

function Find-ppdm2JiraOpenIssue {
    [OutputType([string])]
    param(
        [Parameter(Mandatory)] $Client,
        [Parameter(Mandatory)][string] $Project,
        [Parameter(Mandatory)][string] $Label,
        [string] $CorrelationLabel
    )
    # Match the per-event dedup label, or (when correlating) either it or the jobId label.
    $labelClause = if ($CorrelationLabel) {
        'labels in ("{0}", "{1}")' -f $Label, $CorrelationLabel
    }
    else {
        'labels = "{0}"' -f $Label
    }
    $jql  = 'project = "{0}" AND {1} AND statusCategory != Done ORDER BY created DESC' -f $Project, $labelClause
    $body = [ordered]@{ jql = $jql; fields = @('key', 'status'); maxResults = 1 }
    if ($Client.apiVersion -eq 3) {
        $res = Invoke-ppdm2JiraRequest -Client $Client -Method POST -Path '/search/jql' -Body $body
    }
    else {
        $body.startAt = 0
        $res = Invoke-ppdm2JiraRequest -Client $Client -Method POST -Path '/search' -Body $body
    }
    if ($res.StatusCode -in 401, 403) { throw "Jira auth/permission error ($($res.StatusCode)) searching for label '$Label'." }
    if ($res.StatusCode -ge 400) { throw "Jira search failed ($($res.StatusCode))." }
    $issues = Get-ppdm2JiraProp $res.Content 'issues'
    if ($issues -and @($issues).Count -gt 0) { return [string](@($issues)[0].key) }
    return $null
}

function New-ppdm2JiraIssue {
    # PSUseShouldProcessForStateChangingFunctions: issues a single POST to Jira as part of
    # a deliberately write-oriented sync pipeline; ShouldProcess would require CmdletBinding
    # on an internal helper that is fully controlled by the orchestrator's own -DryRun gate.
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [OutputType([string])]
    param(
        [Parameter(Mandatory)] $Client,
        [Parameter(Mandatory)] $Target,
        [Parameter(Mandatory)] $Incident
    )
    $fields = [ordered]@{
        project     = @{ key = $Target.project }
        issuetype   = @{ name = $Target.issueType }
        summary     = $Incident.title
        labels      = @($Target.labels)
        description = (Get-ppdm2JiraBody -Client $Client -Text $Incident.body)
    }
    if ($Target.priorityId) { $fields.priority   = @{ id = [string]$Target.priorityId } }
    if ($Target.component)  { $fields.components = @(@{ name = $Target.component }) }

    $res = Invoke-ppdm2JiraRequest -Client $Client -Method POST -Path '/issue' -Body @{ fields = $fields }
    if ($res.StatusCode -in 401, 403) { throw "Jira auth/permission error ($($res.StatusCode)) creating issue in $($Target.project)." }
    if ($res.StatusCode -ge 400) {
        $detail = if ($res.Content) { ($res.Content | ConvertTo-Json -Depth 5 -Compress) } else { '' }
        throw "Jira create failed ($($res.StatusCode)): $detail"
    }
    return [string](Get-ppdm2JiraProp $res.Content 'key')
}

function Add-ppdm2JiraComment {
    [OutputType([bool])]
    param(
        [Parameter(Mandatory)] $Client,
        [Parameter(Mandatory)][string] $Key,
        [Parameter(Mandatory)][string] $Text
    )
    $body = @{ body = (Get-ppdm2JiraBody -Client $Client -Text $Text) }
    $res  = Invoke-ppdm2JiraRequest -Client $Client -Method POST -Path ('/issue/{0}/comment' -f $Key) -Body $body
    if ($res.StatusCode -eq 404) { return $false }
    if ($res.StatusCode -in 401, 403) { throw "Jira auth/permission error ($($res.StatusCode)) commenting on $Key." }
    if ($res.StatusCode -ge 400) { throw "Jira comment failed ($($res.StatusCode)) on $Key." }
    return $true
}

function Set-ppdm2JiraRemoteLink {
    # PSUseShouldProcessForStateChangingFunctions: internal helper called only by the
    # orchestrator which owns the -DryRun gate; adding ShouldProcess here adds no safety.
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [OutputType([bool])]
    param(
        [Parameter(Mandatory)] $Client,
        [Parameter(Mandatory)][string] $Key,
        [Parameter(Mandatory)][string] $GlobalId,
        [string] $Url,
        [string] $Title
    )
    $obj = @{ title = $Title }
    if ($Url) { $obj.url = $Url }
    # Jira Data Center marks application + relationship as required on remotelink; both are optional on
    # Cloud, so sending them is safe for either flavour and avoids a 400 on DC (verified via context7).
    $body = @{
        globalId     = $GlobalId
        application  = @{ name = 'PowerProtect Data Manager'; type = 'com.dell.ppdm' }
        relationship = 'caused by'
        object       = $obj
    }
    $res = Invoke-ppdm2JiraRequest -Client $Client -Method POST -Path ('/issue/{0}/remotelink' -f $Key) -Body $body
    return ($res.StatusCode -lt 400)
}

function New-ppdm2JiraIssueWithLink {
    <#
    .SYNOPSIS
        Creates a Jira issue and attaches its traceability remote link in one step.
    .DESCRIPTION
        Composes New-ppdm2JiraIssue + Set-ppdm2JiraRemoteLink so every orchestrator create path
        (first-seen Create and the 404-fallback after a stale/deleted dedup target) gets the
        remote link consistently -- previously only the first path set it.
    #>
    # PSUseShouldProcessForStateChangingFunctions: internal helper called only by the
    # orchestrator, which owns the -DryRun gate; it composes two already-suppressed writes.
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [OutputType([string])]
    param(
        [Parameter(Mandatory)] $Client,
        [Parameter(Mandatory)] $Target,
        [Parameter(Mandatory)] $Incident,
        [Parameter(Mandatory)][string] $InstanceId
    )
    $key = New-ppdm2JiraIssue -Client $Client -Target $Target -Incident $Incident
    $gid = ConvertTo-ppdm2JiraLabel $Incident.dedupKey
    $url = Get-ppdm2JiraProp $Incident.ppdmLinks 'deepLink'
    $ppdmId = Get-ppdm2JiraProp $Incident.ppdmLinks 'id'
    $title = 'PPDM {0} {1}' -f $InstanceId, $ppdmId
    Set-ppdm2JiraRemoteLink -Client $Client -Key $key -GlobalId $gid -Url $url -Title $title | Out-Null
    return $key
}
