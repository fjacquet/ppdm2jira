# FieldsSchemeItemParameter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The custom description for the field, null to preserve current description | [optional] 
**IsRequired** | **Boolean** | Whether the field is required, null to preserve current requirement setting | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldsSchemeItemParameter = Initialize-JiraApiReferenceFieldsSchemeItemParameter  -Description null `
 -IsRequired null
```

- Convert the resource to JSON
```powershell
$FieldsSchemeItemParameter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

