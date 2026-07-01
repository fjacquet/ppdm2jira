# WorkflowHistoryReadResponseDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Statuses** | [**WorkflowDocumentStatusDTO[]**](WorkflowDocumentStatusDTO.md) |  | [optional] 
**Workflows** | [**WorkflowDocumentDTO[]**](WorkflowDocumentDTO.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowHistoryReadResponseDTO = Initialize-JiraApiReferenceWorkflowHistoryReadResponseDTO  -Statuses null `
 -Workflows null
```

- Convert the resource to JSON
```powershell
$WorkflowHistoryReadResponseDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

