# UpdateFieldSchemeParametersPartialFailure
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **String** |  | [optional] 
**FieldId** | **String** |  | 
**SchemeId** | **Int64** |  | 
**Success** | **Boolean** |  | 
**WorkTypeId** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateFieldSchemeParametersPartialFailure = Initialize-JiraApiReferenceUpdateFieldSchemeParametersPartialFailure  -VarError null `
 -FieldId null `
 -SchemeId null `
 -Success null `
 -WorkTypeId null
```

- Convert the resource to JSON
```powershell
$UpdateFieldSchemeParametersPartialFailure | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

