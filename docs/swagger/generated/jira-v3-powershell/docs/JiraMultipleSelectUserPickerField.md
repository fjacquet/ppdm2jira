# JiraMultipleSelectUserPickerField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldId** | **String** |  | 
**Users** | [**JiraUserField[]**](JiraUserField.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraMultipleSelectUserPickerField = Initialize-JiraApiReferenceJiraMultipleSelectUserPickerField  -FieldId null `
 -Users null
```

- Convert the resource to JSON
```powershell
$JiraMultipleSelectUserPickerField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

