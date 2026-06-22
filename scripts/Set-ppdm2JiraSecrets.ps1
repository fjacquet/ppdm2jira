<#
.SYNOPSIS
    Registers or updates the SecretManagement secrets that ppdm2Jira needs, derived from settings.psd1.

.DESCRIPTION
    Reads the secret NAMES referenced by a settings.psd1 (each PPDM instance's `secretName` plus the
    Jira `secretName`) and, for each, prompts securely and stores the value in a SecretManagement
    vault via Set-Secret. Values are read as SecureString and passed straight to Set-Secret -- no
    plaintext is ever materialized in this process (ADR-0006 / NFR-3).

    Idempotent: existing secrets are left alone unless -Force is given. Supports -WhatIf.

    This is an operational helper, NOT part of the importable module.

.PARAMETER ConfigPath
    Path to your settings.psd1 (same file you pass to Invoke-ppdm2JiraSync).

.PARAMETER VaultName
    Target vault. Defaults to the registered default vault. Used as the vault name when
    -RegisterVaultIfMissing creates one (default 'ppdm2Jira').

.PARAMETER Force
    Overwrite secrets that already exist (otherwise they are skipped).

.PARAMETER RegisterVaultIfMissing
    If no vault is registered, register a Microsoft.PowerShell.SecretStore vault as the default.

.EXAMPLE
    ./scripts/Set-ppdm2JiraSecrets.ps1 -ConfigPath ./config/settings.psd1 -RegisterVaultIfMissing
    First-time setup: registers a vault and prompts for each missing secret.

.EXAMPLE
    ./scripts/Set-ppdm2JiraSecrets.ps1 -ConfigPath ./config/settings.psd1 -Force
    Rotate/update: re-prompt and overwrite every secret.

.EXAMPLE
    ./scripts/Set-ppdm2JiraSecrets.ps1 -ConfigPath ./config/settings.psd1 -WhatIf
    Show which secrets would be created/updated without prompting or writing.
#>
[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingWriteHost', '', Justification = 'Interactive operator setup script; coloured console status is the intended UX, not pipeline output.')]
[CmdletBinding(SupportsShouldProcess)]
param(
    [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string] $ConfigPath,
    [string] $VaultName,
    [switch] $Force,
    [switch] $RegisterVaultIfMissing
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if (-not (Test-Path $ConfigPath)) { throw "Config not found: $ConfigPath" }

if (-not (Get-Module -ListAvailable Microsoft.PowerShell.SecretManagement)) {
    throw "Microsoft.PowerShell.SecretManagement is not installed. Run: Install-Module Microsoft.PowerShell.SecretManagement, Microsoft.PowerShell.SecretStore -Scope CurrentUser"
}
Import-Module Microsoft.PowerShell.SecretManagement

# Ensure a vault exists (register a SecretStore default if asked).
$vaults = @(Get-SecretVault -ErrorAction SilentlyContinue)
if ($vaults.Count -eq 0) {
    if (-not $RegisterVaultIfMissing) {
        throw "No SecretManagement vault is registered. Re-run with -RegisterVaultIfMissing, or register one manually (Register-SecretVault)."
    }
    if (-not (Get-Module -ListAvailable Microsoft.PowerShell.SecretStore)) {
        throw "Microsoft.PowerShell.SecretStore is not installed. Run: Install-Module Microsoft.PowerShell.SecretStore -Scope CurrentUser"
    }
    $targetVault = if ($VaultName) { $VaultName } else { 'ppdm2Jira' }
    if ($PSCmdlet.ShouldProcess($targetVault, 'Register SecretStore vault as default')) {
        Register-SecretVault -Name $targetVault -ModuleName Microsoft.PowerShell.SecretStore -DefaultVault
        Write-Host "Registered default vault '$targetVault'." -ForegroundColor Green
    }
}

# Derive required secret names from the config.
$settings = Import-PowerShellDataFile -Path $ConfigPath
$required = New-Object System.Collections.Generic.List[object]

if ($settings.ContainsKey('instances')) {
    foreach ($inst in $settings.instances) {
        if ($inst.ContainsKey('secretName') -and $inst.secretName) {
            $required.Add([pscustomobject]@{
                Name    = [string]$inst.secretName
                Purpose = "PPDM instance '$($inst.id)' ($($inst.baseUrl))"
            })
        }
    }
}
if ($settings.ContainsKey('jira') -and $settings.jira.ContainsKey('secretName') -and $settings.jira.secretName) {
    $mode = if ($settings.jira.ContainsKey('authMode')) { $settings.jira.authMode } else { '?' }
    $required.Add([pscustomobject]@{
        Name    = [string]$settings.jira.secretName
        Purpose = "Jira ($($settings.jira.baseUrl), authMode=$mode)"
    })
}

if ($required.Count -eq 0) {
    Write-Warning "No secretName entries found in $ConfigPath. Nothing to do."
    return
}

$created = 0; $updated = 0; $skipped = 0
$seen = @{}

foreach ($item in $required) {
    if ($seen.ContainsKey($item.Name)) { continue }   # de-dup shared names
    $seen[$item.Name] = $true

    $exists = $null -ne (Get-SecretInfo -Name $item.Name -ErrorAction SilentlyContinue)
    if ($exists -and -not $Force) {
        Write-Host "[skip]   '$($item.Name)' already exists - $($item.Purpose). Use -Force to overwrite." -ForegroundColor DarkGray
        $skipped++
        continue
    }

    $action = if ($exists) { 'Update' } else { 'Create' }
    if (-not $PSCmdlet.ShouldProcess($item.Name, "$action secret")) {
        Write-Host "[whatif] would $($action.ToLower()) '$($item.Name)' - $($item.Purpose)" -ForegroundColor Yellow
        continue
    }

    $secure = Read-Host -Prompt "Secret for '$($item.Name)' - $($item.Purpose)" -AsSecureString
    if ($null -eq $secure -or $secure.Length -eq 0) {
        Write-Warning "[skip]   empty value entered for '$($item.Name)'."
        $skipped++
        continue
    }

    $setParams = @{ Name = $item.Name; Secret = $secure }
    if ($VaultName) { $setParams['Vault'] = $VaultName }
    Set-Secret @setParams
    if ($exists) { $updated++ } else { $created++ }
    Write-Host "[$($action.ToLower())d] '$($item.Name)'." -ForegroundColor Green
}

Write-Host ""
Write-Host "Done. created=$created updated=$updated skipped=$skipped" -ForegroundColor Cyan
