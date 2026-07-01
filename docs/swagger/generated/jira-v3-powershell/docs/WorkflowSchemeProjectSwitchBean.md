# WorkflowSchemeProjectSwitchBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MappingsByIssueTypeOverride** | [**MappingsByIssueTypeOverride[]**](MappingsByIssueTypeOverride.md) | The mappings for migrating issues from old statuses to new statuses when switching from one workflow scheme to another. This field is required if any statuses in the current project&#39;s workflows would no longer exist in the target workflow scheme. Each mapping defines how to update issues from an old status to the corresponding new status in the issue’s new workflow. | [optional] 
**ProjectId** | **String** | The ID of the project to switch the workflow scheme for | [optional] 
**TargetSchemeId** | **String** | The ID of the target workflow scheme to switch to | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowSchemeProjectSwitchBean = Initialize-JiraApiReferenceWorkflowSchemeProjectSwitchBean  -MappingsByIssueTypeOverride null `
 -ProjectId 10001 `
 -TargetSchemeId 10002
```

- Convert the resource to JSON
```powershell
$WorkflowSchemeProjectSwitchBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

