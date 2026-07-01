# JExpEvaluateIssuesMetaBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Jql** | [**JExpEvaluateIssuesJqlMetaDataBean**](JExpEvaluateIssuesJqlMetaDataBean.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JExpEvaluateIssuesMetaBean = Initialize-JiraApiReferenceJExpEvaluateIssuesMetaBean  -Jql null
```

- Convert the resource to JSON
```powershell
$JExpEvaluateIssuesMetaBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

