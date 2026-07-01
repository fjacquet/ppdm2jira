# DataDomainEncryptionSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DdboostOptions** | [**DataDomainBoostOptions**](DataDomainBoostOptions.md) |  | [optional] 
**Hostname** | **String** |  | [optional] 
**ReplicationOptions** | [**DataDomainReplicationOptions**](DataDomainReplicationOptions.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainEncryptionSettings = Initialize-PpdmApiReferenceDataDomainEncryptionSettings  -DdboostOptions null `
 -Hostname null `
 -ReplicationOptions null
```

- Convert the resource to JSON
```powershell
$DataDomainEncryptionSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

