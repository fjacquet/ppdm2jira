# ConditionGroupPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConditionGroup** | [**ConditionGroupPayload[]**](ConditionGroupPayload.md) | The nested conditions of the condition group. | [optional] 
**Conditions** | [**RulePayload[]**](RulePayload.md) | The rules for this condition. | [optional] 
**Operation** | **String** | Determines how the conditions in the group are evaluated. Accepts either &#x60;ANY&#x60; or &#x60;ALL&#x60;. If &#x60;ANY&#x60; is used, at least one condition in the group must be true for the group to evaluate to true. If &#x60;ALL&#x60; is used, all conditions in the group must be true for the group to evaluate to true. | [optional] 

## Examples

- Prepare the resource
```powershell
$ConditionGroupPayload = Initialize-JiraApiReferenceConditionGroupPayload  -ConditionGroup null `
 -Conditions null `
 -Operation null
```

- Convert the resource to JSON
```powershell
$ConditionGroupPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

