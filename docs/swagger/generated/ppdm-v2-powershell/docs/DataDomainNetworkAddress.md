# DataDomainNetworkAddress
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DataNodeAddress** | **String** |  | [optional] 
**DdboostControlPathAddress** | **String** |  | [optional] 
**DdboostControlPathCredentialId** | **String** |  | [optional] 
**DdboostControlPathPort** | **Int32** |  | [optional] 
**DdboostDataPathAddress** | **String** |  | [optional] 
**DdboostReplicationDataPathAddress** | **String** |  | [optional] 
**ManagementDataPathAddress** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainNetworkAddress = Initialize-PpdmApiReferenceDataDomainNetworkAddress  -DataNodeAddress null `
 -DdboostControlPathAddress null `
 -DdboostControlPathCredentialId null `
 -DdboostControlPathPort null `
 -DdboostDataPathAddress null `
 -DdboostReplicationDataPathAddress null `
 -ManagementDataPathAddress null
```

- Convert the resource to JSON
```powershell
$DataDomainNetworkAddress | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

