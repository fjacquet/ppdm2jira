# WorkflowDocumentDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**LastUpdateAuthorAAID** | **String** |  | [optional] 
**LoopedTransitionContainerLayout** | [**WorkflowLayout**](WorkflowLayout.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**Scope** | [**WorkflowScope**](WorkflowScope.md) |  | [optional] 
**StartPointLayout** | [**WorkflowLayout**](WorkflowLayout.md) |  | [optional] 
**Statuses** | [**WorkflowReferenceStatus[]**](WorkflowReferenceStatus.md) |  | [optional] 
**Transitions** | [**WorkflowTransitions[]**](WorkflowTransitions.md) |  | [optional] 
**Updated** | **String** |  | [optional] 
**Version** | [**DocumentVersion**](DocumentVersion.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowDocumentDTO = Initialize-JiraApiReferenceWorkflowDocumentDTO  -Created null `
 -Description null `
 -Id null `
 -LastUpdateAuthorAAID null `
 -LoopedTransitionContainerLayout null `
 -Name null `
 -Scope null `
 -StartPointLayout null `
 -Statuses null `
 -Transitions null `
 -Updated null `
 -Version null
```

- Convert the resource to JSON
```powershell
$WorkflowDocumentDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

