# BatchUpdateAssetRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**BatchUpdateAssetRequestBody**](BatchUpdateAssetRequestBody.md) |  | [optional] 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BatchUpdateAssetRequest = Initialize-PpdmApiReferenceBatchUpdateAssetRequest  -Body null `
 -Id null
```

- Convert the resource to JSON
```powershell
$BatchUpdateAssetRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

