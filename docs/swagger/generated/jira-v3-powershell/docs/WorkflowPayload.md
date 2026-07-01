# WorkflowPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the workflow | [optional] 
**LoopedTransitionContainerLayout** | [**WorkflowStatusLayoutPayload**](WorkflowStatusLayoutPayload.md) |  | [optional] 
**Name** | **String** | The name of the workflow | [optional] 
**OnConflict** | **String** | The strategy to use if there is a conflict with another workflow | [optional] [default to "NEW"]
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**StartPointLayout** | [**WorkflowStatusLayoutPayload**](WorkflowStatusLayoutPayload.md) |  | [optional] 
**Statuses** | [**WorkflowStatusPayload[]**](WorkflowStatusPayload.md) | The statuses to be used in the workflow | [optional] 
**Transitions** | [**TransitionPayload[]**](TransitionPayload.md) | The transitions for the workflow | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowPayload = Initialize-JiraApiReferenceWorkflowPayload  -Description a software workflow `
 -LoopedTransitionContainerLayout null `
 -Name Software Simplified Workflow `
 -OnConflict null `
 -Pcri null `
 -StartPointLayout null `
 -Statuses null `
 -Transitions null
```

- Convert the resource to JSON
```powershell
$WorkflowPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

