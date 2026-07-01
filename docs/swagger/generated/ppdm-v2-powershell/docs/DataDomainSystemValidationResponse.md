# DataDomainSystemValidationResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsSupported** | **Boolean** |  | 
**Reason** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainSystemValidationResponse = Initialize-PpdmApiReferenceDataDomainSystemValidationResponse  -IsSupported null `
 -Reason null
```

- Convert the resource to JSON
```powershell
$DataDomainSystemValidationResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

