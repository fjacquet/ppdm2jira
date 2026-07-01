# DataDomainExchangeCerts
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CredentialId** | **String** |  | 
**Hostname** | **String** |  | 
**Port** | **Int32** |  | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$DataDomainExchangeCerts = Initialize-PpdmApiReferenceDataDomainExchangeCerts  -CredentialId null `
 -Hostname null `
 -Port null `
 -Type null
```

- Convert the resource to JSON
```powershell
$DataDomainExchangeCerts | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

