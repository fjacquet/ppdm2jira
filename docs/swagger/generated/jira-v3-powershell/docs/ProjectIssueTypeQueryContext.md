# ProjectIssueTypeQueryContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypes** | **String[]** | The set of issue type IDs. | [optional] 
**Project** | **String** | The ID of the project. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectIssueTypeQueryContext = Initialize-JiraApiReferenceProjectIssueTypeQueryContext  -IssueTypes null `
 -Project null
```

- Convert the resource to JSON
```powershell
$ProjectIssueTypeQueryContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

