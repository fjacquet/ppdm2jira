# Target
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** |  | [optional] 
**Credential** | [**NasCredential**](NasCredential.md) |  | [optional] 
**Directory** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Target = Initialize-PpdmApiReferenceTarget  -AssetId null `
 -Credential null `
 -Directory null
```

- Convert the resource to JSON
```powershell
$Target | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

