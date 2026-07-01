# CreateExclusionRulesRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueIds** | **Int64[]** | The IDs of the issues to exclude from the plan. | [optional] 
**IssueTypeIds** | **Int64[]** | The IDs of the issue types to exclude from the plan. | [optional] 
**NumberOfDaysToShowCompletedIssues** | **Int32** | Issues completed this number of days ago will be excluded from the plan. | [optional] 
**ReleaseIds** | **Int64[]** | The IDs of the releases to exclude from the plan. | [optional] 
**WorkStatusCategoryIds** | **Int64[]** | The IDs of the work status categories to exclude from the plan. | [optional] 
**WorkStatusIds** | **Int64[]** | The IDs of the work statuses to exclude from the plan. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateExclusionRulesRequest = Initialize-JiraApiReferenceCreateExclusionRulesRequest  -IssueIds null `
 -IssueTypeIds null `
 -NumberOfDaysToShowCompletedIssues null `
 -ReleaseIds null `
 -WorkStatusCategoryIds null `
 -WorkStatusIds null
```

- Convert the resource to JSON
```powershell
$CreateExclusionRulesRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

