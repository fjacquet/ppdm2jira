# ComponentVersion
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityName** | **String** | name of the entity. | [optional] 
**Version** | **String** | version number. | [optional] 

## Examples

- Prepare the resource
```powershell
$ComponentVersion = Initialize-PpdmApiReferenceComponentVersion  -EntityName null `
 -Version null
```

- Convert the resource to JSON
```powershell
$ComponentVersion | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

