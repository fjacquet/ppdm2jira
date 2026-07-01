# SecurityLevelMember
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Holder** | [**PermissionHolder**](PermissionHolder.md) | The user or group being granted the permission. It consists of a &#x60;type&#x60; and a type-dependent &#x60;parameter&#x60;. See [Holder object](../api-group-permission-schemes/#holder-object) in *Get all permission schemes* for more information. | [readonly] 
**Id** | **String** | The ID of the issue security level member. | [readonly] 
**IssueSecurityLevelId** | **String** | The ID of the issue security level. | [readonly] 
**IssueSecuritySchemeId** | **String** | The ID of the issue security scheme. | [readonly] 
**Managed** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SecurityLevelMember = Initialize-JiraApiReferenceSecurityLevelMember  -Holder null `
 -Id null `
 -IssueSecurityLevelId null `
 -IssueSecuritySchemeId null `
 -Managed null
```

- Convert the resource to JSON
```powershell
$SecurityLevelMember | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

