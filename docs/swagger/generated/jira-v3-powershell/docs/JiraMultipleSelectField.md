# JiraMultipleSelectField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldId** | **String** |  | 
**Options** | [**JiraSelectedOptionField[]**](JiraSelectedOptionField.md) |  | 

## Examples

- Prepare the resource
```powershell
$JiraMultipleSelectField = Initialize-JiraApiReferenceJiraMultipleSelectField  -FieldId null `
 -Options null
```

- Convert the resource to JSON
```powershell
$JiraMultipleSelectField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

