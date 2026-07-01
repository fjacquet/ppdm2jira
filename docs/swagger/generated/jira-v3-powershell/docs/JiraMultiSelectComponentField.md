# JiraMultiSelectComponentField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BulkEditMultiSelectFieldOption** | **String** |  | 
**Components** | [**JiraComponentField[]**](JiraComponentField.md) |  | 
**FieldId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$JiraMultiSelectComponentField = Initialize-JiraApiReferenceJiraMultiSelectComponentField  -BulkEditMultiSelectFieldOption null `
 -Components null `
 -FieldId null
```

- Convert the resource to JSON
```powershell
$JiraMultiSelectComponentField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

