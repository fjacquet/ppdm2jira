# WorkflowCreateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Scope** | [**WorkflowScope**](WorkflowScope.md) |  | [optional] 
**Statuses** | [**WorkflowStatusUpdate[]**](WorkflowStatusUpdate.md) | The statuses to associate with the workflows. | [optional] 
**Workflows** | [**WorkflowCreate[]**](WorkflowCreate.md) | The details of the workflows to create. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowCreateRequest = Initialize-JiraApiReferenceWorkflowCreateRequest  -Scope null `
 -Statuses null `
 -Workflows null
```

- Convert the resource to JSON
```powershell
$WorkflowCreateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

