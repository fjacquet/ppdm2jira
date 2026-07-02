$script:ModuleRoot = Split-Path -Parent $PSScriptRoot
Import-Module (Join-Path $script:ModuleRoot 'ppdm2Jira.psd1') -Force

InModuleScope ppdm2Jira {
    BeforeAll {
        $script:routing = @{
            rules = @(
                @{ match = @{ source = 'activity'; severity = 'CRITICAL' }
                   project = 'BKP'; issueType = 'Incident'; component = 'Backup Operations'
                   labels = @('backup'); priority = @{ CRITICAL = '1'; WARNING = '3' } }
            )
            default = @{ project = 'OPS'; issueType = 'Task'; component = $null
                         labels = @(); priority = @{ CRITICAL = '2'; WARNING = '3' } }
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
            $t = Resolve-ppdm2JiraTarget -Incident (New-Inc -source 'activity' -severity 'CRITICAL' -category 'PROTECT' -dedup 'ppdm:prod1:act-1') -RoutingTable $script:routing
            $t.project    | Should -Be 'BKP'
            $t.priorityId | Should -Be '1'
            $t.labels     | Should -Contain 'ppdm_prod1_act-1'
            $t.labels     | Should -Contain 'source_activity'
            $t.labels     | Should -Contain 'cat_protect'
        }
        It 'falls back to default when nothing matches' {
            $t = Resolve-ppdm2JiraTarget -Incident (New-Inc -source 'alert' -severity 'WARNING' -category 'OTHER' -dedup 'ppdm:prod1:al-9') -RoutingTable $script:routing
            $t.project    | Should -Be 'OPS'
            $t.priorityId | Should -Be '3'
            $t.labels | Should -Contain 'source_alert'
            $t.labels | Should -Contain 'cat_other'
        }
        It 'resolves exactly the documented target shape (ADR-0004 as amended 2026-07-02)' {
            $t = Resolve-ppdm2JiraTarget -Incident (New-Inc -source 'activity' -severity 'CRITICAL' -category 'PROTECT' -dedup 'ppdm:prod1:act-1') -RoutingTable $script:routing
            # Locks the shape to { project, issueType, component, priorityId, labels } -- in particular
            # the never-consumed assignee-group field removed in v0.4.0 must not reappear.
            ($t.PSObject.Properties.Name | Sort-Object) | Should -Be @('component', 'issueType', 'labels', 'priorityId', 'project')
        }
        It 'sanitises a category containing spaces/colons via the shared label helper' {
            $t = Resolve-ppdm2JiraTarget -Incident (New-Inc -source 'alert' -severity 'WARNING' -category 'protection copy:extra' -dedup 'ppdm:prod1:al-3') -RoutingTable $script:routing
            $t.labels | Should -Contain 'cat_protection_copy_extra'
        }
    }
}
