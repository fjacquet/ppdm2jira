# PageInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxPageableElements** | **Int32** | The max number of pageable elements. | [optional] 
**Number** | **Int32** | The page number. | [optional] 
**QueryState** | **String** | The query token. Only used for serial query. Under Tasks, see *Page the result*. | [optional] 
**Size** | **Int32** | The number of elements on each page. | [optional] 
**TotalElements** | **Int32** | The total number of elements across all pages. | [optional] 
**TotalPages** | **Int32** | The total number of pages. | [optional] 

## Examples

- Prepare the resource
```powershell
$PageInfo = Initialize-PpdmApiReferencePageInfo  -MaxPageableElements null `
 -Number null `
 -QueryState null `
 -Size null `
 -TotalElements null `
 -TotalPages null
```

- Convert the resource to JSON
```powershell
$PageInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

