BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'Ppdm2Jira.psd1') -Force
    # PPDM-pwsh is not installed in CI: provide stubs so the module's cmdlets resolve and are mockable.
    # PSReviewUnusedParameter + PSUseSingularNouns: params match real cmdlet signatures for Pester
    # Mock interception; plural nouns match the upstream PPDM-pwsh module naming convention.
    function global:Get-PPDMactivities {
        [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSReviewUnusedParameter', '')]
        [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
        param($filter, $pageSize)
    }
    function global:Get-PPDMalerts {
        [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSReviewUnusedParameter', '')]
        [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
        param($filter, $body)
    }
}
AfterAll {
    Remove-Item Function:\Get-PPDMactivities, Function:\Get-PPDMalerts -ErrorAction SilentlyContinue
}

Describe 'Get-Ppdm2JiraFailedBackups' {
    It 'builds a job-level filter with 24-hour UTC timestamp and pipes through the Normalizer' {
        InModuleScope Ppdm2Jira {
            $captured = $null
            Mock Get-PPDMactivities {
                $script:captured = $filter
                [pscustomobject]@{ id = 'act-1'; result = [pscustomobject]@{ status = 'FAILED' } }
            }
            $since = [datetime]::SpecifyKind([datetime]'2026-06-20T13:05:09', 'Utc')
            $out = Get-Ppdm2JiraFailedBackups -InstanceId prod1 -Since $since
            $script:captured | Should -Match 'result\.status in \("FAILED","OK_WITH_ERRORS"\)'
            $script:captured | Should -Match 'startTime ge "2026-06-20T13:05:09Z"'   # HH (24h), not hh
            $script:captured | Should -Match 'classType in \("JOB","JOB_GROUP"\)'
            $out.source | Should -Be 'activity'
        }
    }
}

Describe 'Get-Ppdm2JiraAlerts' {
    It 'builds a severity+postedTime filter and appends UnacknowledgedOnly' {
        InModuleScope Ppdm2Jira {
            $captured = $null
            Mock Get-PPDMalerts {
                $script:captured = $filter
                [pscustomobject]@{ id = 'al-1'; severity = 'CRITICAL'; category = 'PROTECTION'; message = 'm' }
            }
            $since = [datetime]::SpecifyKind([datetime]'2026-06-20T00:00:00', 'Utc')
            $out = Get-Ppdm2JiraAlerts -InstanceId prod1 -Since $since -UnacknowledgedOnly
            $script:captured | Should -Match 'severity in \("CRITICAL","WARNING"\)'
            $script:captured | Should -Match 'acknowledgement\.acknowledgeState eq "UNACKNOWLEDGED"'
            $out.source | Should -Be 'alert'
        }
    }
}
