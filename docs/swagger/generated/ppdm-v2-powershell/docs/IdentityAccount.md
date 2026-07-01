# IdentityAccount
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** | Email address of the identity provider account. | [optional] 
**Enabled** | **Boolean** | Indicates whether the identity account is enabled or not. | [optional] [default to $true]
**FirstName** | **String** | First name of the identity provider account. | [optional] 
**LastName** | **String** | Last name of the identity provider account. | [optional] 
**Locator** | **String** | Identity Account locator. | [optional] 
**Name** | **String** | Account name | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAccount = Initialize-PpdmApiReferenceIdentityAccount  -EmailAddress null `
 -Enabled null `
 -FirstName null `
 -LastName null `
 -Locator null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IdentityAccount | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

