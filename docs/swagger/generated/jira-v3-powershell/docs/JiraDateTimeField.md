# JiraDateTimeField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DateTime** | [**JiraDateTimeInput**](JiraDateTimeInput.md) |  | 
**FieldId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$JiraDateTimeField = Initialize-JiraApiReferenceJiraDateTimeField  -DateTime null `
 -FieldId null
```

- Convert the resource to JSON
```powershell
$JiraDateTimeField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

