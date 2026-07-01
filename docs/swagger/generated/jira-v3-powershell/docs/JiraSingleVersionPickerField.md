# JiraSingleVersionPickerField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldId** | **String** |  | 
**Version** | [**JiraVersionField**](JiraVersionField.md) |  | 

## Examples

- Prepare the resource
```powershell
$JiraSingleVersionPickerField = Initialize-JiraApiReferenceJiraSingleVersionPickerField  -FieldId null `
 -Version null
```

- Convert the resource to JSON
```powershell
$JiraSingleVersionPickerField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

