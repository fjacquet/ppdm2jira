# SearchClusterLogBundleConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LogBundleRange** | [**SearchClusterLogBundleRange**](SearchClusterLogBundleRange.md) |  | 
**LogDirectory** | **String** | Location of the log directory. | 

## Examples

- Prepare the resource
```powershell
$SearchClusterLogBundleConfig = Initialize-PpdmApiReferenceSearchClusterLogBundleConfig  -LogBundleRange null `
 -LogDirectory null
```

- Convert the resource to JSON
```powershell
$SearchClusterLogBundleConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

