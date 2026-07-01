# RolePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultActors** | [**ProjectCreateResourceIdentifier[]**](ProjectCreateResourceIdentifier.md) | The default actors for the role. By adding default actors, the role will be added to any future projects created | [optional] 
**Description** | **String** | The description of the role | [optional] 
**Name** | **String** | The name of the role | [optional] 
**OnConflict** | **String** | The strategy to use when there is a conflict with an existing project role. FAIL - Fail execution, this always needs to be unique; USE - Use the existing entity and ignore new entity parameters | [optional] [default to "USE"]
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Type** | **String** | The type of the role. Only used by project-scoped project | [optional] 

## Examples

- Prepare the resource
```powershell
$RolePayload = Initialize-JiraApiReferenceRolePayload  -DefaultActors [pcri:user:id:1234] `
 -Description null `
 -Name null `
 -OnConflict null `
 -Pcri null `
 -Type EDITABLE
```

- Convert the resource to JSON
```powershell
$RolePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

