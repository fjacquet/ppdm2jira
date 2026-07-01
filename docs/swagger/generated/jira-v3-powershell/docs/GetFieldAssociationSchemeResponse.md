# GetFieldAssociationSchemeResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**FieldsCount** | **Int64** |  | [optional] 
**Id** | **Int64** |  | [optional] 
**IsDefault** | **Boolean** |  | [optional] 
**Links** | [**FieldAssociationSchemeLinksBean**](FieldAssociationSchemeLinksBean.md) |  | [optional] 
**MatchedFilters** | [**FieldAssociationSchemeMatchedFilters**](FieldAssociationSchemeMatchedFilters.md) |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetFieldAssociationSchemeResponse = Initialize-JiraApiReferenceGetFieldAssociationSchemeResponse  -Description null `
 -FieldsCount null `
 -Id null `
 -IsDefault null `
 -Links null `
 -MatchedFilters null `
 -Name null
```

- Convert the resource to JSON
```powershell
$GetFieldAssociationSchemeResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

