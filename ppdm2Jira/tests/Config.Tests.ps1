BeforeAll {
    $script:ModuleRoot = Split-Path -Parent $PSScriptRoot
    Import-Module (Join-Path $script:ModuleRoot 'ppdm2Jira.psd1') -Force
}

Describe 'Assert-ppdm2JiraSettings' {
    It 'passes silently on a valid settings shape' {
        InModuleScope ppdm2Jira {
            $s = @{
                stateDir            = './state'
                routingPath         = './routing.psd1'
                queryOverlapMinutes = 5
                instances           = @( @{ id = 'prod1'; baseUrl = 'https://prod1/api/v2'; secretName = 's' } )
                jira                = @{ baseUrl = 'https://x'; apiVersion = 2; authMode = 'bearer'; bodyFormat = 'wiki'; secretName = 'j' }
            }
            { Assert-ppdm2JiraSettings -Settings $s } | Should -Not -Throw
        }
    }
    It 'passes when the optional queryOverlapMinutes key is absent' {
        InModuleScope ppdm2Jira {
            $s = @{
                stateDir    = './state'
                routingPath = './routing.psd1'
                instances   = @( @{ id = 'prod1'; baseUrl = 'https://prod1/api/v2'; secretName = 's' } )
                jira        = @{ baseUrl = 'https://x'; apiVersion = 3; authMode = 'basic'; bodyFormat = 'adf'; secretName = 'j' }
            }
            { Assert-ppdm2JiraSettings -Settings $s } | Should -Not -Throw
        }
    }
    It 'aggregates every problem into one operator-readable error' {
        InModuleScope ppdm2Jira {
            # Missing stateDir + routingPath, jira missing 4 of 5 keys, instance missing 2 of 3 keys.
            $s = @{
                jira      = @{ baseUrl = 'https://x' }
                instances = @( @{ id = 'prod1' } )
            }
            $err = $null
            try { Assert-ppdm2JiraSettings -Settings $s } catch { $err = $_.Exception.Message }
            $err | Should -Not -BeNullOrEmpty
            $err | Should -BeLike '*stateDir*'
            $err | Should -BeLike '*routingPath*'
            $err | Should -BeLike '*jira.authMode*'
            $err | Should -BeLike '*jira.bodyFormat*'
            $err | Should -BeLike '*jira.apiVersion*'
            $err | Should -BeLike '*jira.secretName*'
            $err | Should -BeLike '*instances`[0`].baseUrl*'
            $err | Should -BeLike '*instances`[0`].secretName*'
        }
    }
    It 'requires at least one instance' {
        InModuleScope ppdm2Jira {
            $s = @{
                stateDir    = './state'
                routingPath = './routing.psd1'
                instances   = @()
                jira        = @{ baseUrl = 'https://x'; apiVersion = 2; authMode = 'bearer'; bodyFormat = 'wiki'; secretName = 'j' }
            }
            { Assert-ppdm2JiraSettings -Settings $s } | Should -Throw '*instances*'
        }
    }
    It 'rejects a non-integer or negative queryOverlapMinutes' {
        InModuleScope ppdm2Jira {
            $base = @{
                stateDir    = './state'
                routingPath = './routing.psd1'
                instances   = @( @{ id = 'prod1'; baseUrl = 'https://prod1/api/v2'; secretName = 's' } )
                jira        = @{ baseUrl = 'https://x'; apiVersion = 2; authMode = 'bearer'; bodyFormat = 'wiki'; secretName = 'j' }
            }
            $neg = $base.Clone(); $neg.queryOverlapMinutes = -1
            { Assert-ppdm2JiraSettings -Settings $neg } | Should -Throw '*queryOverlapMinutes*'
            $str = $base.Clone(); $str.queryOverlapMinutes = 'five'
            { Assert-ppdm2JiraSettings -Settings $str } | Should -Throw '*queryOverlapMinutes*'
        }
    }
}
