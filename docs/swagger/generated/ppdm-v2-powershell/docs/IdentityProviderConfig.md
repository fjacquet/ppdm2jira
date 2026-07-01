# IdentityProviderConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GroupMemberAttribute** | **String** | The group member attribute. | [optional] 
**GroupObjectTypeName** | **String** | The name of the group object type. | [optional] 
**GroupSearchAttribute** | **String** | The group search attribute. | [optional] 
**GroupSearchBase** | **String** | The group search base. | [optional] 
**UserObjectTypeName** | **String** | The name of the user object type. | [optional] 
**UserSearchPath** | **String** | The user search path. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityProviderConfig = Initialize-PpdmApiReferenceIdentityProviderConfig  -GroupMemberAttribute null `
 -GroupObjectTypeName null `
 -GroupSearchAttribute null `
 -GroupSearchBase null `
 -UserObjectTypeName null `
 -UserSearchPath null
```

- Convert the resource to JSON
```powershell
$IdentityProviderConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

