# DirectoryFileList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**BrowseFileEntry[]**](BrowseFileEntry.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DirectoryFileList = Initialize-PpdmApiReferenceDirectoryFileList  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$DirectoryFileList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

