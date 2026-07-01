# WorkflowSchemeProjectUsageDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Projects** | [**ProjectUsagePage**](ProjectUsagePage.md) |  | [optional] 
**WorkflowSchemeId** | **String** | The workflow scheme ID. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowSchemeProjectUsageDTO = Initialize-JiraApiReferenceWorkflowSchemeProjectUsageDTO  -Projects null `
 -WorkflowSchemeId null
```

- Convert the resource to JSON
```powershell
$WorkflowSchemeProjectUsageDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

