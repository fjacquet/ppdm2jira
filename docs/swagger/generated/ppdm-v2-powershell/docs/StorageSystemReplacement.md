# StorageSystemReplacement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | **String** | The management address of the new PowerProtect Data Domain. | 
**CredentialId** | **String** | The credential ID of the new PowerProtect Data Domain. | 
**EnableValidation** | **Boolean** | Validate that all the PowerProtect Data Manager created storage unit and users exist on the new Data Domain System. By default, this is set to false. | [optional] 
**NetworkInterfaces** | [**NetworkInterfaceReplacement[]**](NetworkInterfaceReplacement.md) | The PowerProtect Data Domain data network interface mapping of old and new addresses. | [optional] 
**Port** | **Int32** | The management port of the new PowerProtect Data Domain. | 
**StorageSystemId** | **String** | The existing storage system id that should be replaced with the new PowerProtect Data Domain. | 
**UpdatePolicyPreferredNetworks** | **Boolean** | Update the protection policy preferred network interfaces. By default, this is set to true. | [optional] 
**VaultRecovery** | **Boolean** | Set true if the replacement is being performed for vault recovery. By default, this is set to false. | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageSystemReplacement = Initialize-PpdmApiReferenceStorageSystemReplacement  -Address null `
 -CredentialId null `
 -EnableValidation null `
 -NetworkInterfaces null `
 -Port null `
 -StorageSystemId null `
 -UpdatePolicyPreferredNetworks null `
 -VaultRecovery null
```

- Convert the resource to JSON
```powershell
$StorageSystemReplacement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

