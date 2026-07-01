# JiraNumberField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldId** | **String** |  | 
**Value** | **Double** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraNumberField = Initialize-JiraApiReferenceJiraNumberField  -FieldId null `
 -Value null
```

- Convert the resource to JSON
```powershell
$JiraNumberField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

