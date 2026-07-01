# WorkflowDocumentVersionBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The version UUID. | [optional] 
**VersionNumber** | **Int64** | The version number. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowDocumentVersionBean = Initialize-JiraApiReferenceWorkflowDocumentVersionBean  -Id null `
 -VersionNumber null
```

- Convert the resource to JSON
```powershell
$WorkflowDocumentVersionBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

