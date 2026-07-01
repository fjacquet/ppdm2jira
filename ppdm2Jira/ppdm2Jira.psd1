@{
    RootModule        = 'ppdm2Jira.psm1'
    ModuleVersion     = '0.3.0'
    GUID              = 'b6d2f4a1-2c3e-4d5a-9f8b-0a1c2d3e4f5a'
    Author            = 'Platform / Backup Engineering'
    Description       = 'Polls PPDM alerts/failed backups and creates/updates Jira issues. Runtime deps (not import-enforced): PPDM-pwsh, Microsoft.PowerShell.SecretManagement.'
    PowerShellVersion = '5.1'
    FunctionsToExport = @('Invoke-ppdm2JiraSync')
    CmdletsToExport   = @()
    VariablesToExport = @()
    AliasesToExport   = @()
}
