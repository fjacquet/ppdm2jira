# ProjectIssueSecurityLevels
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Levels** | [**SecurityLevel[]**](SecurityLevel.md) | Issue level security items list. | [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectIssueSecurityLevels = Initialize-JiraApiReferenceProjectIssueSecurityLevels  -Levels null
```

- Convert the resource to JSON
```powershell
$ProjectIssueSecurityLevels | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

