# ApprovalConfigurationPreview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Active** | **String** | The active approval configuration. | [optional] 
**TransitionApproved** | **String** | The transition ID for approved state. | [optional] 
**TransitionRejected** | **String** | The transition ID for rejected state. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalConfigurationPreview = Initialize-JiraApiReferenceApprovalConfigurationPreview  -Active null `
 -TransitionApproved null `
 -TransitionRejected null
```

- Convert the resource to JSON
```powershell
$ApprovalConfigurationPreview | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

