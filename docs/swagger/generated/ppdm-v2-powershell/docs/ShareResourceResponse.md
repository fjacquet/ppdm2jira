# ShareResourceResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Connectivity** | **String** |  | [optional] 
**Message** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ShareResourceResponse = Initialize-PpdmApiReferenceShareResourceResponse  -Connectivity null `
 -Message null
```

- Convert the resource to JSON
```powershell
$ShareResourceResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

