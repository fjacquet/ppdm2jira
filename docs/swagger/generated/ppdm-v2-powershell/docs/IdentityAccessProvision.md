# IdentityAccessProvision
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Access** | [**IdentityAccessProvisionAccess[]**](IdentityAccessProvisionAccess.md) |  | 
**AvailableSince** | **System.DateTime** | The date and time when the provision is created. | [optional] 
**IdentityProvider** | [**IdentityAccessProvisionIdentityProvider**](IdentityAccessProvisionIdentityProvider.md) |  | 
**LastModified** | **System.DateTime** | The date and time when this provision is modified. | [optional] 
**Locator** | **String** | Access provision locator | [optional] 
**Subject** | **String** | Provision subject, like a user account name, LDAP group name, etc. | 

## Examples

- Prepare the resource
```powershell
$IdentityAccessProvision = Initialize-PpdmApiReferenceIdentityAccessProvision  -Access null `
 -AvailableSince null `
 -IdentityProvider null `
 -LastModified null `
 -Locator null `
 -Subject null
```

- Convert the resource to JSON
```powershell
$IdentityAccessProvision | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

