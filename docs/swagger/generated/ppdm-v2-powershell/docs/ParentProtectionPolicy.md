# ParentProtectionPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupMechanism** | **String** | The backup mechanism that the protection policy is configured to perform. | [optional] 
**BackupRank** | **Int32** | The priority order (with 1 being highest) in which to attempt to create a backup for an ORACLE_DATA_GUARD protection group using the BACKUP_BY_RANK backup strategy. | [optional] 
**Id** | **String** | The ID of the parent protection policy. | [optional] 
**Name** | **String** | The name of the parent protection policy. | [optional] 
**ProtectionEngine** | **String** |  | [optional] 
**Type** | **String** | The type of the parent protection policy. | [optional] 

## Examples

- Prepare the resource
```powershell
$ParentProtectionPolicy = Initialize-PpdmApiReferenceParentProtectionPolicy  -BackupMechanism null `
 -BackupRank null `
 -Id null `
 -Name null `
 -ProtectionEngine null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ParentProtectionPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

