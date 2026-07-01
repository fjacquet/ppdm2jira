# RestoreFilesRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FilePaths** | **String[]** | Array of the names of files to restore. | 
**OverwriteExisting** | **Boolean** | Flag indicating whether existing files should be overwritten. | [optional] [default to $true]
**RestoreToOriginalPath** | **Boolean** | Flag indicating whether the files should be restored to their original locations. The target directory field must be empty or null if this flag is set to true. | [optional] [default to $false]
**TargetDirectory** | **String** | Directory on the destination Virtual Machine (VM) where to restore files to. This string must be null or empty if the &quot;&quot;restoreToOriginalPath&quot;&quot; flag is set to true. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoreFilesRequest = Initialize-PpdmApiReferenceRestoreFilesRequest  -FilePaths null `
 -OverwriteExisting null `
 -RestoreToOriginalPath null `
 -TargetDirectory null
```

- Convert the resource to JSON
```powershell
$RestoreFilesRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

