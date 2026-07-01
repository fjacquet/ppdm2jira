# SWRepoFiles
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**SWRepoFile[]**](SWRepoFile.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SWRepoFiles = Initialize-PpdmApiReferenceSWRepoFiles  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$SWRepoFiles | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

