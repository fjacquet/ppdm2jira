# JiraDateField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Date** | [**JiraDateInput**](JiraDateInput.md) |  | [optional] 
**FieldId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$JiraDateField = Initialize-JiraApiReferenceJiraDateField  -Date null `
 -FieldId null
```

- Convert the resource to JSON
```powershell
$JiraDateField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

