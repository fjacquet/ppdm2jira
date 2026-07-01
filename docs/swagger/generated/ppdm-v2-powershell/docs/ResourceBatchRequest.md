# ResourceBatchRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Requests** | [**ResourceBatchRequestRequests[]**](ResourceBatchRequestRequests.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceBatchRequest = Initialize-PpdmApiReferenceResourceBatchRequest  -Requests null
```

- Convert the resource to JSON
```powershell
$ResourceBatchRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

