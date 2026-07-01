# JiraRichTextField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldId** | **String** |  | 
**RichText** | [**JiraRichTextInput**](JiraRichTextInput.md) |  | 

## Examples

- Prepare the resource
```powershell
$JiraRichTextField = Initialize-JiraApiReferenceJiraRichTextField  -FieldId null `
 -RichText null
```

- Convert the resource to JSON
```powershell
$JiraRichTextField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

