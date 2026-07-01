# GetFieldAssociationParametersResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldId** | **String** |  | 
**Parameters** | [**FieldAssociationParameters**](FieldAssociationParameters.md) |  | [optional] 
**WorkTypeParameters** | [**WorkTypeParameters[]**](WorkTypeParameters.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetFieldAssociationParametersResponse = Initialize-JiraApiReferenceGetFieldAssociationParametersResponse  -FieldId null `
 -Parameters null `
 -WorkTypeParameters null
```

- Convert the resource to JSON
```powershell
$GetFieldAssociationParametersResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

