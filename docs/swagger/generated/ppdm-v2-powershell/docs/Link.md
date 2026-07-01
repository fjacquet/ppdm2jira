# Link
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Href** | **String** | The href attribute of link. | [optional] 
**Rel** | **String** | The rel attribute of link. | [optional] 

## Examples

- Prepare the resource
```powershell
$Link = Initialize-PpdmApiReferenceLink  -Href null `
 -Rel null
```

- Convert the resource to JSON
```powershell
$Link | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

