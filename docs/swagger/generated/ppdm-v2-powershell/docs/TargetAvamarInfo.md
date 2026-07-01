# TargetAvamarInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** | The target asset ID when restoring to overwrite an existing asset (not the original asset). | [optional] 
**AssetName** | **String** | The name of the restored asset (for example, the name of the new asset after a restore to alternate). | [optional] 
**ConflictStrategy** | **String** | The strategy recovery uses to handle conflict of the contents in the destination directory. | [optional] 
**CredsId** | **String** | The credentials ID that is used for restore. | [optional] 
**HostId** | **String** | The target host ID that the restored asset is located in. | [optional] 
**Location** | **String** | The mount or restore location. | [optional] 
**MountUrl** | **String** | The mount url. | [optional] 
**Parallelism** | **Int32** | Indicates the number of streams that are used for restore. | [optional] 
**RestoreProtocol** | **String** | The restore protocol. | [optional] 
**Sources** | **String[]** | The list of the file/directory paths to restore. | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetAvamarInfo = Initialize-PpdmApiReferenceTargetAvamarInfo  -AssetId null `
 -AssetName null `
 -ConflictStrategy null `
 -CredsId null `
 -HostId null `
 -Location null `
 -MountUrl null `
 -Parallelism null `
 -RestoreProtocol null `
 -Sources null
```

- Convert the resource to JSON
```powershell
$TargetAvamarInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

