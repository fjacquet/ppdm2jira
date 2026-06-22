BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'Ppdm2Jira.psd1') -Force
}

Describe 'StateStore' {
    BeforeEach {
        $script:dir = Join-Path ([IO.Path]::GetTempPath()) ("p2j-" + [guid]::NewGuid())
    }
    AfterEach {
        if (Test-Path $script:dir) { Remove-Item $script:dir -Recurse -Force }
    }
    It 'returns epoch start when no watermark exists' {
        $wm = InModuleScope Ppdm2Jira -Parameters @{ dir = $script:dir } {
            param($dir)
            Get-Ppdm2JiraWatermark -InstanceId prod1 -StateDir $dir
        }
        $wm.ToUniversalTime().ToString('yyyy-MM-dd') | Should -Be '1970-01-01'
    }
    It 'round-trips a watermark through write then read' {
        $back = InModuleScope Ppdm2Jira -Parameters @{ dir = $script:dir } {
            param($dir)
            $t = [datetime]::SpecifyKind([datetime]'2026-06-21T10:11:12', 'Utc')
            Set-Ppdm2JiraWatermark -InstanceId prod1 -Time $t -StateDir $dir
            Get-Ppdm2JiraWatermark -InstanceId prod1 -StateDir $dir
        }
        $back.ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ') | Should -Be '2026-06-21T10:11:12Z'
    }
    It 'leaves no .tmp file after an atomic write' {
        InModuleScope Ppdm2Jira -Parameters @{ dir = $script:dir } {
            param($dir)
            Set-Ppdm2JiraWatermark -InstanceId prod1 -Time (Get-Date) -StateDir $dir
        }
        (Get-ChildItem $script:dir -Filter '*.tmp').Count | Should -Be 0
    }
}
