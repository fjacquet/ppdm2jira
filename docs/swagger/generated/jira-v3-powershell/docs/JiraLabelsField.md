# JiraLabelsField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BulkEditMultiSelectFieldOption** | **String** |  | 
**FieldId** | **String** |  | 
**LabelProperties** | [**JiraLabelPropertiesInputJackson1[]**](JiraLabelPropertiesInputJackson1.md) |  | [optional] 
**Labels** | [**JiraLabelsInput[]**](JiraLabelsInput.md) |  | 

## Examples

- Prepare the resource
```powershell
$JiraLabelsField = Initialize-JiraApiReferenceJiraLabelsField  -BulkEditMultiSelectFieldOption null `
 -FieldId null `
 -LabelProperties null `
 -Labels null
```

- Convert the resource to JSON
```powershell
$JiraLabelsField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

