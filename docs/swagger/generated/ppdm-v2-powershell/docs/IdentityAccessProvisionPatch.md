# IdentityAccessProvisionPatch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Access** | [**IdentityAccessProvisionAccess[]**](IdentityAccessProvisionAccess.md) |  | 
**IdentityProvider** | [**IdentityAccessProvisionIdentityProvider**](IdentityAccessProvisionIdentityProvider.md) |  | [optional] 
**Subject** | **String** | Provision subject, like a user account name, LDAP group name, etc. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAccessProvisionPatch = Initialize-PpdmApiReferenceIdentityAccessProvisionPatch  -Access null `
 -IdentityProvider null `
 -Subject null
```

- Convert the resource to JSON
```powershell
$IdentityAccessProvisionPatch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

