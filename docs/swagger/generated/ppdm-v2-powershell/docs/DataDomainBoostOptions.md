# DataDomainBoostOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GlobalAuthenticationMode** | **String** |  | [optional] 
**GlobalEncryptionStrength** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainBoostOptions = Initialize-PpdmApiReferenceDataDomainBoostOptions  -GlobalAuthenticationMode null `
 -GlobalEncryptionStrength null
```

- Convert the resource to JSON
```powershell
$DataDomainBoostOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

