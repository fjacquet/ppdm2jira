# TransitionUpdateDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Actions** | [**WorkflowRuleConfiguration[]**](WorkflowRuleConfiguration.md) | The post-functions of the transition. | [optional] 
**Conditions** | [**ConditionGroupUpdate**](ConditionGroupUpdate.md) |  | [optional] 
**CustomIssueEventId** | **String** | The custom event ID of the transition. | [optional] 
**Description** | **String** | The description of the transition. | [optional] 
**Id** | **String** | The ID of the transition. | [optional] 
**Links** | [**WorkflowTransitionLinks[]**](WorkflowTransitionLinks.md) | The statuses the transition can start from, and the mapping of ports between the statuses. | [optional] 
**Name** | **String** | The name of the transition. | [optional] 
**Properties** | **System.Collections.Hashtable** | The properties of the transition. | [optional] 
**ToStatusReference** | **String** | The status the transition goes to. | [optional] 
**TransitionScreen** | [**WorkflowRuleConfiguration**](WorkflowRuleConfiguration.md) |  | [optional] 
**Triggers** | [**WorkflowTrigger[]**](WorkflowTrigger.md) | The triggers of the transition. | [optional] 
**Type** | **String** | The transition type. | [optional] 
**Validators** | [**WorkflowRuleConfiguration[]**](WorkflowRuleConfiguration.md) | The validators of the transition. | [optional] 

## Examples

- Prepare the resource
```powershell
$TransitionUpdateDTO = Initialize-JiraApiReferenceTransitionUpdateDTO  -Actions null `
 -Conditions null `
 -CustomIssueEventId null `
 -Description null `
 -Id null `
 -Links null `
 -Name null `
 -Properties null `
 -ToStatusReference null `
 -TransitionScreen null `
 -Triggers null `
 -Type null `
 -Validators null
```

- Convert the resource to JSON
```powershell
$TransitionUpdateDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

