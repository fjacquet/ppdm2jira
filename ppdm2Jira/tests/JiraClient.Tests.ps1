BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'ppdm2Jira.psd1') -Force
    # SecretManagement not guaranteed in CI: stub Get-Secret so the wrapper resolves/mocks.
    # PSReviewUnusedParameter: $Name and $AsPlainText are required to match the real cmdlet
    # signature so Pester Mock can intercept calls; they are intentionally unused in the stub.
    function global:Get-Secret {
        [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSReviewUnusedParameter', '')]
        param([string]$Name, [switch]$AsPlainText)
    }
}
AfterAll {
    Remove-Item Function:\Get-Secret -ErrorAction SilentlyContinue
}

Describe 'New-ppdm2JiraClient' {
    It 'builds a Basic auth header for Cloud and never retains the secret' {
        InModuleScope ppdm2Jira {
            Mock Get-ppdm2JiraSecret { 'tok123' }
            $c = New-ppdm2JiraClient -Config @{ baseUrl='https://x.atlassian.net'; apiVersion=3; authMode='basic'; bodyFormat='adf'; email='a@b.c'; secretName='s' }
            $c.apiBase    | Should -Be '/rest/api/3'
            $c.authHeader | Should -BeLike 'Basic *'
            $expected = 'Basic ' + [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes('a@b.c:tok123'))
            $c.authHeader | Should -Be $expected
            ($c.PSObject.Properties.Name) | Should -Not -Contain 'secret'
        }
    }
    It 'builds a Bearer header and v2 base for Data Center' {
        InModuleScope ppdm2Jira {
            Mock Get-ppdm2JiraSecret { 'pat999' }
            $c = New-ppdm2JiraClient -Config @{ baseUrl='https://jira.dc.local'; apiVersion=2; authMode='bearer'; bodyFormat='wiki'; secretName='s' }
            $c.apiBase    | Should -Be '/rest/api/2'
            $c.authHeader | Should -Be 'Bearer pat999'
        }
    }
    It 'exposes a typed integer apiVersion on the client object' {
        InModuleScope ppdm2Jira {
            Mock Get-ppdm2JiraSecret { 'pat999' }
            $c = New-ppdm2JiraClient -Config @{ baseUrl='https://jira.dc.local'; apiVersion=2; authMode='bearer'; bodyFormat='wiki'; secretName='s' }
            $c.apiVersion | Should -Be 2
            $c.apiVersion | Should -BeOfType [int]
        }
    }
    It 'throws on an unknown bodyFormat' {
        InModuleScope ppdm2Jira {
            Mock Get-ppdm2JiraSecret { 'pat999' }
            { New-ppdm2JiraClient -Config @{ baseUrl='https://jira.dc.local'; apiVersion=2; authMode='bearer'; bodyFormat='markdown'; secretName='s' } } |
                Should -Throw "*Unknown bodyFormat*"
        }
    }
}

Describe 'Get-ppdm2JiraBody' {
    It 'renders ADF for adf clients' {
        InModuleScope ppdm2Jira {
            $c = [pscustomobject]@{ bodyFormat = 'adf' }
            $doc = Get-ppdm2JiraBody -Client $c -Text "line1`nline2"
            $doc.type | Should -Be 'doc'
            $doc.content.Count | Should -Be 2
            $doc.content[0].content[0].text | Should -Be 'line1'
        }
    }
    It 'returns a plain string for wiki clients' {
        InModuleScope ppdm2Jira {
            $c = [pscustomobject]@{ bodyFormat = 'wiki' }
            Get-ppdm2JiraBody -Client $c -Text "a`nb" | Should -Be "a`nb"
        }
    }
}

