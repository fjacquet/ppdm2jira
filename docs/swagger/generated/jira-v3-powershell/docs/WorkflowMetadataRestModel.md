# WorkflowMetadataRestModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The description of the workflow. | 
**Id** | **String** | The ID of the workflow. | 
**Name** | **String** | The name of the workflow. | 
**Version** | [**DocumentVersion**](DocumentVersion.md) |  | 

## Examples

- Prepare the resource
```powershell
$WorkflowMetadataRestModel = Initialize-JiraApiReferenceWorkflowMetadataRestModel  -Description null `
 -Id null `
 -Name null `
 -Version null
```

- Convert the resource to JSON
```powershell
$WorkflowMetadataRestModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

