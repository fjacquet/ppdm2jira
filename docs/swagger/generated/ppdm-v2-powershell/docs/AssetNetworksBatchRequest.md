# AssetNetworksBatchRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**AssetNetworksBatchRequestBody**](AssetNetworksBatchRequestBody.md) |  | [optional] 
**Id** | **String** | Request id. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetNetworksBatchRequest = Initialize-PpdmApiReferenceAssetNetworksBatchRequest  -Body null `
 -Id null
```

- Convert the resource to JSON
```powershell
$AssetNetworksBatchRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

