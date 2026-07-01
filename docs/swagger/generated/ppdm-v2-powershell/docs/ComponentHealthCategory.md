# ComponentHealthCategory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssuesCount** | **Int32** | Number of health effecting issues for this category. | 
**Name** | [**HealthCategoryType**](HealthCategoryType.md) |  | 
**Score** | **Int32** | Health score. | 
**ScoreDeduction** | **Int32** | Maximum health score deduction. | 
**Status** | [**HealthStatus**](HealthStatus.md) |  | 

## Examples

- Prepare the resource
```powershell
$ComponentHealthCategory = Initialize-PpdmApiReferenceComponentHealthCategory  -IssuesCount null `
 -Name null `
 -Score null `
 -ScoreDeduction null `
 -Status null
```

- Convert the resource to JSON
```powershell
$ComponentHealthCategory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

