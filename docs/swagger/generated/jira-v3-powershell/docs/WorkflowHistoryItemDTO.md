# WorkflowHistoryItemDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsIntermediate** | **Boolean** | Whether the version is an intermediate workflow state, sometimes created during workflow updates. | [optional] 
**WorkflowId** | **String** |  | [optional] 
**WorkflowVersion** | **Int64** |  | [optional] 
**WrittenAt** | **String** | The timestamp when this workflow version was created. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowHistoryItemDTO = Initialize-JiraApiReferenceWorkflowHistoryItemDTO  -IsIntermediate null `
 -WorkflowId null `
 -WorkflowVersion null `
 -WrittenAt null
```

- Convert the resource to JSON
```powershell
$WorkflowHistoryItemDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

