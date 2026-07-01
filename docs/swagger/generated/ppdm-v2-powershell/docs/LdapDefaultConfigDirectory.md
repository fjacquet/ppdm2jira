# LdapDefaultConfigDirectory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GroupMemberAttribute** | **String** | Group member attribute. | [optional] 
**GroupSearchAttribute** | **String** | Group search attribute. | [optional] 
**GroupSearchBase** | **String** | Group search base. | [optional] 

## Examples

- Prepare the resource
```powershell
$LdapDefaultConfigDirectory = Initialize-PpdmApiReferenceLdapDefaultConfigDirectory  -GroupMemberAttribute null `
 -GroupSearchAttribute null `
 -GroupSearchBase null
```

- Convert the resource to JSON
```powershell
$LdapDefaultConfigDirectory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

