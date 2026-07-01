# IdentityProvider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Description of the identity provider. | [optional] 
**Enabled** | **Boolean** |  | [optional] [default to $true]
**VarHost** | **String** | A host name or IP address of the referenced identity service | 
**Link** | [**IdentityProviderLink**](IdentityProviderLink.md) |  | [optional] 
**Locator** | **String** | Identity Provider locator. | [optional] 
**Port** | **Int32** | A port override if different from the default one for the referenced identity service | 
**Selector** | **String** | Identity provider selector, such as local for local identity provider, or a domain for Lightweight Directory Access Protocol (LDAP) identity provider, and so on. | 
**ServiceMarker** | **String** | Identity provider service tag (local, ldap, active-directory, pam, etc.) | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityProvider = Initialize-PpdmApiReferenceIdentityProvider  -Description null `
 -Enabled null `
 -VarHost null `
 -Link null `
 -Locator null `
 -Port null `
 -Selector null `
 -ServiceMarker null
```

- Convert the resource to JSON
```powershell
$IdentityProvider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

