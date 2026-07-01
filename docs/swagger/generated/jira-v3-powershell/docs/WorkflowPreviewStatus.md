# WorkflowPreviewStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalConfiguration** | [**ApprovalConfigurationPreview**](ApprovalConfigurationPreview.md) |  | [optional] 
**Deprecated** | **Boolean** | Whether the status is deprecated. | [optional] 
**Layout** | [**WorkflowPreviewLayout**](WorkflowPreviewLayout.md) |  | [optional] 
**StatusReference** | **String** | The reference of the status. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowPreviewStatus = Initialize-JiraApiReferenceWorkflowPreviewStatus  -ApprovalConfiguration null `
 -Deprecated null `
 -Layout null `
 -StatusReference null
```

- Convert the resource to JSON
```powershell
$WorkflowPreviewStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

