# JiraMultipleGroupPickerField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldId** | **String** |  | 
**Groups** | [**JiraGroupInput[]**](JiraGroupInput.md) |  | 

## Examples

- Prepare the resource
```powershell
$JiraMultipleGroupPickerField = Initialize-JiraApiReferenceJiraMultipleGroupPickerField  -FieldId null `
 -Groups null
```

- Convert the resource to JSON
```powershell
$JiraMultipleGroupPickerField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

