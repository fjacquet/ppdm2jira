# IssueError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ErrorMessage** | **String** | The error that occurred when fetching this issue. | [optional] [readonly] 
**Id** | **String** | The ID of the issue. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueError = Initialize-JiraApiReferenceIssueError  -ErrorMessage null `
 -Id null
```

- Convert the resource to JSON
```powershell
$IssueError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

