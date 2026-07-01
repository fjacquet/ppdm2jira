# WorkflowHistoryListRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | **String** | The id of the workflow to read the history for. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowHistoryListRequest = Initialize-JiraApiReferenceWorkflowHistoryListRequest  -WorkflowId null
```

- Convert the resource to JSON
```powershell
$WorkflowHistoryListRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

