# FieldAssociationSchemeFieldSearchResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowedOperations** | **String[]** |  | [optional] 
**FieldId** | **String** |  | [optional] 
**Parameters** | [**SearchResultFieldParameters**](SearchResultFieldParameters.md) |  | [optional] 
**RestrictedToWorkTypes** | **String[]** |  | [optional] 
**WorkTypeParameters** | [**SearchResultWorkTypeParameters[]**](SearchResultWorkTypeParameters.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldAssociationSchemeFieldSearchResult = Initialize-JiraApiReferenceFieldAssociationSchemeFieldSearchResult  -AllowedOperations null `
 -FieldId null `
 -Parameters null `
 -RestrictedToWorkTypes null `
 -WorkTypeParameters null
```

- Convert the resource to JSON
```powershell
$FieldAssociationSchemeFieldSearchResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

