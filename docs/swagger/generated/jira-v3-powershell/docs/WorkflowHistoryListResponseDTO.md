# WorkflowHistoryListResponseDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Entries** | [**WorkflowHistoryItemDTO[]**](WorkflowHistoryItemDTO.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowHistoryListResponseDTO = Initialize-JiraApiReferenceWorkflowHistoryListResponseDTO  -Entries null
```

- Convert the resource to JSON
```powershell
$WorkflowHistoryListResponseDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

