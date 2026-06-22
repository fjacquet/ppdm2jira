<#
.SYNOPSIS
    Auth-abstracted Jira client for Cloud (v3/Basic/ADF) and Data Center (v2/Bearer/wiki).
.DESCRIPTION
    One config selects flavour; only auth and body-format branch. All network I/O funnels
    through Invoke-Ppdm2JiraHttp (the single mockable boundary). Operations live in the same
    file (see find/create/comment/remotelink). Secrets are fetched at client construction and
    never stored on the returned object (NFR-3, ADR-0006).
#>
Set-StrictMode -Version Latest

function Get-Ppdm2JiraSecret {
    [OutputType([string])]
    param([Parameter(Mandatory)][string] $Name)
    if (-not (Get-Command Get-Secret -ErrorAction SilentlyContinue)) {
        throw "SecretManagement cmdlet 'Get-Secret' not found. Install Microsoft.PowerShell.SecretManagement and register a vault."
    }
    return [string](Get-Secret -Name $Name -AsPlainText)
}

function New-Ppdm2JiraClient {
    [OutputType([pscustomobject])]
    param([Parameter(Mandatory)][hashtable] $Config)

    $secret = Get-Ppdm2JiraSecret -Name $Config.secretName
    switch ($Config.authMode) {
        'basic' {
            $pair = '{0}:{1}' -f $Config.email, $secret
            $auth = 'Basic ' + [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($pair))
        }
        'bearer' { $auth = 'Bearer ' + $secret }
        default  { throw "Unknown authMode '$($Config.authMode)' (expected 'basic' or 'bearer')." }
    }
    $apiBase = if ([int]$Config.apiVersion -eq 3) { '/rest/api/3' } else { '/rest/api/2' }
    $tls = if ($Config.ContainsKey('tlsValidate')) { [bool]$Config.tlsValidate } else { $true }

    [pscustomobject]@{
        baseUrl     = $Config.baseUrl
        apiBase     = $apiBase
        authMode    = $Config.authMode
        bodyFormat  = $Config.bodyFormat
        authHeader  = $auth
        tlsValidate = $tls
    }
}

function ConvertTo-Ppdm2JiraAdf {
    [OutputType([System.Collections.Specialized.OrderedDictionary])]
    param([string] $Text)
    $paras = New-Object System.Collections.Generic.List[object]
    foreach ($line in ($Text -split "`r?`n")) {
        $t = if ([string]::IsNullOrEmpty($line)) { ' ' } else { $line }
        $paras.Add([ordered]@{ type = 'paragraph'; content = @([ordered]@{ type = 'text'; text = $t }) })
    }
    return [ordered]@{ type = 'doc'; version = 1; content = $paras.ToArray() }
}

function Get-Ppdm2JiraBody {
    param([Parameter(Mandatory)] $Client, [string] $Text)
    if ($Client.bodyFormat -eq 'adf') { return (ConvertTo-Ppdm2JiraAdf -Text $Text) }
    return $Text
}

function Invoke-Ppdm2JiraHttp {
    <# Integration boundary. Returns @{StatusCode;Headers;Content}; never throws for HTTP error codes. #>
    [OutputType([pscustomobject])]
    param(
        [Parameter(Mandatory)][string] $Uri,
        [Parameter(Mandatory)][string] $Method,
        [Parameter(Mandatory)][hashtable] $Headers,
        [string] $JsonBody,
        [switch] $SkipTls
    )
    $oldCallback = [System.Net.ServicePointManager]::ServerCertificateValidationCallback
    if ($SkipTls) {
        Write-Warning 'TLS validation disabled for this Jira request (explicit opt-out).'
        [System.Net.ServicePointManager]::ServerCertificateValidationCallback = { $true }
    }
    try {
        $params = @{ Uri = $Uri; Method = $Method; Headers = $Headers; UseBasicParsing = $true; ErrorAction = 'Stop' }
        if ($JsonBody) { $params.Body = $JsonBody; $params.ContentType = 'application/json' }
        $resp = Invoke-WebRequest @params
        $content = if ($resp.Content) { $resp.Content | ConvertFrom-Json } else { $null }
        return [pscustomobject]@{ StatusCode = [int]$resp.StatusCode; Headers = $resp.Headers; Content = $content }
    }
    catch [System.Net.WebException] {
        $r = $_.Exception.Response
        if ($null -ne $r) {
            $reader = New-Object System.IO.StreamReader($r.GetResponseStream())
            $raw = $reader.ReadToEnd()
            $content = if ($raw) { try { $raw | ConvertFrom-Json } catch { $raw } } else { $null }
            return [pscustomobject]@{ StatusCode = [int]$r.StatusCode; Headers = $r.Headers; Content = $content }
        }
        throw
    }
    finally {
        [System.Net.ServicePointManager]::ServerCertificateValidationCallback = $oldCallback
    }
}

function Invoke-Ppdm2JiraRequest {
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

    $attempt = 0
    while ($true) {
        $attempt++
        $r = Invoke-Ppdm2JiraHttp -Uri $uri -Method $Method -Headers $headers -JsonBody $json -SkipTls:(-not $Client.tlsValidate)
        $retryable = @(429, 500, 502, 503, 504)
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
