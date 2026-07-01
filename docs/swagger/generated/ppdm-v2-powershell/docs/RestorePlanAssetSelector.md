# RestorePlanAssetSelector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetCount** | **Int32** |  | [optional] 
**AssetIds** | **String[]** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RestorePlanAssetSelector = Initialize-PpdmApiReferenceRestorePlanAssetSelector  -AssetCount null `
 -AssetIds null `
 -Type null
```

- Convert the resource to JSON
```powershell
$RestorePlanAssetSelector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

