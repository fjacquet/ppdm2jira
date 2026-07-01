# RolesCapabilityPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleToProjectActors** | [**System.Collections.Hashtable**](Array.md) | A map of role PCRI (can be ID or REF) to a list of user or group PCRI IDs to associate with the role and project. | [optional] 
**Roles** | [**RolePayload[]**](RolePayload.md) | The list of roles to create. | [optional] 

## Examples

- Prepare the resource
```powershell
$RolesCapabilityPayload = Initialize-JiraApiReferenceRolesCapabilityPayload  -RoleToProjectActors null `
 -Roles null
```

- Convert the resource to JSON
```powershell
$RolesCapabilityPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

