# BulkTransitionSubmitInput
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SelectedIssueIdsOrKeys** | **String[]** | List of all the issue IDs or keys that are to be bulk transitioned. | 
**TransitionId** | **String** | The ID of the transition that is to be performed on the issues. | 

## Examples

- Prepare the resource
```powershell
$BulkTransitionSubmitInput = Initialize-JiraApiReferenceBulkTransitionSubmitInput  -SelectedIssueIdsOrKeys null `
 -TransitionId null
```

- Convert the resource to JSON
```powershell
$BulkTransitionSubmitInput | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

