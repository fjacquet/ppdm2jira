# CopyFileSystemDdbeaMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DdHostname** | **String** | PowerProtect Data Domain hostname this protection copy set is located on. | [optional] 
**DdUser** | **String** | User name of the user who backed up to the PowerProtect Data Domain storage unit. | [optional] 
**DevicePath** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**Size** | **Int64** | Size of the backup in bytes. | [optional] 
**SubSpaceGUID** | **String** |  | [optional] 
**Subspace** | **String** |  | [optional] 
**Technology** | **String** |  | [optional] 
**TransactionId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyFileSystemDdbeaMetadata = Initialize-PpdmApiReferenceCopyFileSystemDdbeaMetadata  -DdHostname null `
 -DdUser null `
 -DevicePath null `
 -Namespace null `
 -Size null `
 -SubSpaceGUID null `
 -Subspace null `
 -Technology null `
 -TransactionId null
```

- Convert the resource to JSON
```powershell
$CopyFileSystemDdbeaMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

