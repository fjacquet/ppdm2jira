# DataDomainReplicationOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthenticationMode** | **String** |  | [optional] 
**Encryption** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainReplicationOptions = Initialize-PpdmApiReferenceDataDomainReplicationOptions  -AuthenticationMode null `
 -Encryption null
```

- Convert the resource to JSON
```powershell
$DataDomainReplicationOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

