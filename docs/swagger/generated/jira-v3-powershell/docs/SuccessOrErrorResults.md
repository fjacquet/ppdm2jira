# SuccessOrErrorResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**RemoveFieldParametersResultError**](RemoveFieldParametersResultError.md) |  | [optional] 
**FieldId** | **String** |  | [optional] 
**SchemeId** | **Int64** |  | [optional] 
**Success** | **Boolean** |  | [optional] 
**WorkTypeIds** | **Int64[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SuccessOrErrorResults = Initialize-JiraApiReferenceSuccessOrErrorResults  -VarError null `
 -FieldId null `
 -SchemeId null `
 -Success null `
 -WorkTypeIds null
```

- Convert the resource to JSON
```powershell
$SuccessOrErrorResults | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

