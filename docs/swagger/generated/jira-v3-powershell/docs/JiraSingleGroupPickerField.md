# JiraSingleGroupPickerField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldId** | **String** |  | 
**Group** | [**JiraGroupInput**](JiraGroupInput.md) |  | 

## Examples

- Prepare the resource
```powershell
$JiraSingleGroupPickerField = Initialize-JiraApiReferenceJiraSingleGroupPickerField  -FieldId null `
 -Group null
```

- Convert the resource to JSON
```powershell
$JiraSingleGroupPickerField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

