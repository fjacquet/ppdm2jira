# WorkflowPreviewRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeIds** | **String[]** | The list of issue type IDs. At most 25 issue type IDs can be specified. | [optional] 
**ProjectId** | **String** | The projectId parameter is required and will be used for permission checks. In addition, you must supply at least one of the following lookup terms: *workflowNames*, *workflowIds*, or *issueTypeIds*. The specified workflows must be associated with the given project. | 
**WorkflowIds** | **String[]** | The list of workflow IDs to be returned. At most 25 workflow IDs can be specified. | [optional] 
**WorkflowNames** | **String[]** | The list of workflow names to be returned. At most 25 workflow names can be specified. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowPreviewRequest = Initialize-JiraApiReferenceWorkflowPreviewRequest  -IssueTypeIds null `
 -ProjectId null `
 -WorkflowIds null `
 -WorkflowNames null
```

- Convert the resource to JSON
```powershell
$WorkflowPreviewRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

