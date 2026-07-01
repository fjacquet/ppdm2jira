# WorkflowDocumentStatusDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Scope** | [**WorkflowScope**](WorkflowScope.md) |  | [optional] 
**StatusCategory** | **String** |  | [optional] 
**StatusReference** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowDocumentStatusDTO = Initialize-JiraApiReferenceWorkflowDocumentStatusDTO  -Description null `
 -Id null `
 -Name null `
 -Scope null `
 -StatusCategory null `
 -StatusReference null
```

- Convert the resource to JSON
```powershell
$WorkflowDocumentStatusDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

