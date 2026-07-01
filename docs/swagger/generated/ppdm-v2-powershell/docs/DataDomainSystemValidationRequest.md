# DataDomainSystemValidationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hostname** | **String** |  | 
**Password** | **String** |  | 
**Port** | **Int32** |  | 
**Username** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$DataDomainSystemValidationRequest = Initialize-PpdmApiReferenceDataDomainSystemValidationRequest  -Hostname null `
 -Password null `
 -Port null `
 -Username null
```

- Convert the resource to JSON
```powershell
$DataDomainSystemValidationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

