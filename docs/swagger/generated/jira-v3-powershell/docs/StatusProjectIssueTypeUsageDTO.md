# StatusProjectIssueTypeUsageDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypes** | [**StatusProjectIssueTypeUsagePage**](StatusProjectIssueTypeUsagePage.md) |  | [optional] 
**ProjectId** | **String** | The project ID. | [optional] 
**StatusId** | **String** | The status ID. | [optional] 

## Examples

- Prepare the resource
```powershell
$StatusProjectIssueTypeUsageDTO = Initialize-JiraApiReferenceStatusProjectIssueTypeUsageDTO  -IssueTypes null `
 -ProjectId null `
 -StatusId null
```

- Convert the resource to JSON
```powershell
$StatusProjectIssueTypeUsageDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

