# CopiesRetentionTimeBatchRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**CopiesRetentionTimeBatchRequestBody**](CopiesRetentionTimeBatchRequestBody.md) |  | [optional] 
**Id** | **String** | Request id. | [optional] 

## Examples

- Prepare the resource
```powershell
$CopiesRetentionTimeBatchRequest = Initialize-PpdmApiReferenceCopiesRetentionTimeBatchRequest  -Body null `
 -Id null
```

- Convert the resource to JSON
```powershell
$CopiesRetentionTimeBatchRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

