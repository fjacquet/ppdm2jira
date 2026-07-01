BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'ppdm2Jira.psd1') -Force
    $script:tmp = Join-Path ([IO.Path]::GetTempPath()) ("p2j-orch-" + [guid]::NewGuid())
    New-Item -ItemType Directory -Path $script:tmp -Force | Out-Null

    $routingPath = Join-Path $script:tmp 'routing.psd1'
    @"
@{ rules = @(); default = @{ project='OPS'; issueType='Task'; component=`$null; labels=@(); priority=@{ CRITICAL='2'; WARNING='3' } } }
"@ | Set-Content -Path $routingPath -Encoding UTF8

    $script:settingsPath = Join-Path $script:tmp 'settings.psd1'
    @"
@{
    stateDir    = '$($script:tmp -replace '\\','\\')\state'
    routingPath = '$($routingPath -replace '\\','\\')'
    instances   = @( @{ id='prod1'; baseUrl='https://prod1/api/v2'; secretName='s' } )
    jira        = @{ baseUrl='https://x'; apiVersion=3; authMode='basic'; bodyFormat='adf'; email='a@b.c'; secretName='j' }
}
"@ | Set-Content -Path $script:settingsPath -Encoding UTF8
}
AfterAll {
    if (Test-Path $script:tmp) { Remove-Item $script:tmp -Recurse -Force }
}

Describe 'Invoke-ppdm2JiraSync' {
    BeforeEach {
        InModuleScope ppdm2Jira {
            Mock New-ppdm2JiraClient { [pscustomobject]@{ baseUrl='https://x'; apiBase='/rest/api/3'; bodyFormat='adf'; tlsValidate=$true } }
            Mock Connect-ppdm2JiraInstance {}
            Mock Get-ppdm2JiraFailedBackups { @() }
            Mock Get-ppdm2JiraAlerts {
                [pscustomobject]@{ PSTypeName='ppdm2Jira.Incident'; source='alert'; severity='CRITICAL'; category='PROTECTION'
                                   dedupKey='ppdm:prod1:al-1'; title='t'; body='b'; occurredAt=([datetime]'2026-06-21T00:00:00Z')
                                   ppdmLinks=[pscustomobject]@{ id='al-1'; deepLink='https://prod1/x' } }
            }
            Mock New-ppdm2JiraIssue { 'OPS-100' }
            Mock Set-ppdm2JiraRemoteLink { $true }
            Mock Add-ppdm2JiraComment { $true }
            Mock Resolve-ppdm2JiraAction { [pscustomobject]@{ Action='Create'; Key=$null } }
        }
    }

    It 'creates an issue and advances the watermark on success' {
        InModuleScope ppdm2Jira -Parameters @{ settingsPath = $script:settingsPath } {
            Mock Set-ppdm2JiraWatermark {}
            $rc = Invoke-ppdm2JiraSync -ConfigPath $settingsPath
            $rc | Should -Be 0
            Should -Invoke New-ppdm2JiraIssue -Times 1
            Should -Invoke Set-ppdm2JiraWatermark -Times 1
        }
    }

    It 'in DryRun writes nothing and does not advance the watermark' {
        InModuleScope ppdm2Jira -Parameters @{ settingsPath = $script:settingsPath } {
            Mock Set-ppdm2JiraWatermark {}
            $rc = Invoke-ppdm2JiraSync -ConfigPath $settingsPath -DryRun
            $rc | Should -Be 0
            Should -Invoke New-ppdm2JiraIssue -Times 0
            Should -Invoke Set-ppdm2JiraWatermark -Times 0
        }
    }

    It 'does not advance the watermark when issue creation throws' {
        InModuleScope ppdm2Jira -Parameters @{ settingsPath = $script:settingsPath } {
            Mock New-ppdm2JiraIssue { throw 'boom' }
            Mock Set-ppdm2JiraWatermark {}
            $rc = Invoke-ppdm2JiraSync -ConfigPath $settingsPath 2>$null
            $rc | Should -Be 1
            Should -Invoke Set-ppdm2JiraWatermark -Times 0
        }
    }

    It 'falls back to creating an issue when commenting returns 404 (false)' {
        InModuleScope ppdm2Jira -Parameters @{ settingsPath = $script:settingsPath } {
            Mock Set-ppdm2JiraWatermark {}
            Mock Resolve-ppdm2JiraAction { [pscustomobject]@{ Action = 'Comment'; Key = 'OPS-9' } }
            Mock Add-ppdm2JiraComment { $false }   # simulate the target issue having been deleted
            $rc = Invoke-ppdm2JiraSync -ConfigPath $settingsPath
            $rc | Should -Be 0
            Should -Invoke Add-ppdm2JiraComment -Times 1 -Exactly
            Should -Invoke New-ppdm2JiraIssue   -Times 1 -Exactly
        }
    }

    It 'opens a single issue when an alert and activity share a jobId' {
        InModuleScope ppdm2Jira -Parameters @{ settingsPath = $script:settingsPath } {
            Mock Set-ppdm2JiraWatermark {}
            Mock Get-ppdm2JiraAlerts {
                [pscustomobject]@{ PSTypeName='ppdm2Jira.Incident'; source='alert'; severity='CRITICAL'; category='PROTECTION'
                                   instanceId='prod1'; dedupKey='ppdm:prod1:al-1'; title='t'; body='b'; occurredAt=([datetime]'2026-06-21T00:00:00Z')
                                   ppdmLinks=[pscustomobject]@{ id='al-1'; jobId='job-77'; deepLink='https://prod1/x' } }
            }
            Mock Get-ppdm2JiraFailedBackups {
                [pscustomobject]@{ PSTypeName='ppdm2Jira.Incident'; source='activity'; severity='CRITICAL'; category='PROTECT'
                                   instanceId='prod1'; dedupKey='ppdm:prod1:job-77'; title='t2'; body='b2'; occurredAt=([datetime]'2026-06-21T00:05:00Z')
                                   ppdmLinks=[pscustomobject]@{ id='job-77'; jobId='job-77'; deepLink='https://prod1/y' } }
            }
            $rc = Invoke-ppdm2JiraSync -ConfigPath $settingsPath
            $rc | Should -Be 0
            Should -Invoke New-ppdm2JiraIssue -Times 1 -Exactly   # collapsed: one failure, one ticket
        }
    }
}
