# GetPlanResponseForPage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The plan ID. | 
**IssueSources** | [**GetIssueSourceResponse[]**](GetIssueSourceResponse.md) | The issue sources included in the plan. | [optional] 
**Name** | **String** | The plan name. | 
**ScenarioId** | **String** | Default scenario ID. | 
**Status** | **String** | The plan status. This is &quot;&quot;Active&quot;&quot;, &quot;&quot;Trashed&quot;&quot; or &quot;&quot;Archived&quot;&quot;. | 

## Examples

- Prepare the resource
```powershell
$GetPlanResponseForPage = Initialize-JiraApiReferenceGetPlanResponseForPage  -Id null `
 -IssueSources null `
 -Name null `
 -ScenarioId null `
 -Status null
```

- Convert the resource to JSON
```powershell
$GetPlanResponseForPage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

