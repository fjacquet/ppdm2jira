# JiraCascadingSelectField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChildOptionValue** | [**JiraSelectedOptionField**](JiraSelectedOptionField.md) |  | [optional] 
**FieldId** | **String** |  | 
**ParentOptionValue** | [**JiraSelectedOptionField**](JiraSelectedOptionField.md) |  | 

## Examples

- Prepare the resource
```powershell
$JiraCascadingSelectField = Initialize-JiraApiReferenceJiraCascadingSelectField  -ChildOptionValue null `
 -FieldId null `
 -ParentOptionValue null
```

- Convert the resource to JSON
```powershell
$JiraCascadingSelectField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

