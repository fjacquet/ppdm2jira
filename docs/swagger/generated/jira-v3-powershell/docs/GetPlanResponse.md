# GetPlanResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CrossProjectReleases** | [**GetCrossProjectReleaseResponse[]**](GetCrossProjectReleaseResponse.md) | The cross-project releases included in the plan. | [optional] 
**CustomFields** | [**GetCustomFieldResponse[]**](GetCustomFieldResponse.md) | The custom fields for the plan. | [optional] 
**ExclusionRules** | [**GetExclusionRulesResponse**](GetExclusionRulesResponse.md) | The exclusion rules for the plan. | [optional] 
**Id** | **Int64** | The plan ID. | 
**IssueSources** | [**GetIssueSourceResponse[]**](GetIssueSourceResponse.md) | The issue sources included in the plan. | [optional] 
**LastSaved** | **String** | The date when the plan was last saved in UTC. | [optional] 
**LeadAccountId** | **String** | The account ID of the plan lead. | [optional] 
**Name** | **String** | The plan name. | [optional] 
**Permissions** | [**GetPermissionResponse[]**](GetPermissionResponse.md) | The permissions for the plan. | [optional] 
**Scheduling** | [**GetSchedulingResponse**](GetSchedulingResponse.md) | The scheduling settings for the plan. | 
**Status** | **String** | The plan status. This is &quot;&quot;Active&quot;&quot;, &quot;&quot;Trashed&quot;&quot; or &quot;&quot;Archived&quot;&quot;. | 

## Examples

- Prepare the resource
```powershell
$GetPlanResponse = Initialize-JiraApiReferenceGetPlanResponse  -CrossProjectReleases null `
 -CustomFields null `
 -ExclusionRules null `
 -Id null `
 -IssueSources null `
 -LastSaved null `
 -LeadAccountId null `
 -Name null `
 -Permissions null `
 -Scheduling null `
 -Status null
```

- Convert the resource to JSON
```powershell
$GetPlanResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

