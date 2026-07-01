# CopiesRetentionTimeBatchRequests
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Requests** | [**CopiesRetentionTimeBatchRequest[]**](CopiesRetentionTimeBatchRequest.md) | Contains a list of changes to be applied to the resource. | [optional] 

## Examples

- Prepare the resource
```powershell
$CopiesRetentionTimeBatchRequests = Initialize-PpdmApiReferenceCopiesRetentionTimeBatchRequests  -Requests null
```

- Convert the resource to JSON
```powershell
$CopiesRetentionTimeBatchRequests | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