Describe 'Invoke-ppdm2JiraRequest' {
    It 'retries on 503 then returns the 200 result' {
        InModuleScope ppdm2Jira {
            $script:calls = 0
            Mock Start-Sleep {}
            Mock Invoke-ppdm2JiraHttp {
                $script:calls++
                if ($script:calls -eq 1) { return [pscustomobject]@{ StatusCode = 503; Headers = @{}; Content = $null } }
                return [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = [pscustomobject]@{ ok = $true } }
            }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; tlsValidate=$true }
            $r = Invoke-ppdm2JiraRequest -Client $c -Method GET -Path '/myself'
            $script:calls | Should -Be 2
            $r.StatusCode | Should -Be 200
            $r.Content.ok | Should -BeTrue
        }
    }
    It 'honors the Retry-After header on 429 then returns the 200 result (DC v2)' {
        InModuleScope ppdm2Jira {
            $script:calls = 0
            $script:slept = $null
            Mock Start-Sleep { $script:slept = $Seconds }
            Mock Invoke-ppdm2JiraHttp {
                $script:calls++
                if ($script:calls -eq 1) { return [pscustomobject]@{ StatusCode = 429; Headers = @{ 'Retry-After' = '7' }; Content = $null } }
                return [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = [pscustomobject]@{ ok = $true } }
            }
            $c = [pscustomobject]@{ baseUrl='https://jira.dc'; apiBase='/rest/api/2'; authHeader='Bearer z'; tlsValidate=$true }
            $r = Invoke-ppdm2JiraRequest -Client $c -Method GET -Path '/myself'
            $script:calls | Should -Be 2
            $script:slept | Should -Be 7          # took the Retry-After value, not the backoff default
            $r.StatusCode | Should -Be 200
        }
    }
    It 'gives up after MaxRetries when 429 persists' {
        InModuleScope ppdm2Jira {
            Mock Start-Sleep {}
            Mock Invoke-ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 429; Headers = @{ 'Retry-After' = '1' }; Content = $null } }
            $c = [pscustomobject]@{ baseUrl='https://jira.dc'; apiBase='/rest/api/2'; authHeader='Bearer z'; tlsValidate=$true }
            $r = Invoke-ppdm2JiraRequest -Client $c -Method GET -Path '/myself' -MaxRetries 2
            $r.StatusCode | Should -Be 429
            Should -Invoke Invoke-ppdm2JiraHttp -Times 3 -Exactly   # 1 initial + 2 retries
        }
    }
}

Describe 'Find-ppdm2JiraOpenIssue' {
    It 'posts to /search/jql for Cloud and returns the first key' {
        InModuleScope ppdm2Jira {
            $script:path = $null
            Mock Invoke-ppdm2JiraHttp {
                $script:path = $Uri
                [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = [pscustomobject]@{ issues = @([pscustomobject]@{ key = 'OPS-1' }) } }
            }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; apiVersion=3; authHeader='Basic z'; tlsValidate=$true }
            $key = Find-ppdm2JiraOpenIssue -Client $c -Project 'OPS' -Label 'ppdm_prod1_a1'
            $key | Should -Be 'OPS-1'
            $script:path | Should -BeLike '*/rest/api/3/search/jql'
        }
    }
    It 'returns $null when no open issue matches' {
        InModuleScope ppdm2Jira {
            Mock Invoke-ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = [pscustomobject]@{ issues = @() } } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; apiVersion=3; authHeader='Basic z'; tlsValidate=$true }
            Find-ppdm2JiraOpenIssue -Client $c -Project 'OPS' -Label 'ppdm_prod1_a1' | Should -BeNullOrEmpty
        }
    }
    It 'uses /search for Data Center (v2)' {
        InModuleScope ppdm2Jira {
            $script:path = $null
            Mock Invoke-ppdm2JiraHttp { $script:path = $Uri; [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = [pscustomobject]@{ issues = @() } } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/2'; apiVersion=2; authHeader='Bearer z'; tlsValidate=$true }
            Find-ppdm2JiraOpenIssue -Client $c -Project 'OPS' -Label 'l' | Out-Null
            $script:path | Should -BeLike '*/rest/api/2/search'
        }
    }
    It 'searches both the dedup and jobId labels when a correlation label is supplied' {
        InModuleScope ppdm2Jira {
            $script:body = $null
            Mock Invoke-ppdm2JiraHttp { $script:body = $JsonBody; [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = [pscustomobject]@{ issues = @() } } }
            $c = [pscustomobject]@{ baseUrl='https://jira.dc'; apiBase='/rest/api/2'; apiVersion=2; authHeader='Bearer z'; tlsValidate=$true }
            Find-ppdm2JiraOpenIssue -Client $c -Project 'OPS' -Label 'ppdm_prod1_al-3' -CorrelationLabel 'ppdm_job_prod1_act-7' | Out-Null
            $script:body | Should -BeLike '*labels in*'
            $script:body | Should -BeLike '*ppdm_job_prod1_act-7*'
            $script:body | Should -BeLike '*ppdm_prod1_al-3*'
        }
    }
}

