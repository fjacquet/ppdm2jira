# FieldSchemeToFieldsPartialFailure
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **String** |  | [optional] 
**FieldId** | **String** |  | 
**SchemeId** | **Int64** |  | 
**Success** | **Boolean** |  | 
**WorkTypeIds** | **Int64[]** |  | 

## Examples

- Prepare the resource
```powershell
$FieldSchemeToFieldsPartialFailure = Initialize-JiraApiReferenceFieldSchemeToFieldsPartialFailure  -VarError null `
 -FieldId null `
 -SchemeId null `
 -Success null `
 -WorkTypeIds null
```

- Convert the resource to JSON
```powershell
$FieldSchemeToFieldsPartialFailure | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

