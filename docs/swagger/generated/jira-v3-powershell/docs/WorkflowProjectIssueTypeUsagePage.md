# WorkflowProjectIssueTypeUsagePage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextPageToken** | **String** | Token for the next page of issue type usages. | [optional] 
**Values** | [**WorkflowProjectIssueTypeUsage[]**](WorkflowProjectIssueTypeUsage.md) | The list of issue types. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowProjectIssueTypeUsagePage = Initialize-JiraApiReferenceWorkflowProjectIssueTypeUsagePage  -NextPageToken null `
 -Values null
```

- Convert the resource to JSON
```powershell
$WorkflowProjectIssueTypeUsagePage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

