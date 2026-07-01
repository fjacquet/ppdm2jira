# WorkflowStatusLayoutPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**X** | **Double** | The x coordinate of the status. | [optional] 
**Y** | **Double** | The y coordinate of the status. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowStatusLayoutPayload = Initialize-JiraApiReferenceWorkflowStatusLayoutPayload  -X 1 `
 -Y 2
```

- Convert the resource to JSON
```powershell
$WorkflowStatusLayoutPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

