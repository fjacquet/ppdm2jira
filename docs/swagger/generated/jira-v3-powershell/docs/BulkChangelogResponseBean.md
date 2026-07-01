# BulkChangelogResponseBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueChangeLogs** | [**IssueChangeLog[]**](IssueChangeLog.md) | The list of issues changelogs. | [optional] [readonly] 
**NextPageToken** | **String** | Continuation token to fetch the next page. If this result represents the last or the only page, this token will be null. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$BulkChangelogResponseBean = Initialize-JiraApiReferenceBulkChangelogResponseBean  -IssueChangeLogs null `
 -NextPageToken null
```

- Convert the resource to JSON
```powershell
$BulkChangelogResponseBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

