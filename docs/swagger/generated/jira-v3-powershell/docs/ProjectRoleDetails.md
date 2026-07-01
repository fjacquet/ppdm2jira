# ProjectRoleDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Admin** | **Boolean** | Whether this role is the admin role for the project. | [optional] [readonly] 
**Default** | **Boolean** | Whether this role is the default role for the project. | [optional] [readonly] 
**Description** | **String** | The description of the project role. | [optional] [readonly] 
**Id** | **Int64** | The ID of the project role. | [optional] [readonly] 
**Name** | **String** | The name of the project role. | [optional] 
**RoleConfigurable** | **Boolean** | Whether the roles are configurable for this project. | [optional] [readonly] 
**Scope** | [**Scope**](Scope.md) | The scope of the role. Indicated for roles associated with [next-gen projects](https://confluence.atlassian.com/x/loMyO). | [optional] [readonly] 
**Self** | **String** | The URL the project role details. | [optional] [readonly] 
**TranslatedName** | **String** | The translated name of the project role. | [optional] 
**Type** | **String** | The type of the project role. This is &quot;&quot;DEFAULT&quot;&quot; or &quot;&quot;GUEST\_ROLE&quot;&quot;. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectRoleDetails = Initialize-JiraApiReferenceProjectRoleDetails  -Admin null `
 -Default null `
 -Description null `
 -Id null `
 -Name null `
 -RoleConfigurable null `
 -Scope null `
 -Self null `
 -TranslatedName null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ProjectRoleDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

