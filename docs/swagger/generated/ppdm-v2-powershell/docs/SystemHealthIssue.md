# SystemHealthIssue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ComponentId** | **String** | System component identifier. | 
**ComponentName** | **String** | System component name. | 
**ComponentType** | [**HealthComponentType**](HealthComponentType.md) |  | 
**DetailedDescription** | **String** | The detailed description of the alert message. | [optional] 
**HealthCategory** | [**HealthCategoryType**](HealthCategoryType.md) |  | 
**Id** | **String** | Health issue identifier. | 
**Message** | **String** | The message that the variable values are substituted with message arguments. | 
**MessageArgs** | **String[]** | The alert message arguments are the values for any substitution variables that are defined as part of the message. | 
**MessageID** | **String** | The unique message ID. | 
**MetricGroupId** | **String** | The associated health metric group identifier. | 
**PostedTime** | **System.DateTime** | The created time of the alert message. | 
**ResponseAction** | **String** | The response action for this alert message. | 
**ScoreDeduction** | **Int32** | Score deduction. | 
**Severity** | [**HealthIssueSeverity**](HealthIssueSeverity.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemHealthIssue = Initialize-PpdmApiReferenceSystemHealthIssue  -ComponentId null `
 -ComponentName null `
 -ComponentType null `
 -DetailedDescription null `
 -HealthCategory null `
 -Id null `
 -Message null `
 -MessageArgs null `
 -MessageID null `
 -MetricGroupId null `
 -PostedTime null `
 -ResponseAction null `
 -ScoreDeduction null `
 -Severity null
```

- Convert the resource to JSON
```powershell
$SystemHealthIssue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

