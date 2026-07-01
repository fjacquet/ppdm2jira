# WorkflowSchemePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultWorkflow** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Description** | **String** | The description of the workflow scheme | [optional] 
**ExplicitMappings** | [**System.Collections.Hashtable**](ProjectCreateResourceIdentifier.md) | Association between issuetypes and workflows | [optional] 
**Name** | **String** | The name of the workflow scheme | [optional] 
**OnConflict** | **String** | The strategy to use if there is a conflict with another workflow scheme | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowSchemePayload = Initialize-JiraApiReferenceWorkflowSchemePayload  -DefaultWorkflow null `
 -Description null `
 -ExplicitMappings null `
 -Name null `
 -OnConflict null `
 -Pcri null
```

- Convert the resource to JSON
```powershell
$WorkflowSchemePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

