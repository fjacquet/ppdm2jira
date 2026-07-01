# AssetProtectionMetrics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContentSummary** | [**AssetProtectionMetricsContentSummary**](AssetProtectionMetricsContentSummary.md) |  | [optional] 
**Contents** | [**AssetProtectionMetricsCollection[]**](AssetProtectionMetricsCollection.md) | Asset protection metrics collection for each asset type. The &quot;&quot;bucketName&quot;&quot; is the asset type, such as &quot;&quot;FILE_SYSTEM&quot;&quot;, &quot;&quot;NAS_SHARE&quot;&quot;, &quot;&quot;MICROSOFT_SQL_DATABASE&quot;&quot; or &quot;&quot;VMWARE_VIRTUAL_MACHINE&quot;&quot;. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetProtectionMetrics = Initialize-PpdmApiReferenceAssetProtectionMetrics  -ContentSummary null `
 -Contents null
```

- Convert the resource to JSON
```powershell
$AssetProtectionMetrics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

