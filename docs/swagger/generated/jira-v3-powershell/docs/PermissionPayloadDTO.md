# PermissionPayloadDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AddAddonRole** | **Boolean** | Configuration to generate addon role. Default is false if null. Only applies to GLOBAL-scoped permission scheme | [optional] 
**Description** | **String** | The description of the permission scheme | [optional] 
**Grants** | [**PermissionGrantDTO[]**](PermissionGrantDTO.md) | List of permission grants | [optional] 
**Name** | **String** | The name of the permission scheme | [optional] 
**OnConflict** | **String** | The strategy to use when there is a conflict with an existing permission scheme. FAIL - Fail execution, this always needs to be unique; USE - Use the existing entity and ignore new entity parameters; NEW - If the entity exist, try and create a new one with a different name | [optional] [default to "FAIL"]
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PermissionPayloadDTO = Initialize-JiraApiReferencePermissionPayloadDTO  -AddAddonRole null `
 -Description null `
 -Grants null `
 -Name null `
 -OnConflict null `
 -Pcri null
```

- Convert the resource to JSON
```powershell
$PermissionPayloadDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

