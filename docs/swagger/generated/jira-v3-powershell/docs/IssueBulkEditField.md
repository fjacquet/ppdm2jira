# IssueBulkEditField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Description of the field. | [optional] 
**FieldOptions** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | A list of options related to the field, applicable in contexts where multiple selections are allowed. | [optional] 
**Id** | **String** | The unique ID of the field. | [optional] 
**IsRequired** | **Boolean** | Indicates whether the field is mandatory for the operation. | [optional] 
**MultiSelectFieldOptions** | **String[]** | Specifies supported actions (like add, replace, remove) on multi-select fields via an enum. | [optional] 
**Name** | **String** | The display name of the field. | [optional] 
**SearchUrl** | **String** | A URL to fetch additional data for the field | [optional] 
**Type** | **String** | The type of the field. | [optional] 
**UnavailableMessage** | **String** | A message indicating why the field is unavailable for editing. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueBulkEditField = Initialize-JiraApiReferenceIssueBulkEditField  -Description null `
 -FieldOptions null `
 -Id null `
 -IsRequired null `
 -MultiSelectFieldOptions null `
 -Name null `
 -SearchUrl null `
 -Type null `
 -UnavailableMessage null
```

- Convert the resource to JSON
```powershell
$IssueBulkEditField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