Describe 'New-ppdm2JiraIssue' {
    It 'returns the created key on 201' {
        InModuleScope ppdm2Jira {
            Mock Invoke-ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 201; Headers = @{}; Content = [pscustomobject]@{ key = 'BKP-42' } } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; bodyFormat='adf'; tlsValidate=$true }
            $target = [pscustomobject]@{ project='BKP'; issueType='Incident'; component='Backup Operations'; priorityId='1'; labels=@('ppdm') }
            $inc = [pscustomobject]@{ title='t'; body='b' }
            New-ppdm2JiraIssue -Client $c -Target $target -Incident $inc | Should -Be 'BKP-42'
        }
    }
    It 'throws on 401' {
        InModuleScope ppdm2Jira {
            Mock Invoke-ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 401; Headers = @{}; Content = $null } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; bodyFormat='adf'; tlsValidate=$true }
            $target = [pscustomobject]@{ project='BKP'; issueType='Incident'; priorityId='1'; labels=@(); component=$null }
            { New-ppdm2JiraIssue -Client $c -Target $target -Incident ([pscustomobject]@{ title='t'; body='b' }) } | Should -Throw
        }
    }
}

Describe 'Add-ppdm2JiraComment' {
    It 'returns $true on success' {
        InModuleScope ppdm2Jira {
            Mock Invoke-ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 201; Headers = @{}; Content = [pscustomobject]@{ id='10' } } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; bodyFormat='adf'; tlsValidate=$true }
            Add-ppdm2JiraComment -Client $c -Key 'OPS-1' -Text 'recurred' | Should -BeTrue
        }
    }
    It 'returns $false on 404 so the caller can fall back to create' {
        InModuleScope ppdm2Jira {
            Mock Invoke-ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 404; Headers = @{}; Content = $null } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; bodyFormat='adf'; tlsValidate=$true }
            Add-ppdm2JiraComment -Client $c -Key 'OPS-404' -Text 'x' | Should -BeFalse
        }
    }
}

Describe 'Invoke-ppdm2JiraHttp error mapping (PS7)' {
    # HttpResponseException only exists on PowerShell 7+. On Windows PowerShell 5.1
    # the equivalent path is WebException (covered by the generic catch); skip there.
    It 'maps an HttpResponseException to a StatusCode result instead of throwing' -Skip:($PSVersionTable.PSVersion.Major -lt 6) {
        InModuleScope ppdm2Jira {
            $msg = [System.Net.Http.HttpResponseMessage]::new([System.Net.HttpStatusCode]::NotFound)
            $ex  = [Microsoft.PowerShell.Commands.HttpResponseException]::new('404 Not Found', $msg)
            Mock Invoke-WebRequest { throw $ex } -ModuleName ppdm2Jira
            $r = Invoke-ppdm2JiraHttp -Uri 'https://x/rest/api/3/issue/OPS-1/comment' -Method POST -Headers @{ Authorization = 'Basic z' } -JsonBody '{}'
            $r.StatusCode | Should -Be 404
        }
    }
}

Describe 'Invoke-ppdm2JiraHttp TLS opt-out (PS7)' {
    # -SkipCertificateCheck only exists on PowerShell 7+ (HttpClient-based Invoke-WebRequest,
    # which ignores the ServicePointManager callback that the 5.1/Desktop path uses); skip on 5.1.
    It 'passes -SkipCertificateCheck to Invoke-WebRequest when a client disables tlsValidate' -Skip:($PSVersionTable.PSEdition -ne 'Core') {
        InModuleScope ppdm2Jira {
            $script:skipped = $null
            Mock Invoke-WebRequest {
                $script:skipped = [bool]$SkipCertificateCheck
                [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = '{"ok":true}' }
            }
            $c = [pscustomobject]@{ baseUrl='https://jira.dc'; apiBase='/rest/api/2'; apiVersion=2; authHeader='Bearer z'; tlsValidate=$false }
            $r = Invoke-ppdm2JiraRequest -Client $c -Method GET -Path '/myself' 3>$null   # 3>$null silences the deliberate skip warning
            $script:skipped | Should -BeTrue
            $r.StatusCode   | Should -Be 200
        }
    }
    It 'does not skip certificate checks when tlsValidate is on' -Skip:($PSVersionTable.PSEdition -ne 'Core') {
        InModuleScope ppdm2Jira {
            $script:skipped = $null
            Mock Invoke-WebRequest {
                $script:skipped = [bool]$SkipCertificateCheck
                [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = '{"ok":true}' }
            }
            $c = [pscustomobject]@{ baseUrl='https://jira.dc'; apiBase='/rest/api/2'; apiVersion=2; authHeader='Bearer z'; tlsValidate=$true }
            Invoke-ppdm2JiraRequest -Client $c -Method GET -Path '/myself' | Out-Null
            $script:skipped | Should -BeFalse
        }
    }
}

