# WorkflowCapabilityPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Statuses** | [**StatusPayload[]**](StatusPayload.md) | The statuses for the workflow | [optional] 
**WorkflowScheme** | [**WorkflowSchemePayload**](WorkflowSchemePayload.md) |  | [optional] 
**Workflows** | [**WorkflowPayload[]**](WorkflowPayload.md) | The transitions for the workflow | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowCapabilityPayload = Initialize-JiraApiReferenceWorkflowCapabilityPayload  -Statuses null `
 -WorkflowScheme null `
 -Workflows null
```

- Convert the resource to JSON
```powershell
$WorkflowCapabilityPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

