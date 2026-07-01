# SearchWarningLimitDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Actual** | **Int64** | The actual number of arguments supplied that exceeded the limit. | [optional] [readonly] 
**Arguments** | **String** | The arguments passed to the JQL clause. | [optional] [readonly] 
**Clause** | **String** | The JQL clause that triggered the limit, e.g. issueHistory(). | [optional] [readonly] 
**Limit** | **Int64** | The maximum number of arguments allowed for the clause. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$SearchWarningLimitDetails = Initialize-JiraApiReferenceSearchWarningLimitDetails  -Actual null `
 -Arguments null `
 -Clause null `
 -Limit null
```

- Convert the resource to JSON
```powershell
$SearchWarningLimitDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

