# Toggler
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Filters** | [**APIFilter[]**](APIFilter.md) |  | [optional] 
**Type** | **String** |  | [optional] 
**UriPattern** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Toggler = Initialize-PpdmApiReferenceToggler  -Filters null `
 -Type null `
 -UriPattern null
```

- Convert the resource to JSON
```powershell
$Toggler | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

