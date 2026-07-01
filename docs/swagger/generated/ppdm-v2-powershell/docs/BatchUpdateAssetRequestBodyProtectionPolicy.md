# BatchUpdateAssetRequestBodyProtectionPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupRank** | **Int32** | The priority order (with 1 being the highest) in which to attempt to create a backup for an ORACLE_DATA_GUARD protection group using the BACKUP_BY_RANK backup strategy. | [optional] 

## Examples

- Prepare the resource
```powershell
$BatchUpdateAssetRequestBodyProtectionPolicy = Initialize-PpdmApiReferenceBatchUpdateAssetRequestBodyProtectionPolicy  -BackupRank null
```

- Convert the resource to JSON
```powershell
$BatchUpdateAssetRequestBodyProtectionPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

