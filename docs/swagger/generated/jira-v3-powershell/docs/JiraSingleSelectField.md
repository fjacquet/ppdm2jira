# JiraSingleSelectField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldId** | **String** |  | 
**Option** | [**JiraSelectedOptionField**](JiraSelectedOptionField.md) |  | 

## Examples

- Prepare the resource
```powershell
$JiraSingleSelectField = Initialize-JiraApiReferenceJiraSingleSelectField  -FieldId null `
 -Option null
```

- Convert the resource to JSON
```powershell
$JiraSingleSelectField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

