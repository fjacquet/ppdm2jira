# JExpEvaluateIssuesJqlMetaDataBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsLast** | **Boolean** | Indicates whether this is the last page of the paginated response. | [optional] [readonly] 
**NextPageToken** | **String** | Next Page token for the next page of issues. | 

## Examples

- Prepare the resource
```powershell
$JExpEvaluateIssuesJqlMetaDataBean = Initialize-JiraApiReferenceJExpEvaluateIssuesJqlMetaDataBean  -IsLast null `
 -NextPageToken null
```

- Convert the resource to JSON
```powershell
$JExpEvaluateIssuesJqlMetaDataBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

