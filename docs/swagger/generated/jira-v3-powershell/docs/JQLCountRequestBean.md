# JQLCountRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Jql** | **String** | A [JQL](https://confluence.atlassian.com/x/egORLQ) expression. For performance reasons, this parameter requires a bounded query. A bounded query is a query with a search restriction. | [optional] 

## Examples

- Prepare the resource
```powershell
$JQLCountRequestBean = Initialize-JiraApiReferenceJQLCountRequestBean  -Jql null
```

- Convert the resource to JSON
```powershell
$JQLCountRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

