# FeatureRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**Feature**](Feature.md) |  | [optional] 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FeatureRequest = Initialize-PpdmApiReferenceFeatureRequest  -Body null `
 -Id null
```

- Convert the resource to JSON
```powershell
$FeatureRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

