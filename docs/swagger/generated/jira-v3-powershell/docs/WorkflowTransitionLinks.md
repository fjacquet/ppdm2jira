# WorkflowTransitionLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FromPort** | **Int32** | The port that the transition starts from. | [optional] 
**FromStatusReference** | **String** | The status that the transition starts from. | [optional] 
**ToPort** | **Int32** | The port that the transition goes to. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowTransitionLinks = Initialize-JiraApiReferenceWorkflowTransitionLinks  -FromPort null `
 -FromStatusReference null `
 -ToPort null
```

- Convert the resource to JSON
```powershell
$WorkflowTransitionLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

