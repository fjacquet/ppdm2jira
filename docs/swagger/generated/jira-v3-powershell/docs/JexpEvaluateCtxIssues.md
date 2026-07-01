# JexpEvaluateCtxIssues
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Jql** | [**JexpEvaluateCtxJqlIssues**](JexpEvaluateCtxJqlIssues.md) | The JQL query that specifies the set of issues available in the Jira expression. | [optional] 

## Examples

- Prepare the resource
```powershell
$JexpEvaluateCtxIssues = Initialize-JiraApiReferenceJexpEvaluateCtxIssues  -Jql null
```

- Convert the resource to JSON
```powershell
$JexpEvaluateCtxIssues | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

