# UserGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedDate** | **System.DateTime** | Date the user group was created. | [optional] 
**Id** | **String** | User group ID. | [optional] 
**IdentitySourceGroups** | [**IdentitySourceGroupsMapping[]**](IdentitySourceGroupsMapping.md) | The identity source groups in the group-to-role mapping. | 
**Name** | **String** | Name of the user group. | 
**RoleId** | **String** | Role ID for the identity source groups. | [optional] 

## Examples

- Prepare the resource
```powershell
$UserGroup = Initialize-PpdmApiReferenceUserGroup  -CreatedDate null `
 -Id null `
 -IdentitySourceGroups null `
 -Name null `
 -RoleId null
```

- Convert the resource to JSON
```powershell
$UserGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

