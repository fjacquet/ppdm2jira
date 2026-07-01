# BatchUpdateAssetRequestBodyBackupDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupType** | [**BackupTypeEnum**](BackupTypeEnum.md) |  | [optional] 
**Parallelism** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BatchUpdateAssetRequestBodyBackupDetails = Initialize-PpdmApiReferenceBatchUpdateAssetRequestBodyBackupDetails  -BackupType null `
 -Parallelism null
```

- Convert the resource to JSON
```powershell
$BatchUpdateAssetRequestBodyBackupDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

