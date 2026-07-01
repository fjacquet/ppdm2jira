# GetFieldAssociationSchemeByIdResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**FieldsCount** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 
**IsDefault** | **Boolean** |  | [optional] 
**Links** | [**FieldAssociationSchemeLinks**](FieldAssociationSchemeLinks.md) |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetFieldAssociationSchemeByIdResponse = Initialize-JiraApiReferenceGetFieldAssociationSchemeByIdResponse  -Description null `
 -FieldsCount null `
 -Id null `
 -IsDefault null `
 -Links null `
 -Name null
```

- Convert the resource to JSON
```powershell
$GetFieldAssociationSchemeByIdResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

