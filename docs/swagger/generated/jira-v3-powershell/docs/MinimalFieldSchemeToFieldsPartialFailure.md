# MinimalFieldSchemeToFieldsPartialFailure
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **String** |  | [optional] 
**FieldId** | **String** |  | 
**SchemeId** | **Int64** |  | 
**Success** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$MinimalFieldSchemeToFieldsPartialFailure = Initialize-JiraApiReferenceMinimalFieldSchemeToFieldsPartialFailure  -VarError null `
 -FieldId null `
 -SchemeId null `
 -Success null
```

- Convert the resource to JSON
```powershell
$MinimalFieldSchemeToFieldsPartialFailure | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

