# WorkflowSchemeUsageDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The workflow ID. | [optional] 
**WorkflowSchemes** | [**WorkflowSchemeUsagePage**](WorkflowSchemeUsagePage.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowSchemeUsageDTO = Initialize-JiraApiReferenceWorkflowSchemeUsageDTO  -WorkflowId null `
 -WorkflowSchemes null
```

- Convert the resource to JSON
```powershell
$WorkflowSchemeUsageDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

