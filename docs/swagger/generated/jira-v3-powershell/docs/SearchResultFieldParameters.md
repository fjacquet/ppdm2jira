# SearchResultFieldParameters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**IsRequired** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchResultFieldParameters = Initialize-JiraApiReferenceSearchResultFieldParameters  -Description null `
 -IsRequired null
```

- Convert the resource to JSON
```powershell
$SearchResultFieldParameters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