Describe 'Set-ppdm2JiraRemoteLink' {
    It 'returns $true when the remote link is created (status < 400)' {
        InModuleScope ppdm2Jira {
            Mock Invoke-ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 201; Headers = @{}; Content = [pscustomobject]@{ id = 1 } } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; tlsValidate=$true }
            Set-ppdm2JiraRemoteLink -Client $c -Key 'OPS-1' -GlobalId 'ppdm_prod1_a1' -Url 'https://prod1/x' -Title 'PPDM prod1 a1' | Should -BeTrue
        }
    }
    It 'sends a Data-Center-safe payload (globalId, application, relationship, object)' {
        InModuleScope ppdm2Jira {
            $script:body = $null
            Mock Invoke-ppdm2JiraHttp { $script:body = $JsonBody; [pscustomobject]@{ StatusCode = 201; Headers = @{}; Content = [pscustomobject]@{ id = 1 } } }
            $c = [pscustomobject]@{ baseUrl='https://jira.dc'; apiBase='/rest/api/2'; authHeader='Bearer z'; tlsValidate=$true }
            Set-ppdm2JiraRemoteLink -Client $c -Key 'OPS-1' -GlobalId 'ppdm_prod1_a1' -Url 'https://prod1/x' -Title 'PPDM prod1 a1' | Out-Null
            $obj = $script:body | ConvertFrom-Json
            $obj.globalId     | Should -Be 'ppdm_prod1_a1'
            $obj.relationship | Should -Not -BeNullOrEmpty
            $obj.application.name | Should -Not -BeNullOrEmpty
            $obj.object.url   | Should -Be 'https://prod1/x'
            $obj.object.title | Should -Be 'PPDM prod1 a1'
        }
    }
    It 'returns $false when the remote link call fails (status >= 400)' {
        InModuleScope ppdm2Jira {
            Mock Invoke-ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 500; Headers = @{}; Content = $null } }
            Mock Start-Sleep {}
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; tlsValidate=$true }
            Set-ppdm2JiraRemoteLink -Client $c -Key 'OPS-1' -GlobalId 'ppdm_prod1_a1' -Url 'https://prod1/x' -Title 'PPDM prod1 a1' | Should -BeFalse
        }
    }
}

Describe 'New-ppdm2JiraIssueWithLink' {
    It 'creates the issue, attaches the remote link with the sanitised globalId, and returns the key' {
        InModuleScope ppdm2Jira {
            Mock New-ppdm2JiraIssue { 'BKP-7' }
            $script:gid = $null; $script:url = $null; $script:title = $null
            Mock Set-ppdm2JiraRemoteLink { $script:gid = $GlobalId; $script:url = $Url; $script:title = $Title; $true }
            $c = [pscustomobject]@{ baseUrl='https://jira.dc'; apiBase='/rest/api/2'; apiVersion=2; authHeader='Bearer z'; bodyFormat='wiki'; tlsValidate=$true }
            $target = [pscustomobject]@{ project='BKP'; issueType='Incident'; component=$null; priorityId='1'; labels=@('ppdm') }
            $inc = [pscustomobject]@{ title='t'; body='b'; dedupKey='ppdm:prod1:act-9'
                                      ppdmLinks=[pscustomobject]@{ id='act-9'; deepLink='https://prod1/x' } }
            $key = New-ppdm2JiraIssueWithLink -Client $c -Target $target -Incident $inc -InstanceId 'prod1'
            $key           | Should -Be 'BKP-7'
            $script:gid    | Should -Be 'ppdm_prod1_act-9'   # label-safe globalId stays in lockstep with the dedup label
            $script:url    | Should -Be 'https://prod1/x'
            $script:title  | Should -Be 'PPDM prod1 act-9'
            Should -Invoke New-ppdm2JiraIssue      -Times 1 -Exactly
            Should -Invoke Set-ppdm2JiraRemoteLink -Times 1 -Exactly
        }
    }
}
