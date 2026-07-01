# SearchAndReconcileResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsLast** | **Boolean** | Indicates whether this is the last page of the paginated response. | [optional] [readonly] 
**Issues** | [**IssueBean[]**](IssueBean.md) | The list of issues found by the search or reconsiliation. | [optional] [readonly] 
**Names** | **System.Collections.Hashtable** | The ID and name of each field in the search results. | [optional] [readonly] 
**NextPageToken** | **String** | Continuation token to fetch the next page. If this result represents the last or the only page this token will be null. This token will expire in 7 days. | [optional] [readonly] 
**Schema** | [**System.Collections.Hashtable**](JsonTypeBean.md) | The schema describing the field types in the search results. | [optional] [readonly] 
**Warnings** | [**SearchWarning[]**](SearchWarning.md) | Experimental. Warnings generated during the search, e.g. when a JQL clause exceeded its argument limit or when the result set was truncated due to an ingestion limit. This field is currently rolling out behind a feature flag and may be absent, empty, or change shape without notice until generally available. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$SearchAndReconcileResults = Initialize-JiraApiReferenceSearchAndReconcileResults  -IsLast null `
 -Issues null `
 -Names null `
 -NextPageToken null `
 -Schema null `
 -Warnings null
```

- Convert the resource to JSON
```powershell
$SearchAndReconcileResults | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

