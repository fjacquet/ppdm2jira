# ActivityStateMetrics
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bucket** | [**ActivityStateBucket**](ActivityStateBucket.md) |  | [optional] 
**Count** | **Int64** | The number of activities in the given state or status. | [optional] 
**Name** | [**ActivityStateMetricsName**](ActivityStateMetricsName.md) |  | [optional] 
**Percentage** | **Double** | The percentage of the activities at the given state or status, relative to the total amount of activities returned in this response. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActivityStateMetrics = Initialize-PpdmApiReferenceActivityStateMetrics  -Bucket null `
 -Count null `
 -Name null `
 -Percentage null
```

- Convert the resource to JSON
```powershell
$ActivityStateMetrics | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

