BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'Ppdm2Jira.psd1') -Force
    # SecretManagement not guaranteed in CI: stub Get-Secret so the wrapper resolves/mocks.
    function global:Get-Secret { param([string]$Name, [switch]$AsPlainText) }
}
AfterAll {
    Remove-Item Function:\Get-Secret -ErrorAction SilentlyContinue
}

Describe 'New-Ppdm2JiraClient' {
    It 'builds a Basic auth header for Cloud and never retains the secret' {
        InModuleScope Ppdm2Jira {
            Mock Get-Ppdm2JiraSecret { 'tok123' }
            $c = New-Ppdm2JiraClient -Config @{ baseUrl='https://x.atlassian.net'; apiVersion=3; authMode='basic'; bodyFormat='adf'; email='a@b.c'; secretName='s' }
            $c.apiBase    | Should -Be '/rest/api/3'
            $c.authHeader | Should -BeLike 'Basic *'
            $expected = 'Basic ' + [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes('a@b.c:tok123'))
            $c.authHeader | Should -Be $expected
            ($c.PSObject.Properties.Name) | Should -Not -Contain 'secret'
        }
    }
    It 'builds a Bearer header and v2 base for Data Center' {
        InModuleScope Ppdm2Jira {
            Mock Get-Ppdm2JiraSecret { 'pat999' }
            $c = New-Ppdm2JiraClient -Config @{ baseUrl='https://jira.dc.local'; apiVersion=2; authMode='bearer'; bodyFormat='wiki'; secretName='s' }
            $c.apiBase    | Should -Be '/rest/api/2'
            $c.authHeader | Should -Be 'Bearer pat999'
        }
    }
}

Describe 'Get-Ppdm2JiraBody' {
    It 'renders ADF for adf clients' {
        InModuleScope Ppdm2Jira {
            $c = [pscustomobject]@{ bodyFormat = 'adf' }
            $doc = Get-Ppdm2JiraBody -Client $c -Text "line1`nline2"
            $doc.type | Should -Be 'doc'
            $doc.content.Count | Should -Be 2
            $doc.content[0].content[0].text | Should -Be 'line1'
        }
    }
    It 'returns a plain string for wiki clients' {
        InModuleScope Ppdm2Jira {
            $c = [pscustomobject]@{ bodyFormat = 'wiki' }
            Get-Ppdm2JiraBody -Client $c -Text "a`nb" | Should -Be "a`nb"
        }
    }
}

Describe 'Invoke-Ppdm2JiraRequest' {
    It 'retries on 503 then returns the 200 result' {
        InModuleScope Ppdm2Jira {
            $script:calls = 0
            Mock Start-Sleep {}
            Mock Invoke-Ppdm2JiraHttp {
                $script:calls++
                if ($script:calls -eq 1) { return [pscustomobject]@{ StatusCode = 503; Headers = @{}; Content = $null } }
                return [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = [pscustomobject]@{ ok = $true } }
            }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; tlsValidate=$true }
            $r = Invoke-Ppdm2JiraRequest -Client $c -Method GET -Path '/myself'
            $script:calls | Should -Be 2
            $r.StatusCode | Should -Be 200
            $r.Content.ok | Should -BeTrue
        }
    }
}

Describe 'Find-Ppdm2JiraOpenIssue' {
    It 'posts to /search/jql for Cloud and returns the first key' {
        InModuleScope Ppdm2Jira {
            $script:path = $null
            Mock Invoke-Ppdm2JiraHttp {
                $script:path = $Uri
                [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = [pscustomobject]@{ issues = @([pscustomobject]@{ key = 'OPS-1' }) } }
            }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; tlsValidate=$true }
            $key = Find-Ppdm2JiraOpenIssue -Client $c -Project 'OPS' -Label 'ppdm_prod1_a1'
            $key | Should -Be 'OPS-1'
            $script:path | Should -BeLike '*/rest/api/3/search/jql'
        }
    }
    It 'returns $null when no open issue matches' {
        InModuleScope Ppdm2Jira {
            Mock Invoke-Ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = [pscustomobject]@{ issues = @() } } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; tlsValidate=$true }
            Find-Ppdm2JiraOpenIssue -Client $c -Project 'OPS' -Label 'ppdm_prod1_a1' | Should -BeNullOrEmpty
        }
    }
    It 'uses /search for Data Center (v2)' {
        InModuleScope Ppdm2Jira {
            $script:path = $null
            Mock Invoke-Ppdm2JiraHttp { $script:path = $Uri; [pscustomobject]@{ StatusCode = 200; Headers = @{}; Content = [pscustomobject]@{ issues = @() } } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/2'; authHeader='Bearer z'; tlsValidate=$true }
            Find-Ppdm2JiraOpenIssue -Client $c -Project 'OPS' -Label 'l' | Out-Null
            $script:path | Should -BeLike '*/rest/api/2/search'
        }
    }
}

Describe 'New-Ppdm2JiraIssue' {
    It 'returns the created key on 201' {
        InModuleScope Ppdm2Jira {
            Mock Invoke-Ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 201; Headers = @{}; Content = [pscustomobject]@{ key = 'BKP-42' } } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; bodyFormat='adf'; tlsValidate=$true }
            $target = [pscustomobject]@{ project='BKP'; issueType='Incident'; component='Backup Operations'; priorityId='1'; labels=@('ppdm') }
            $inc = [pscustomobject]@{ title='t'; body='b' }
            New-Ppdm2JiraIssue -Client $c -Target $target -Incident $inc | Should -Be 'BKP-42'
        }
    }
    It 'throws on 401' {
        InModuleScope Ppdm2Jira {
            Mock Invoke-Ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 401; Headers = @{}; Content = $null } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; bodyFormat='adf'; tlsValidate=$true }
            $target = [pscustomobject]@{ project='BKP'; issueType='Incident'; priorityId='1'; labels=@(); component=$null }
            { New-Ppdm2JiraIssue -Client $c -Target $target -Incident ([pscustomobject]@{ title='t'; body='b' }) } | Should -Throw
        }
    }
}

Describe 'Add-Ppdm2JiraComment' {
    It 'returns $true on success' {
        InModuleScope Ppdm2Jira {
            Mock Invoke-Ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 201; Headers = @{}; Content = [pscustomobject]@{ id='10' } } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; bodyFormat='adf'; tlsValidate=$true }
            Add-Ppdm2JiraComment -Client $c -Key 'OPS-1' -Text 'recurred' | Should -BeTrue
        }
    }
    It 'returns $false on 404 so the caller can fall back to create' {
        InModuleScope Ppdm2Jira {
            Mock Invoke-Ppdm2JiraHttp { [pscustomobject]@{ StatusCode = 404; Headers = @{}; Content = $null } }
            $c = [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; authHeader='Basic z'; bodyFormat='adf'; tlsValidate=$true }
            Add-Ppdm2JiraComment -Client $c -Key 'OPS-404' -Text 'x' | Should -BeFalse
        }
    }
}
