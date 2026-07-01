# AssetsBatchDeletionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**AssetsBatchDeletionRequestBody**](AssetsBatchDeletionRequestBody.md) |  | [optional] 
**Id** | **String** | Request id. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetsBatchDeletionRequest = Initialize-PpdmApiReferenceAssetsBatchDeletionRequest  -Body null `
 -Id null
```

- Convert the resource to JSON
```powershell
$AssetsBatchDeletionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

