# JiraWorkflowPreviewStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the status. | [optional] 
**Id** | **String** | The ID of the status. | [optional] 
**Name** | **String** | The name of the status. | [optional] 
**RawName** | **String** | The raw name of the status. | [optional] 
**Scope** | [**WorkflowPreviewScope**](WorkflowPreviewScope.md) |  | [optional] 
**StatusCategory** | **String** | The category of the status. | [optional] 
**StatusReference** | **String** | The reference of the status. Unique within this response but not guaranteed to be stable across requests. | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraWorkflowPreviewStatus = Initialize-JiraApiReferenceJiraWorkflowPreviewStatus  -Description null `
 -Id null `
 -Name null `
 -RawName null `
 -Scope null `
 -StatusCategory null `
 -StatusReference null
```

- Convert the resource to JSON
```powershell
$JiraWorkflowPreviewStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

