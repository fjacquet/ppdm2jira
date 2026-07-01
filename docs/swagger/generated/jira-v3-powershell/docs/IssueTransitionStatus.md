# IssueTransitionStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StatusId** | **Int32** | The unique ID of the status. | [optional] [readonly] 
**StatusName** | **String** | The name of the status. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueTransitionStatus = Initialize-JiraApiReferenceIssueTransitionStatus  -StatusId null `
 -StatusName null
```

- Convert the resource to JSON
```powershell
$IssueTransitionStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

