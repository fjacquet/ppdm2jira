# GetTeamResponseForPage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The team ID. | 
**Name** | **String** | The team name. This is returned if the type is &quot;&quot;PlanOnly&quot;&quot;. | [optional] 
**Type** | **String** | The team type. This is &quot;&quot;PlanOnly&quot;&quot; or &quot;&quot;Atlassian&quot;&quot;. | 

## Examples

- Prepare the resource
```powershell
$GetTeamResponseForPage = Initialize-JiraApiReferenceGetTeamResponseForPage  -Id null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$GetTeamResponseForPage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

