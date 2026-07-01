# WorkflowStatusUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the status. | [optional] 
**Id** | **String** | The ID of the status. When reusing an existing status, this field should be provided. | [optional] 
**Name** | **String** | The name of the status. | 
**StatusCategory** | **String** | The category of the status. | 
**StatusReference** | **String** | The reference of the status. If adding a new status to a team-managed workflow, this must be a UUID (for company-managed a UUID is not needed). | 

## Examples

- Prepare the resource
```powershell
$WorkflowStatusUpdate = Initialize-JiraApiReferenceWorkflowStatusUpdate  -Description null `
 -Id null `
 -Name null `
 -StatusCategory null `
 -StatusReference null
```

- Convert the resource to JSON
```powershell
$WorkflowStatusUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

