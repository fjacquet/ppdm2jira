# WorkflowPreviewResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Statuses** | [**JiraWorkflowPreviewStatus[]**](JiraWorkflowPreviewStatus.md) | The list of statuses referenced by the workflows. | [optional] 
**Workflows** | [**WorkflowPreview[]**](WorkflowPreview.md) | The list of workflows. The workflows are returned in the same order as specified in the request. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowPreviewResponse = Initialize-JiraApiReferenceWorkflowPreviewResponse  -Statuses null `
 -Workflows null
```

- Convert the resource to JSON
```powershell
$WorkflowPreviewResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

