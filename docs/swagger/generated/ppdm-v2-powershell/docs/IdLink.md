# IdLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Link** | [**Link**](Link.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdLink = Initialize-PpdmApiReferenceIdLink  -Id null `
 -Link null
```

- Convert the resource to JSON
```powershell
$IdLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

