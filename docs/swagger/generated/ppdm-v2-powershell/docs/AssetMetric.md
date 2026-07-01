# AssetMetric
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InComplianceAssetCount** | **Int64** | The number of assets that are in compliance. | [optional] 
**OutOfComplianceAssetCount** | **Int64** | The number of assets that are out of compliance. | [optional] 
**Type** | **String** | The type of asset. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetMetric = Initialize-PpdmApiReferenceAssetMetric  -InComplianceAssetCount null `
 -OutOfComplianceAssetCount null `
 -Type null
```

- Convert the resource to JSON
```powershell
$AssetMetric | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

