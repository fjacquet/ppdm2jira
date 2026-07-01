# CreatePlanOnlyTeamRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Capacity** | **Double** | The capacity for the plan-only team. | [optional] 
**IssueSourceId** | **Int64** | The ID of the issue source for the plan-only team. | [optional] 
**MemberAccountIds** | **String[]** | The account IDs of the plan-only team members. | [optional] 
**Name** | **String** | The plan-only team name. | 
**PlanningStyle** | **String** | The planning style for the plan-only team. This must be &quot;&quot;Scrum&quot;&quot; or &quot;&quot;Kanban&quot;&quot;. | 
**SprintLength** | **Int64** | The sprint length for the plan-only team. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePlanOnlyTeamRequest = Initialize-JiraApiReferenceCreatePlanOnlyTeamRequest  -Capacity null `
 -IssueSourceId null `
 -MemberAccountIds null `
 -Name null `
 -PlanningStyle null `
 -SprintLength null
```

- Convert the resource to JSON
```powershell
$CreatePlanOnlyTeamRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

