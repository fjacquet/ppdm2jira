# WorkflowAssociationStatusMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewStatusId** | **String** |  | [optional] 
**OldStatusId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowAssociationStatusMapping = Initialize-JiraApiReferenceWorkflowAssociationStatusMapping  -NewStatusId null `
 -OldStatusId null
```

- Convert the resource to JSON
```powershell
$WorkflowAssociationStatusMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

