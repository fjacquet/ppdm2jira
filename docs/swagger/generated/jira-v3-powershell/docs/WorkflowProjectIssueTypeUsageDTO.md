# WorkflowProjectIssueTypeUsageDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypes** | [**WorkflowProjectIssueTypeUsagePage**](WorkflowProjectIssueTypeUsagePage.md) |  | [optional] 
**ProjectId** | **String** | The ID of the project. | [optional] 
**WorkflowId** | **String** | The ID of the workflow. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowProjectIssueTypeUsageDTO = Initialize-JiraApiReferenceWorkflowProjectIssueTypeUsageDTO  -IssueTypes null `
 -ProjectId null `
 -WorkflowId null
```

- Convert the resource to JSON
```powershell
$WorkflowProjectIssueTypeUsageDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

