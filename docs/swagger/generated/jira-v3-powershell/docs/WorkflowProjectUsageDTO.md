# WorkflowProjectUsageDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Projects** | [**ProjectUsagePage**](ProjectUsagePage.md) |  | [optional] 
**WorkflowId** | **String** | The workflow ID. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowProjectUsageDTO = Initialize-JiraApiReferenceWorkflowProjectUsageDTO  -Projects null `
 -WorkflowId null
```

- Convert the resource to JSON
```powershell
$WorkflowProjectUsageDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

