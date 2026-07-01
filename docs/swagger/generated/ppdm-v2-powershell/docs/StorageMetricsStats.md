# StorageMetricsStats
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CriticalSystemsCount** | **Int32** |  | [optional] 
**NonCriticalSystemsCount** | **Int32** |  | [optional] 
**SystemsBySpaceUtilization** | [**StorageMetricsDetail[]**](StorageMetricsDetail.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageMetricsStats = Initialize-PpdmApiReferenceStorageMetricsStats  -CriticalSystemsCount null `
 -NonCriticalSystemsCount null `
 -SystemsBySpaceUtilization null
```

- Convert the resource to JSON
```powershell
$StorageMetricsStats | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

