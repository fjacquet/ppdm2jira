# WorkflowPreview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the workflow. | [optional] 
**Id** | **String** | The ID of the workflow. | [optional] 
**LoopedTransitionContainerLayout** | [**WorkflowPreviewLayout**](WorkflowPreviewLayout.md) |  | [optional] 
**Name** | **String** | The name of the workflow. | [optional] 
**QueryContext** | [**ProjectIssueTypeQueryContext[]**](ProjectIssueTypeQueryContext.md) | The project and issue type context for this workflow query. | [optional] 
**Scope** | [**WorkflowPreviewScope**](WorkflowPreviewScope.md) |  | [optional] 
**StartPointLayout** | [**WorkflowPreviewLayout**](WorkflowPreviewLayout.md) |  | [optional] 
**Statuses** | [**WorkflowPreviewStatus[]**](WorkflowPreviewStatus.md) | The statuses referenced in this workflow. | [optional] 
**Transitions** | [**TransitionPreview[]**](TransitionPreview.md) | The transitions of the workflow. | [optional] 
**Version** | [**WorkflowDocumentVersionBean**](WorkflowDocumentVersionBean.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowPreview = Initialize-JiraApiReferenceWorkflowPreview  -Description null `
 -Id null `
 -LoopedTransitionContainerLayout null `
 -Name null `
 -QueryContext null `
 -Scope null `
 -StartPointLayout null `
 -Statuses null `
 -Transitions null `
 -Version null
```

- Convert the resource to JSON
```powershell
$WorkflowPreview | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

