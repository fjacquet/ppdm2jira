# DataDomainUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CredentialId** | **String** | ID of the credential representing the user name and password. | 
**StorageArrayId** | **String** | ID of the PowerProtect Data Domain to create the user on. | 
**UserRole** | **String** | Role of the PowerProtect Data Domain. | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainUser = Initialize-PpdmApiReferenceDataDomainUser  -CredentialId null `
 -StorageArrayId null `
 -UserRole null
```

- Convert the resource to JSON
```powershell
$DataDomainUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

