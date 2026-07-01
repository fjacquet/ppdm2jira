# APIRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Filters** | [**APIFilter[]**](APIFilter.md) |  | [optional] 
**UriPattern** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$APIRule = Initialize-PpdmApiReferenceAPIRule  -Filters null `
 -UriPattern null
```

- Convert the resource to JSON
```powershell
$APIRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

