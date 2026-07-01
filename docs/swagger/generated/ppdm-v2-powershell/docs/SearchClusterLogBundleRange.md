# SearchClusterLogBundleRange
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndDate** | **String** | Range end date. | 
**StartDate** | **String** | Range start date. | 

## Examples

- Prepare the resource
```powershell
$SearchClusterLogBundleRange = Initialize-PpdmApiReferenceSearchClusterLogBundleRange  -EndDate null `
 -StartDate null
```

- Convert the resource to JSON
```powershell
$SearchClusterLogBundleRange | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

