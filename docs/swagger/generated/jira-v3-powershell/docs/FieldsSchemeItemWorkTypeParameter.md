# FieldsSchemeItemWorkTypeParameter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | The custom description for the field for this work type, null to use default or preserve current | [optional] 
**IsRequired** | **Boolean** | Whether the field is required for this work type, null to use default or preserve current | [optional] 
**WorkTypeId** | **Int64** | The ID of the work type (issue type) for which these parameters apply | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldsSchemeItemWorkTypeParameter = Initialize-JiraApiReferenceFieldsSchemeItemWorkTypeParameter  -Description null `
 -IsRequired null `
 -WorkTypeId null
```

- Convert the resource to JSON
```powershell
$FieldsSchemeItemWorkTypeParameter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

