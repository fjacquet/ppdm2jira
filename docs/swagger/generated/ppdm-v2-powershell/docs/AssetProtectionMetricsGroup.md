# AssetProtectionMetricsGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **Int32** | Count of assets in this metrics group. | [optional] 
**CountPercentage** | **Double** | Percentage of counts of assets in this metrics group. | [optional] 
**Size** | **Int64** | Size in bytes (or capacity) of assets in this metrics group. | [optional] 
**SizePercentage** | **Double** | Percentage of size in bytes (or capacity) of assets in this metrics group. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetProtectionMetricsGroup = Initialize-PpdmApiReferenceAssetProtectionMetricsGroup  -Count null `
 -CountPercentage null `
 -Size null `
 -SizePercentage null
```

- Convert the resource to JSON
```powershell
$AssetProtectionMetricsGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

