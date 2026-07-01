# WorkflowHistoryReadRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Version** | **Int64** |  | [optional] 
**WorkflowId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowHistoryReadRequest = Initialize-JiraApiReferenceWorkflowHistoryReadRequest  -Version null `
 -WorkflowId null
```

- Convert the resource to JSON
```powershell
$WorkflowHistoryReadRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

