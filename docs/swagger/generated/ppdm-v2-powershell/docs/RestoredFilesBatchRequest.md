# RestoredFilesBatchRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**RestoredFilesBatchRequestBody**](RestoredFilesBatchRequestBody.md) |  | [optional] 
**Id** | **String** | A value that uniquely identifies each request in the batch. | 

## Examples

- Prepare the resource
```powershell
$RestoredFilesBatchRequest = Initialize-PpdmApiReferenceRestoredFilesBatchRequest  -Body null `
 -Id null
```

- Convert the resource to JSON
```powershell
$RestoredFilesBatchRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

