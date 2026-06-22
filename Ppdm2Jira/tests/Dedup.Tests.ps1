BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'Ppdm2Jira.psd1') -Force
}

Describe 'Resolve-Ppdm2JiraAction' {
    It 'returns Comment with the existing key when an open issue is found' {
        InModuleScope Ppdm2Jira {
            Mock Find-Ppdm2JiraOpenIssue { 'OPS-7' }
            $inc = [pscustomobject]@{ dedupKey = 'ppdm:prod1:a1' }
            $target = [pscustomobject]@{ project = 'OPS' }
            $a = Resolve-Ppdm2JiraAction -Client ([pscustomobject]@{}) -Incident $inc -Target $target
            $a.Action | Should -Be 'Comment'
            $a.Key    | Should -Be 'OPS-7'
        }
    }
    It 'returns Create when no open issue is found, searching by sanitised label' {
        InModuleScope Ppdm2Jira {
            $script:label = $null
            Mock Find-Ppdm2JiraOpenIssue { $script:label = $Label; $null }
            $inc = [pscustomobject]@{ dedupKey = 'ppdm:prod1:a1' }
            $target = [pscustomobject]@{ project = 'OPS' }
            $a = Resolve-Ppdm2JiraAction -Client ([pscustomobject]@{}) -Incident $inc -Target $target
            $a.Action     | Should -Be 'Create'
            $a.Key        | Should -BeNullOrEmpty
            $script:label | Should -Be 'ppdm_prod1_a1'
        }
    }
}
