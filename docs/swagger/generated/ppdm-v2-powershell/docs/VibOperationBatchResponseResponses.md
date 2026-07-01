# VibOperationBatchResponseResponses
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**VibOperationBatchResponseBody**](VibOperationBatchResponseBody.md) |  | [optional] 
**Id** | **String** | The request id in the batch operation. | [optional] 
**Status** | **Int32** | The response status of the vib operation. | [optional] 

## Examples

- Prepare the resource
```powershell
$VibOperationBatchResponseResponses = Initialize-PpdmApiReferenceVibOperationBatchResponseResponses  -Body null `
 -Id null `
 -Status null
```

- Convert the resource to JSON
```powershell
$VibOperationBatchResponseResponses | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

