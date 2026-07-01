# ActiveDirectoryIdentityProvider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvailableSince** | **System.DateTime** | Indicates the date from when the Active Directory Identity Provider is available. | [optional] 
**Config** | [**IdentityProviderConfig**](IdentityProviderConfig.md) |  | [optional] 
**Description** | **String** | Active Directory identity provider description. | [optional] 
**Enabled** | **Boolean** | Indicates whether the Active Directory identity provider service is enabled. | [optional] [default to $true]
**HighAvailabilityEnabled** | **Boolean** | Indicates whether the high availability mode is enabled to verify the root certificate for Active Directory (AD) or Lightweight Directory Access Protocol (LDAP). | [optional] 
**VarHost** | **String** | Host must not include protocol specification (ldap://, ldaps://, etc.) | 
**Link** | [**IdentityProviderLink**](IdentityProviderLink.md) |  | [optional] 
**Locator** | **String** | Active Directory Identity Provider locator. | [optional] 
**Port** | **Int32** | Port number. | [optional] 
**Secure** | **Boolean** | Secure connection indicator, internally selects either ldap:// or ldaps:// | [optional] [default to $true]
**Selector** | **String** | This parameter defines an LDAP domain in dot notation, e.g. new.exchdns.com instead of dc&#x3D;new,dc&#x3D;exchdns,dc&#x3D;com as before. | 
**ServiceAccount** | [**IdentityProviderAccountInfo**](IdentityProviderAccountInfo.md) |  | [optional] 
**ServiceMarker** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ActiveDirectoryIdentityProvider = Initialize-PpdmApiReferenceActiveDirectoryIdentityProvider  -AvailableSince null `
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
$ActiveDirectoryIdentityProvider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

