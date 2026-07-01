# UpdateFieldSchemeParametersRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Parameters** | [**FieldsSchemeItemParameter**](FieldsSchemeItemParameter.md) |  | [optional] 
**SchemeIds** | **Int64[]** | The list of field scheme IDs to update | [optional] 
**WorkTypeParameters** | [**FieldsSchemeItemWorkTypeParameter[]**](FieldsSchemeItemWorkTypeParameter.md) | The list of work type-specific parameter overrides, may be empty if only default parameters are being updated | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateFieldSchemeParametersRequest = Initialize-JiraApiReferenceUpdateFieldSchemeParametersRequest  -Parameters null `
 -SchemeIds null `
 -WorkTypeParameters null
```

- Convert the resource to JSON
```powershell
$UpdateFieldSchemeParametersRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

