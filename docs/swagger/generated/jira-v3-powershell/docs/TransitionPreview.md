# TransitionPreview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Actions** | [**PreviewRuleConfiguration[]**](PreviewRuleConfiguration.md) | The post-functions of the transition. | [optional] 
**Conditions** | [**PreviewConditionGroupConfiguration**](PreviewConditionGroupConfiguration.md) |  | [optional] 
**CustomIssueEventId** | **String** | The custom issue event ID for the transition. | [optional] 
**Description** | **String** | The description of the transition. | [optional] 
**Id** | **String** | The ID of the transition. | [optional] 
**Links** | [**TransitionLink[]**](TransitionLink.md) | The statuses the transition can start from, and the mapping of ports between the statuses. | [optional] 
**Name** | **String** | The name of the transition. | [optional] 
**ToStatusReference** | **String** | The status the transition goes to. | [optional] 
**TransitionScreen** | [**PreviewRuleConfiguration**](PreviewRuleConfiguration.md) |  | [optional] 
**Triggers** | [**PreviewTrigger[]**](PreviewTrigger.md) | The triggers of the transition. | [optional] 
**Type** | **String** | The transition type. | [optional] 
**Validators** | [**PreviewRuleConfiguration[]**](PreviewRuleConfiguration.md) | The validators of the transition. | [optional] 

## Examples

- Prepare the resource
```powershell
$TransitionPreview = Initialize-JiraApiReferenceTransitionPreview  -Actions null `
 -Conditions null `
 -CustomIssueEventId null `
 -Description null `
 -Id null `
 -Links null `
 -Name null `
 -ToStatusReference null `
 -TransitionScreen null `
 -Triggers null `
 -Type null `
 -Validators null
```

- Convert the resource to JSON
```powershell
$TransitionPreview | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

