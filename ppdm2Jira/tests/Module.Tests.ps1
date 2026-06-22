BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'ppdm2Jira.psd1') -Force
}

Describe 'Module loads' {
    It 'imports without error and exposes the existing Normalizer privately' {
        InModuleScope ppdm2Jira {
            Get-Command ConvertTo-ppdm2JiraIncident -ErrorAction Stop | Should -Not -BeNullOrEmpty
        }
    }
    It 'exports Invoke-ppdm2JiraSync as the single public function' {
        $exported = (Get-Module ppdm2Jira).ExportedFunctions
        $exported.Count | Should -Be 1
        $exported.Keys | Should -Contain 'Invoke-ppdm2JiraSync'
    }
}
