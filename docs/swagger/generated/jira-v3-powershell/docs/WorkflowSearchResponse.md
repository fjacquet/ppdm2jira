# WorkflowSearchResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsLast** | **Boolean** | Whether this is the last page. | [optional] 
**MaxResults** | **Int32** | The maximum number of items that could be returned. | [optional] 
**NextPage** | **String** | If there is another page of results, the URL of the next page. | [optional] 
**Self** | **String** | The URL of the page. | [optional] 
**StartAt** | **Int64** | The index of the first item returned. | [optional] 
**Statuses** | [**JiraWorkflowStatus[]**](JiraWorkflowStatus.md) | List of statuses. | [optional] 
**Total** | **Int64** | The number of items returned. | [optional] 
**Values** | [**JiraWorkflow[]**](JiraWorkflow.md) | List of workflows. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowSearchResponse = Initialize-JiraApiReferenceWorkflowSearchResponse  -IsLast null `
 -MaxResults null `
 -NextPage null `
 -Self null `
 -StartAt null `
 -Statuses null `
 -Total null `
 -Values null
```

- Convert the resource to JSON
```powershell
$WorkflowSearchResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

