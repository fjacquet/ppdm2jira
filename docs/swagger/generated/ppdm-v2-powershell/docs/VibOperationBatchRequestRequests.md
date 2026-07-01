# VibOperationBatchRequestRequests
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**VSphereInstallationBundle**](VSphereInstallationBundle.md) |  | [optional] 
**Id** | **String** | The request id in the batch operation. | [optional] 

## Examples

- Prepare the resource
```powershell
$VibOperationBatchRequestRequests = Initialize-PpdmApiReferenceVibOperationBatchRequestRequests  -Body null `
 -Id null
```

- Convert the resource to JSON
```powershell
$VibOperationBatchRequestRequests | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

