# LdapIdentityProviderResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvailableSince** | **System.DateTime** | Available Since Date. | 
**Config** | [**IdentityProviderConfig**](IdentityProviderConfig.md) |  | [optional] 
**Description** | **String** | Active Directory identity provider description. | 
**Enabled** | **Boolean** | Indicates whether the Lightweight Directory Access Protocol (LDAP) identity provider service is enabled. | [optional] [default to $true]
**VarHost** | **String** | Host must not include protocol specification (ldap://, ldaps://, etc.) | 
**Link** | [**IdentityProviderLink**](IdentityProviderLink.md) |  | [optional] 
**Locator** | **String** | Active Directory Identity Provider locator. | 
**Port** | **Int32** | Port number | [optional] 
**Secure** | **Boolean** | Secure connection indicator, internally selects either ldap:// or ldaps:// | 
**Selector** | **String** | This parameter defines an LDAP domain in dot notation, e.g. new.exchdns.com instead of dc&#x3D;new,dc&#x3D;exchdns,dc&#x3D;com as before. | 
**ServiceAccount** | [**IdentityProviderAccountInfo**](IdentityProviderAccountInfo.md) |  | [optional] 
**ServiceMarker** | **String** | Identity Provider service marker. | 

## Examples

- Prepare the resource
```powershell
$LdapIdentityProviderResponse = Initialize-PpdmApiReferenceLdapIdentityProviderResponse  -AvailableSince null `
 -Config null `
 -Description null `
 -Enabled null `
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
$LdapIdentityProviderResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

