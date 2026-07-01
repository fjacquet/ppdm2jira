# CopyDeletionBatchRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**CopyDeletionRequest**](CopyDeletionRequest.md) |  | [optional] 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyDeletionBatchRequest = Initialize-PpdmApiReferenceCopyDeletionBatchRequest  -Body null `
 -Id null
```

- Convert the resource to JSON
```powershell
$CopyDeletionBatchRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

