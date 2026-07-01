# JiraExpressionEvaluateRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Context** | [**JiraExpressionEvaluateContextBean**](JiraExpressionEvaluateContextBean.md) | The context in which the Jira expression is evaluated. | [optional] 
**Expression** | **String** | The Jira expression to evaluate. | 

## Examples

- Prepare the resource
```powershell
$JiraExpressionEvaluateRequestBean = Initialize-JiraApiReferenceJiraExpressionEvaluateRequestBean  -Context null `
 -Expression { key: issue.key, type: issue.issueType.name, links: issue.links.map(link &#x3D;&gt; link.linkedIssue.id) }
```

- Convert the resource to JSON
```powershell
$JiraExpressionEvaluateRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

