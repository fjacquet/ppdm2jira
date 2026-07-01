# JiraColorField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Color** | [**JiraColorInput**](JiraColorInput.md) |  | 
**FieldId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$JiraColorField = Initialize-JiraApiReferenceJiraColorField  -Color null `
 -FieldId null
```

- Convert the resource to JSON
```powershell
$JiraColorField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

