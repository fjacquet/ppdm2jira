# Runs the full Pester suite for the Ppdm2Jira module.
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$config = New-PesterConfiguration
$config.Run.Path = $here
$config.Output.Verbosity = 'Detailed'
Invoke-Pester -Configuration $config
