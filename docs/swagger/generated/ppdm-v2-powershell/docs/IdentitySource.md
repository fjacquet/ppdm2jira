# IdentitySource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Base** | **String** | Identity source domain. | [optional] 
**ConfigPassword** | **String** | Password of the identity source configUser. | [optional] 
**ConfigUser** | **String** | Identity source user distinguished name with privileges to retrieve the groups and users. | [optional] 
**CreatedDate** | **System.DateTime** | Date the identity source was created. | [optional] 
**Description** | **String** | Identity source description. | [optional] 
**Enabled** | **Boolean** | Indicates whether the identity source service is enabled. | [optional] [default to $true]
**GroupMemberAttribute** | **String** | The identity source attribute defining which users belong to the group. | [optional] 
**GroupNameAttribute** | **String** | The attribute distinguishing group names. | [optional] 
**GroupObjectTypeName** | **String** | The identity source group object class. | [optional] 
**GroupSearchPath** | **String** | The identity source group search path. | [optional] 
**HighAvailabilityEnabled** | **Boolean** | Indicates whether the high availability mode is enabled to verify the root certificate for Active Directory (AD) or Lightweight Directory Access Protocol (LDAP). | [optional] 
**Id** | **String** | Identity source ID. | [optional] 
**Port** | **String** | Identity source port. | [optional] 
**ServerAddress** | **String** | Identity source host name or IP address. | [optional] 
**ServerType** | **String** | Identity source type. Active Directory (AD) or Lightweight Directory Access Protocol (LDAP). | [optional] 
**UserIdAttribute** | **String** | The attribute distinguishing users. | [optional] 
**UserObjectTypeName** | **String** | The identity source user object class. | [optional] 
**UserSearchPath** | **String** | The identity source user search path. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentitySource = Initialize-PpdmApiReferenceIdentitySource  -Base null `
 -ConfigPassword null `
 -ConfigUser null `
 -CreatedDate null `
 -Description null `
 -Enabled null `
 -GroupMemberAttribute null `
 -GroupNameAttribute null `
 -GroupObjectTypeName null `
 -GroupSearchPath null `
 -HighAvailabilityEnabled null `
 -Id null `
 -Port null `
 -ServerAddress null `
 -ServerType null `
 -UserIdAttribute null `
 -UserObjectTypeName null `
 -UserSearchPath null
```

- Convert the resource to JSON
```powershell
$IdentitySource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

