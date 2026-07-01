# ResourceBatchRequestRequests
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**ResourceBatchRequestBody**](ResourceBatchRequestBody.md) |  | 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ResourceBatchRequestRequests = Initialize-PpdmApiReferenceResourceBatchRequestRequests  -Body null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ResourceBatchRequestRequests | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

