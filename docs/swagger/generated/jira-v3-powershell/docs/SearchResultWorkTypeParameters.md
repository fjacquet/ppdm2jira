# SearchResultWorkTypeParameters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**IsRequired** | **Boolean** |  | [optional] 
**WorkTypeId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchResultWorkTypeParameters = Initialize-JiraApiReferenceSearchResultWorkTypeParameters  -Description null `
 -IsRequired null `
 -WorkTypeId null
```

- Convert the resource to JSON
```powershell
$SearchResultWorkTypeParameters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

