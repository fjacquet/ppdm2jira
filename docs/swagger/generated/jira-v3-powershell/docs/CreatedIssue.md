# CreatedIssue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the created issue or subtask. | [optional] [readonly] 
**Key** | **String** | The key of the created issue or subtask. | [optional] [readonly] 
**Self** | **String** | The URL of the created issue or subtask. | [optional] [readonly] 
**Transition** | [**NestedResponse**](NestedResponse.md) | The response code and messages related to any requested transition. | [optional] [readonly] 
**Watchers** | [**NestedResponse**](NestedResponse.md) | The response code and messages related to any requested watchers. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$CreatedIssue = Initialize-JiraApiReferenceCreatedIssue  -Id null `
 -Key null `
 -Self null `
 -Transition null `
 -Watchers null
```

- Convert the resource to JSON
```powershell
$CreatedIssue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

