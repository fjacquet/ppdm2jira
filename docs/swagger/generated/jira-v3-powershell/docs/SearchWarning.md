# SearchWarning
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Details** | [**SearchWarningLimitDetails**](SearchWarningLimitDetails.md) | Structured details about the warning, if available. | [optional] 
**Message** | **String** | A human-readable explanation of the warning suitable for surfacing to end users. | [optional] [readonly] 
**Type** | **String** | The type of warning, e.g. CLAUSE\_LIMIT\_EXCEEDED or CLAUSE\_RESULT\_TRUNCATED. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$SearchWarning = Initialize-JiraApiReferenceSearchWarning  -Details null `
 -Message null `
 -Type null
```

- Convert the resource to JSON
```powershell
$SearchWarning | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

