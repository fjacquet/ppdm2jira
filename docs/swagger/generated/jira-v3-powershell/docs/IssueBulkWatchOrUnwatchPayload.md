# IssueBulkWatchOrUnwatchPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SelectedIssueIdsOrKeys** | **String[]** | List of issue IDs or keys which are to be bulk watched or unwatched. These IDs or keys can be from different projects and issue types. | 

## Examples

- Prepare the resource
```powershell
$IssueBulkWatchOrUnwatchPayload = Initialize-JiraApiReferenceIssueBulkWatchOrUnwatchPayload  -SelectedIssueIdsOrKeys null
```

- Convert the resource to JSON
```powershell
$IssueBulkWatchOrUnwatchPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

