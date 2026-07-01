# TargetFileSystemInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConflictStrategy** | **String** | Indicate the strategy recovery will use to handle conflict of the contents in the destination directory. | [optional] 
**HostId** | **String** |  | [optional] 
**Location** | **String** |  | 
**MountUrl** | **String** |  | [optional] 
**RestoreCategory** | **String** | The restore category. | [optional] 
**Sources** | **String[]** |  | [optional] 
**TargetConnectionInfos** | [**TargetConnectionInfoFs[]**](TargetConnectionInfoFs.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetFileSystemInfo = Initialize-PpdmApiReferenceTargetFileSystemInfo  -ConflictStrategy null `
 -HostId null `
 -Location null `
 -MountUrl null `
 -RestoreCategory null `
 -Sources null `
 -TargetConnectionInfos null
```

- Convert the resource to JSON
```powershell
$TargetFileSystemInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

