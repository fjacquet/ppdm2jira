# StorageMetricsDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvailablePercentage** | **Int32** | The percent of storage available. | [optional] 
**AvailableSize** | **Double** | The amount of storage available. | [optional] 
**SystemName** | **String** | The system name. | [optional] 
**TotalSize** | **Double** | total amount of storage | [optional] 
**UsedPercentage** | **Int32** | The percentage of the storage used. | [optional] 
**UsedSize** | **Double** | The amount of storage used. | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageMetricsDetail = Initialize-PpdmApiReferenceStorageMetricsDetail  -AvailablePercentage null `
 -AvailableSize null `
 -SystemName null `
 -TotalSize null `
 -UsedPercentage null `
 -UsedSize null
```

- Convert the resource to JSON
```powershell
$StorageMetricsDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

