BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'ppdm2Jira.psd1') -Force
}

Describe 'StateStore' {
    BeforeEach {
        $script:dir = Join-Path ([IO.Path]::GetTempPath()) ("p2j-" + [guid]::NewGuid())
    }
    AfterEach {
        if (Test-Path $script:dir) { Remove-Item $script:dir -Recurse -Force }
    }
    It 'returns epoch start when no watermark exists' {
        $wm = InModuleScope ppdm2Jira -Parameters @{ dir = $script:dir } {
            param($dir)
            Get-ppdm2JiraWatermark -InstanceId prod1 -StateDir $dir
        }
        $wm.ToUniversalTime().ToString('yyyy-MM-dd') | Should -Be '1970-01-01'
    }
    It 'round-trips a watermark through write then read' {
        $back = InModuleScope ppdm2Jira -Parameters @{ dir = $script:dir } {
            param($dir)
            $t = [datetime]::SpecifyKind([datetime]'2026-06-21T10:11:12', 'Utc')
            Set-ppdm2JiraWatermark -InstanceId prod1 -Time $t -StateDir $dir
            Get-ppdm2JiraWatermark -InstanceId prod1 -StateDir $dir
        }
        $back.ToUniversalTime() | Should -Be ([datetime]::SpecifyKind([datetime]'2026-06-21T10:11:12', 'Utc'))
    }
    It 'parses a fractional-second watermark string (hand-edited/upstream-formatted file)' {
        $back = InModuleScope ppdm2Jira -Parameters @{ dir = $script:dir } {
            param($dir)
            New-Item -ItemType Directory -Path $dir -Force | Out-Null
            '{ "instanceId": "prod1", "watermark": "2026-06-21T10:11:12.345Z" }' |
                Set-Content -Path (Join-Path $dir 'prod1.watermark.json') -Encoding UTF8
            Get-ppdm2JiraWatermark -InstanceId prod1 -StateDir $dir
        }
        $back.ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ss', [Globalization.CultureInfo]::InvariantCulture) |
            Should -Be '2026-06-21T10:11:12'
    }
    It 'leaves no .tmp file after an atomic write' {
        InModuleScope ppdm2Jira -Parameters @{ dir = $script:dir } {
            param($dir)
            Set-ppdm2JiraWatermark -InstanceId prod1 -Time (Get-Date) -StateDir $dir
        }
        (Get-ChildItem $script:dir -Filter '*.tmp').Count | Should -Be 0
    }
}
