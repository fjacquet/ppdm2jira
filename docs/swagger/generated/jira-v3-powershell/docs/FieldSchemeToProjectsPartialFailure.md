# FieldSchemeToProjectsPartialFailure
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **String** |  | [optional] 
**ProjectId** | **Int64** |  | 
**SchemeId** | **Int64** |  | 
**Success** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$FieldSchemeToProjectsPartialFailure = Initialize-JiraApiReferenceFieldSchemeToProjectsPartialFailure  -VarError null `
 -ProjectId null `
 -SchemeId null `
 -Success null
```

- Convert the resource to JSON
```powershell
$FieldSchemeToProjectsPartialFailure | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

