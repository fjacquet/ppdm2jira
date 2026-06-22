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
