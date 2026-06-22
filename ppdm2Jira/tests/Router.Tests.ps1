$script:ModuleRoot = Split-Path -Parent $PSScriptRoot
Import-Module (Join-Path $script:ModuleRoot 'ppdm2Jira.psd1') -Force

InModuleScope ppdm2Jira {
    BeforeAll {
        $script:routing = @{
            rules = @(
                @{ match = @{ source = 'activity'; severity = 'CRITICAL' }
                   project = 'BKP'; issueType = 'Incident'; component = 'Backup Operations'
                   assigneeGroup = 'backup-team'; labels = @('backup'); priority = @{ CRITICAL = '1'; WARNING = '3' } }
            )
            default = @{ project = 'OPS'; issueType = 'Task'; component = $null
                         assigneeGroup = $null; labels = @(); priority = @{ CRITICAL = '2'; WARNING = '3' } }
        }
        # PSUseShouldProcessForStateChangingFunctions: test-only factory helper; creates an
        # in-memory object only, no system state changes occur.
        function New-Inc {
            [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
            param($source, $severity, $category, $dedup)
            [pscustomobject]@{ PSTypeName = 'ppdm2Jira.Incident'; source = $source; severity = $severity
                               category = $category; dedupKey = $dedup }
        }
    }

    Describe 'ConvertTo-ppdm2JiraLabel' {
        It 'replaces colons and spaces with underscores' {
            ConvertTo-ppdm2JiraLabel 'ppdm:prod 1:a1b2' | Should -Be 'ppdm_prod_1_a1b2'
        }
    }

    Describe 'Resolve-ppdm2JiraTarget' {
        It 'routes a matching incident to the matched rule' {
            $t = Resolve-ppdm2JiraTarget -Incident (New-Inc 'activity' 'CRITICAL' 'PROTECT' 'ppdm:prod1:act-1') -RoutingTable $script:routing
            $t.project    | Should -Be 'BKP'
            $t.priorityId | Should -Be '1'
            $t.labels     | Should -Contain 'ppdm_prod1_act-1'
            $t.labels     | Should -Contain 'source_activity'
            $t.labels     | Should -Contain 'cat_protect'
        }
        It 'falls back to default when nothing matches' {
            $t = Resolve-ppdm2JiraTarget -Incident (New-Inc 'alert' 'WARNING' 'OTHER' 'ppdm:prod1:al-9') -RoutingTable $script:routing
            $t.project    | Should -Be 'OPS'
            $t.priorityId | Should -Be '3'
            $t.labels | Should -Contain 'source_alert'
            $t.labels | Should -Contain 'cat_other'
        }
    }
}
