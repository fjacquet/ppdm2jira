# ScopePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of the scope. Use &#x60;GLOBAL&#x60; or empty for company-managed project, and &#x60;PROJECT&#x60; for team-managed project | [optional] 

## Examples

- Prepare the resource
```powershell
$ScopePayload = Initialize-JiraApiReferenceScopePayload  -Type null
```

- Convert the resource to JSON
```powershell
$ScopePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

