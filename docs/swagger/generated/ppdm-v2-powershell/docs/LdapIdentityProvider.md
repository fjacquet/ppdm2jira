# LdapIdentityProvider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvailableSince** | **System.DateTime** | Available Since Date. | [optional] 
**Config** | [**IdentityProviderConfig**](IdentityProviderConfig.md) |  | [optional] 
**Description** | **String** | Lightweight Directory Access Protocol (LDAP) identity Provider description. | [optional] 
**Enabled** | **Boolean** | Indicates whether the Lightweight Directory Access Protocol (LDAP) identity provider service is enabled. | [optional] [default to $true]
**HighAvailabilityEnabled** | **Boolean** | Indicates whether the high availability mode is enabled to verify the root certificate for Active Directory (AD) or Lightweight Directory Access Protocol (LDAP). | [optional] 
**VarHost** | **String** | Host must not include protocol specification (ldap://, ldaps://, etc.) | 
**Link** | [**IdentityProviderLink**](IdentityProviderLink.md) |  | [optional] 
**Locator** | **String** | Lightweight Directory Access Protocol (LDAP) identity provider locator. | [optional] 
**Port** | **Int32** | Port number. | 
**Secure** | **Boolean** | Secure connection indicator, internally selects either ldap:// or ldaps:// | [optional] 
**Selector** | **String** | This parameter defines an LDAP domain in dot notation, e.g. new.exchdns.com instead of dc&#x3D;new,dc&#x3D;exchdns,dc&#x3D;com as before. | 
**ServiceAccount** | [**IdentityProviderAccountInfo**](IdentityProviderAccountInfo.md) |  | [optional] 
**ServiceMarker** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LdapIdentityProvider = Initialize-PpdmApiReferenceLdapIdentityProvider  -AvailableSince null `
 -Config null `
 -Description null `
 -Enabled null `
 -HighAvailabilityEnabled null `
 -VarHost null `
 -Link null `
 -Locator null `
 -Port null `
 -Secure null `
 -Selector null `
 -ServiceAccount null `
 -ServiceMarker null
```

- Convert the resource to JSON
```powershell
$LdapIdentityProvider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

