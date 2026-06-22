$script:ModuleRoot = Split-Path -Parent $PSScriptRoot
Import-Module (Join-Path $script:ModuleRoot 'ppdm2Jira.psd1') -Force

InModuleScope ppdm2Jira {
    Describe 'ConvertTo-ppdm2JiraIncident — activity' {
        BeforeAll {
            $fixturePath = Join-Path $PSScriptRoot 'fixtures'
            $raw = Get-Content -Raw (Join-Path $fixturePath 'activity-failed.json') | ConvertFrom-Json
            $script:inc = $raw | ConvertTo-ppdm2JiraIncident -Source activity -InstanceId prod1 -PpdmBaseUrl 'https://prod1.ppdm.example/api/v2'
        }
        It 'maps FAILED to CRITICAL severity' { $script:inc.severity | Should -Be 'CRITICAL' }
        It 'builds a namespaced dedup key' { $script:inc.dedupKey | Should -Be 'ppdm:prod1:act-12345' }
        It 'sets source to activity' { $script:inc.source | Should -Be 'activity' }
        It 'includes the error detail in the body' { $script:inc.body | Should -Match 'VADP mount timed out' }
        It 'carries the PSTypeName' { $script:inc.PSObject.TypeNames | Should -Contain 'ppdm2Jira.Incident' }
    }

    Describe 'ConvertTo-ppdm2JiraIncident — alert' {
        BeforeAll {
            $fixturePath = Join-Path $PSScriptRoot 'fixtures'
            $raw = Get-Content -Raw (Join-Path $fixturePath 'alert-critical.json') | ConvertFrom-Json
            $script:inc = $raw | ConvertTo-ppdm2JiraIncident -Source alert -InstanceId prod1 -PpdmBaseUrl 'https://prod1.ppdm.example/api/v2'
        }
        It 'keeps CRITICAL severity from the alert' { $script:inc.severity | Should -Be 'CRITICAL' }
        It 'builds the alert dedup key' { $script:inc.dedupKey | Should -Be 'ppdm:prod1:alert-a1b2' }
    }

    Describe 'ConvertTo-ppdm2JiraIncident — robustness' {
        It 'does not throw on a missing result/error under StrictMode' {
            $raw = [pscustomobject]@{ id = 'act-1'; result = [pscustomobject]@{ status = 'FAILED' } }
            { $raw | ConvertTo-ppdm2JiraIncident -Source activity -InstanceId prod1 } | Should -Not -Throw
        }
        It 'truncates a long title to 255 chars' {
            $long = 'x' * 400
            $raw  = [pscustomobject]@{ id = 'a'; severity = 'WARNING'; category = 'C'; message = $long }
            $inc  = $raw | ConvertTo-ppdm2JiraIncident -Source alert -InstanceId prod1
            $inc.title.Length | Should -BeLessOrEqual 255
        }
    }
}
