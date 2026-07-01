# PatchAssetDatabase
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NfsShare** | [**PatchAssetDetailsDatabaseNfsShare**](PatchAssetDetailsDatabaseNfsShare.md) |  | [optional] 
**RelativeNFSDirectory** | **String** | Folder path relative to the top level path where the NFS export is mounted. | [optional] 
**RelativeWorkingDirectory** | **String** | Folder path relative to the top level path where temporary files are stored. | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchAssetDatabase = Initialize-PpdmApiReferencePatchAssetDatabase  -NfsShare null `
 -RelativeNFSDirectory null `
 -RelativeWorkingDirectory null
```

- Convert the resource to JSON
```powershell
$PatchAssetDatabase | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

