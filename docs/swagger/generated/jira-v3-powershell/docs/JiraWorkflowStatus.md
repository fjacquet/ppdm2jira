# JiraWorkflowStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the status. | [optional] 
**Id** | **String** | The ID of the status. | [optional] 
**Name** | **String** | The name of the status. | [optional] 
**Scope** | [**WorkflowScope**](WorkflowScope.md) |  | [optional] 
**StatusCategory** | **String** | The category of the status. | [optional] 
**StatusReference** | **String** | The reference of the status. | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraWorkflowStatus = Initialize-JiraApiReferenceJiraWorkflowStatus  -Description null `
 -Id null `
 -Name null `
 -Scope null `
 -StatusCategory null `
 -StatusReference null
```

- Convert the resource to JSON
```powershell
$JiraWorkflowStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

