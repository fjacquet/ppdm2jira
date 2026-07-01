# JiraMultipleVersionPickerField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BulkEditMultiSelectFieldOption** | **String** |  | 
**FieldId** | **String** |  | 
**Versions** | [**JiraVersionField[]**](JiraVersionField.md) |  | 

## Examples

- Prepare the resource
```powershell
$JiraMultipleVersionPickerField = Initialize-JiraApiReferenceJiraMultipleVersionPickerField  -BulkEditMultiSelectFieldOption null `
 -FieldId null `
 -Versions null
```

- Convert the resource to JSON
```powershell
$JiraMultipleVersionPickerField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

