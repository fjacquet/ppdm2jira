# Role
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Role description. | [optional] 
**DisplayName** | **String** | Role display name. | [optional] 
**HiddenRole** | **Boolean** | Hidden role. | [optional] 
**Id** | **String** | Role ID. | [optional] 
**LocalAssignees** | **Int32** | The number of Local Identity Provider account users assigned with the role. | [optional] 
**Name** | **String** | Role name. | [optional] 
**PrivilegeList** | [**Privilege[]**](Privilege.md) | Privilege list. | [optional] 
**RemoteAssignees** | **Int32** | The number of remote Identity Provider groups assigned with the role. | [optional] 
**SystemRole** | **Boolean** | System role. | [optional] 
**Transferable** | **Boolean** | Transferable. | [optional] 

## Examples

- Prepare the resource
```powershell
$Role = Initialize-PpdmApiReferenceRole  -Description null `
 -DisplayName null `
 -HiddenRole null `
 -Id null `
 -LocalAssignees null `
 -Name null `
 -PrivilegeList null `
 -RemoteAssignees null `
 -SystemRole null `
 -Transferable null
```

- Convert the resource to JSON
```powershell
$Role | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

