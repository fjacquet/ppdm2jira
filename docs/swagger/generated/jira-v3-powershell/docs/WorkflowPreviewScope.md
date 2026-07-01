# WorkflowPreviewScope
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Project** | [**WorkflowProjectIdScope**](WorkflowProjectIdScope.md) |  | [optional] 
**Type** | **String** | The scope of the workflow. &#x60;GLOBAL&#x60; for company-managed projects and &#x60;PROJECT&#x60; for team-managed projects. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowPreviewScope = Initialize-JiraApiReferenceWorkflowPreviewScope  -Project null `
 -Type null
```

- Convert the resource to JSON
```powershell
$WorkflowPreviewScope | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

