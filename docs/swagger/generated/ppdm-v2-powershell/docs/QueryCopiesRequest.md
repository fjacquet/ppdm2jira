# QueryCopiesRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFilter** | **String** |  | [optional] 
**Orderby** | **String** |  | [optional] 
**Page** | **Int64** |  | [optional] 
**PageNumber** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$QueryCopiesRequest = Initialize-PpdmApiReferenceQueryCopiesRequest  -VarFilter null `
 -Orderby null `
 -Page null `
 -PageNumber null
```

- Convert the resource to JSON
```powershell
$QueryCopiesRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

