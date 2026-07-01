# UpdateBrowseRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrowseDest** | **Boolean** | If true, browse the destination (target VM), if false, brouse the source (copy). | [optional] 
**Directory** | **String** | This is the directory path used as input, or output, for an FLR browse session API call. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateBrowseRequest = Initialize-PpdmApiReferenceUpdateBrowseRequest  -BrowseDest null `
 -Directory null
```

- Convert the resource to JSON
```powershell
$UpdateBrowseRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

