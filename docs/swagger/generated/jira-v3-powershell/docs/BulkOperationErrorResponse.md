# BulkOperationErrorResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Errors** | [**ErrorMessage[]**](ErrorMessage.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkOperationErrorResponse = Initialize-JiraApiReferenceBulkOperationErrorResponse  -Errors null
```

- Convert the resource to JSON
```powershell
$BulkOperationErrorResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

