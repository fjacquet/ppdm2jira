# ComponentHealthMetric
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ComponentId** | **String** | Component ID. | [optional] 
**ComponentName** | **String** | Component name. | [optional] 
**ComponentType** | [**HealthComponentType**](HealthComponentType.md) |  | [optional] 
**HealthCategories** | [**ComponentHealthCategory[]**](ComponentHealthCategory.md) | Components health categories collection. | [optional] 
**IssuesCount** | **Int32** | Number of health effecting issues. | [optional] 
**MetricGroupId** | **String** | Health metric group identifier. | [optional] 
**PostedTime** | **System.DateTime** | The creation time of the health metric. | [optional] 
**Score** | **Int32** | Health score. | [optional] 
**ScoreDeduction** | **Int32** | Maximum health score deduction. | [optional] 
**Status** | [**HealthStatus**](HealthStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ComponentHealthMetric = Initialize-PpdmApiReferenceComponentHealthMetric  -ComponentId null `
 -ComponentName null `
 -ComponentType null `
 -HealthCategories null `
 -IssuesCount null `
 -MetricGroupId null `
 -PostedTime null `
 -Score null `
 -ScoreDeduction null `
 -Status null
```

- Convert the resource to JSON
```powershell
$ComponentHealthMetric | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

