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
    It 'exports Invoke-Ppdm2JiraSync as the single public function' {
        $exported = (Get-Module Ppdm2Jira).ExportedFunctions
        $exported.Count | Should -Be 1
        $exported.Keys | Should -Contain 'Invoke-Ppdm2JiraSync'
    }
}
