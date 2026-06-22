BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'ppdm2Jira.psd1') -Force
}

Describe 'Resolve-ppdm2JiraAction' {
    It 'returns Comment with the existing key when an open issue is found' {
        InModuleScope ppdm2Jira {
            Mock Find-ppdm2JiraOpenIssue { 'OPS-7' }
            $inc = [pscustomobject]@{ dedupKey = 'ppdm:prod1:a1' }
            $target = [pscustomobject]@{ project = 'OPS' }
            $a = Resolve-ppdm2JiraAction -Client ([pscustomobject]@{}) -Incident $inc -Target $target
            $a.Action | Should -Be 'Comment'
            $a.Key    | Should -Be 'OPS-7'
        }
    }
    It 'returns Create when no open issue is found, searching by sanitised label' {
        InModuleScope ppdm2Jira {
            $script:label = $null
            Mock Find-ppdm2JiraOpenIssue { $script:label = $Label; $null }
            $inc = [pscustomobject]@{ dedupKey = 'ppdm:prod1:a1' }
            $target = [pscustomobject]@{ project = 'OPS' }
            $a = Resolve-ppdm2JiraAction -Client ([pscustomobject]@{}) -Incident $inc -Target $target
            $a.Action     | Should -Be 'Create'
            $a.Key        | Should -BeNullOrEmpty
            $script:label | Should -Be 'ppdm_prod1_a1'
        }
    }
}
