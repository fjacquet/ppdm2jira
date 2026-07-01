# GetExclusionRulesResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueIds** | **Int64[]** | The IDs of the issues excluded from the plan. | [optional] 
**IssueTypeIds** | **Int64[]** | The IDs of the issue types excluded from the plan. | [optional] 
**NumberOfDaysToShowCompletedIssues** | **Int32** | Issues completed this number of days ago are excluded from the plan. | 
**ReleaseIds** | **Int64[]** | The IDs of the releases excluded from the plan. | [optional] 
**WorkStatusCategoryIds** | **Int64[]** | The IDs of the work status categories excluded from the plan. | [optional] 
**WorkStatusIds** | **Int64[]** | The IDs of the work statuses excluded from the plan. | [optional] 

## Examples

- Prepare the resource
```powershell
$GetExclusionRulesResponse = Initialize-JiraApiReferenceGetExclusionRulesResponse  -IssueIds null `
 -IssueTypeIds null `
 -NumberOfDaysToShowCompletedIssues null `
 -ReleaseIds null `
 -WorkStatusCategoryIds null `
 -WorkStatusIds null
```

- Convert the resource to JSON
```powershell
$GetExclusionRulesResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

