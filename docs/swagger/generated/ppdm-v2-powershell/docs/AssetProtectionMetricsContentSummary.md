# AssetProtectionMetricsContentSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Maximums** | [**AssetProtectionMetricsCollection**](AssetProtectionMetricsCollection.md) |  | [optional] 
**Totals** | [**AssetProtectionMetricsCollection**](AssetProtectionMetricsCollection.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetProtectionMetricsContentSummary = Initialize-PpdmApiReferenceAssetProtectionMetricsContentSummary  -Maximums null `
 -Totals null
```

- Convert the resource to JSON
```powershell
$AssetProtectionMetricsContentSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

