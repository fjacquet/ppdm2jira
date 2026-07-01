# TransitionPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Actions** | [**RulePayload[]**](RulePayload.md) | The actions that are performed when the transition is made | [optional] 
**Conditions** | [**ConditionGroupPayload**](ConditionGroupPayload.md) |  | [optional] 
**CustomIssueEventId** | **String** | Mechanism in Jira for triggering certain actions, like notifications, automations, etc. Unless a custom notification scheme is configure, it&#39;s better not to provide any value here | [optional] 
**Description** | **String** | The description of the transition | [optional] 
**VarFrom** | [**FromLayoutPayload[]**](FromLayoutPayload.md) | The statuses that the transition can be made from | [optional] 
**Id** | **Int32** | The id of the transition | [optional] 
**Name** | **String** | The name of the transition | [optional] 
**Properties** | **System.Collections.Hashtable** | The properties of the transition | [optional] 
**To** | [**ToLayoutPayload**](ToLayoutPayload.md) |  | [optional] 
**TransitionScreen** | [**RulePayload**](RulePayload.md) |  | [optional] 
**Triggers** | [**RulePayload[]**](RulePayload.md) | The triggers that are performed when the transition is made | [optional] 
**Type** | **String** | The type of the transition | [optional] 
**Validators** | [**RulePayload[]**](RulePayload.md) | The validators that are performed when the transition is made | [optional] 

## Examples

- Prepare the resource
```powershell
$TransitionPayload = Initialize-JiraApiReferenceTransitionPayload  -Actions null `
 -Conditions null `
 -CustomIssueEventId null `
 -Description null `
 -VarFrom null `
 -Id null `
 -Name null `
 -Properties null `
 -To null `
 -TransitionScreen null `
 -Triggers null `
 -Type null `
 -Validators null
```

- Convert the resource to JSON
```powershell
$TransitionPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

