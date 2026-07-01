# AssetProtectionMetricsCollection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BucketName** | **String** | Name of asset protection metrics collection. | [optional] 
**Excluded** | [**AssetProtectionMetricsGroup**](AssetProtectionMetricsGroup.md) |  | [optional] 
**Protected** | [**AssetProtectionMetricsGroup**](AssetProtectionMetricsGroup.md) |  | [optional] 
**Total** | [**AssetProtectionMetricsGroup**](AssetProtectionMetricsGroup.md) |  | [optional] 
**Unprotected** | [**AssetProtectionMetricsGroup**](AssetProtectionMetricsGroup.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetProtectionMetricsCollection = Initialize-PpdmApiReferenceAssetProtectionMetricsCollection  -BucketName null `
 -Excluded null `
 -Protected null `
 -Total null `
 -Unprotected null
```

- Convert the resource to JSON
```powershell
$AssetProtectionMetricsCollection | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

