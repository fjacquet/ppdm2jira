# SimplifiedIssueTransition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**To** | [**IssueTransitionStatus**](IssueTransitionStatus.md) | The issue status change of the transition. | [optional] [readonly] 
**TransitionId** | **Int32** | The unique ID of the transition. | [optional] [readonly] 
**TransitionName** | **String** | The name of the transition. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$SimplifiedIssueTransition = Initialize-JiraApiReferenceSimplifiedIssueTransition  -To null `
 -TransitionId null `
 -TransitionName null
```

- Convert the resource to JSON
```powershell
$SimplifiedIssueTransition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

