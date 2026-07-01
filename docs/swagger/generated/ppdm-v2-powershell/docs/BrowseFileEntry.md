# BrowseFileEntry
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the file or directory. | [optional] 
**Size** | **Int64** | Size of the file. | [optional] 
**Type** | **String** | The type of file: directory, symlink, etc. | [optional] 

## Examples

- Prepare the resource
```powershell
$BrowseFileEntry = Initialize-PpdmApiReferenceBrowseFileEntry  -Name null `
 -Size null `
 -Type null
```

- Convert the resource to JSON
```powershell
$BrowseFileEntry | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

