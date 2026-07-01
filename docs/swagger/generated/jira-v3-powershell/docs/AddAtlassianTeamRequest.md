# AddAtlassianTeamRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Capacity** | **Double** | The capacity for the Atlassian team. | [optional] 
**Id** | **String** | The Atlassian team ID. | 
**IssueSourceId** | **Int64** | The ID of the issue source for the Atlassian team. | [optional] 
**PlanningStyle** | **String** | The planning style for the Atlassian team. This must be &quot;&quot;Scrum&quot;&quot; or &quot;&quot;Kanban&quot;&quot;. | 
**SprintLength** | **Int64** | The sprint length for the Atlassian team. | [optional] 

## Examples

- Prepare the resource
```powershell
$AddAtlassianTeamRequest = Initialize-JiraApiReferenceAddAtlassianTeamRequest  -Capacity null `
 -Id null `
 -IssueSourceId null `
 -PlanningStyle null `
 -SprintLength null
```

- Convert the resource to JSON
```powershell
$AddAtlassianTeamRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

