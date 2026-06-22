<#
.SYNOPSIS
    Launcher for the ppdm2Jira integration: imports the module and runs one sync pass.

.DESCRIPTION
    A thin convenience wrapper so you can run the integration with a single command from the repo
    root, without importing the module yourself. It forwards -ConfigPath, -Instance, and -DryRun to
    Invoke-ppdm2JiraSync and returns that function's exit code (0 = all instances succeeded, 1 = at
    least one failed) so it works cleanly in schedulers and CI.

.PARAMETER ConfigPath
    Path to settings.psd1 (same file Invoke-ppdm2JiraSync expects).

.PARAMETER Instance
    Optional instance id filter; defaults to all configured instances.

.PARAMETER DryRun
    Compute and log intended actions without any Jira writes or watermark advance.

.EXAMPLE
    ./Start-ppdm2Jira.ps1 -ConfigPath ./settings.psd1 -DryRun

.EXAMPLE
    ./Start-ppdm2Jira.ps1 -ConfigPath ./settings.psd1 -Instance prod1
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $ConfigPath,
    [string[]] $Instance,
    [switch]   $DryRun
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$manifest = Join-Path $PSScriptRoot 'ppdm2Jira/ppdm2Jira.psd1'
if (-not (Test-Path $manifest)) { throw "Module manifest not found: $manifest" }
Import-Module $manifest -Force

$syncArgs = @{ ConfigPath = $ConfigPath }
if ($Instance) { $syncArgs['Instance'] = $Instance }
if ($DryRun)   { $syncArgs['DryRun']   = $true }

exit (Invoke-ppdm2JiraSync @syncArgs)
