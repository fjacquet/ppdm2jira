# GetCustomFieldResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomFieldId** | **Int64** | The custom field ID. | 
**VarFilter** | **Boolean** | Allows filtering issues based on their values for the custom field. | [optional] 

## Examples

- Prepare the resource
```powershell
$GetCustomFieldResponse = Initialize-JiraApiReferenceGetCustomFieldResponse  -CustomFieldId null `
 -VarFilter null
```

- Convert the resource to JSON
```powershell
$GetCustomFieldResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

