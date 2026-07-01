# FeatureResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**Feature**](Feature.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**Status** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FeatureResponse = Initialize-PpdmApiReferenceFeatureResponse  -Body null `
 -Id null `
 -Status null
```

- Convert the resource to JSON
```powershell
$FeatureResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

