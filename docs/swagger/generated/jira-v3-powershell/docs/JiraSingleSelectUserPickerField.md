# JiraSingleSelectUserPickerField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldId** | **String** |  | 
**User** | [**JiraUserField**](JiraUserField.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraSingleSelectUserPickerField = Initialize-JiraApiReferenceJiraSingleSelectUserPickerField  -FieldId null `
 -User null
```

- Convert the resource to JSON
```powershell
$JiraSingleSelectUserPickerField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

