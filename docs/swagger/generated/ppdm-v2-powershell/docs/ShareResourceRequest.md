# ShareResourceRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Credentials** | [**ShareCredentials**](ShareCredentials.md) |  | [optional] 
**Source** | [**SourceRequest**](SourceRequest.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ShareResourceRequest = Initialize-PpdmApiReferenceShareResourceRequest  -Credentials null `
 -Source null
```

- Convert the resource to JSON
```powershell
$ShareResourceRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

