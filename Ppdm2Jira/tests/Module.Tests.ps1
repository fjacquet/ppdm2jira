BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'Ppdm2Jira.psd1') -Force
}

Describe 'Module loads' {
    It 'imports without error and exposes the existing Normalizer privately' {
        InModuleScope Ppdm2Jira {
            Get-Command ConvertTo-Ppdm2JiraIncident -ErrorAction Stop | Should -Not -BeNullOrEmpty
        }
    }
    It 'exports nothing public yet' {
        (Get-Module Ppdm2Jira).ExportedFunctions.Count | Should -Be 0
    }
}
