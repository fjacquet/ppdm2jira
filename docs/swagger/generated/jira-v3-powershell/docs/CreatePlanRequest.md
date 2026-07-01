# CreatePlanRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CrossProjectReleases** | [**CreateCrossProjectReleaseRequest[]**](CreateCrossProjectReleaseRequest.md) | The cross-project releases to include in the plan. | [optional] 
**CustomFields** | [**CreateCustomFieldRequest[]**](CreateCustomFieldRequest.md) | The custom fields for the plan. | [optional] 
**ExclusionRules** | [**CreateExclusionRulesRequest**](CreateExclusionRulesRequest.md) | The exclusion rules for the plan. | [optional] 
**IssueSources** | [**CreateIssueSourceRequest[]**](CreateIssueSourceRequest.md) | The issue sources to include in the plan. | 
**LeadAccountId** | **String** | The account ID of the plan lead. | [optional] 
**Name** | **String** | The plan name. | 
**Permissions** | [**CreatePermissionRequest[]**](CreatePermissionRequest.md) | The permissions for the plan. | [optional] 
**Scheduling** | [**CreateSchedulingRequest**](CreateSchedulingRequest.md) | The scheduling settings for the plan. | 

## Examples

- Prepare the resource
```powershell
$CreatePlanRequest = Initialize-JiraApiReferenceCreatePlanRequest  -CrossProjectReleases null `
 -CustomFields null `
 -ExclusionRules null `
 -IssueSources null `
 -LeadAccountId null `
 -Name null `
 -Permissions null `
 -Scheduling null
```

- Convert the resource to JSON
```powershell
$CreatePlanRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

