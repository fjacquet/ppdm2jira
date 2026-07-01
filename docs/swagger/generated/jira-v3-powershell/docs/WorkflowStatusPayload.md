# WorkflowStatusPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Layout** | [**WorkflowStatusLayoutPayload**](WorkflowStatusLayoutPayload.md) |  | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Properties** | **System.Collections.Hashtable** | The properties of the workflow status. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowStatusPayload = Initialize-JiraApiReferenceWorkflowStatusPayload  -Layout null `
 -Pcri null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$WorkflowStatusPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

