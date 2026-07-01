# IssueChangeLog
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChangeHistories** | [**Changelog[]**](Changelog.md) | List of changelogs that belongs to given issueId. | [optional] [readonly] 
**IssueId** | **String** | The ID of the issue. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueChangeLog = Initialize-JiraApiReferenceIssueChangeLog  -ChangeHistories null `
 -IssueId null
```

- Convert the resource to JSON
```powershell
$IssueChangeLog | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

