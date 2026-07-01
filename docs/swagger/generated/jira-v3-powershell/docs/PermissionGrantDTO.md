# PermissionGrantDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationAccess** | **String[]** |  | [optional] 
**GroupCustomFields** | [**ProjectCreateResourceIdentifier[]**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Groups** | [**ProjectCreateResourceIdentifier[]**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**PermissionKeys** | **String[]** |  | [optional] 
**ProjectRoles** | [**ProjectCreateResourceIdentifier[]**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**SpecialGrants** | **String[]** |  | [optional] 
**UserCustomFields** | [**ProjectCreateResourceIdentifier[]**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Users** | [**ProjectCreateResourceIdentifier[]**](ProjectCreateResourceIdentifier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PermissionGrantDTO = Initialize-JiraApiReferencePermissionGrantDTO  -ApplicationAccess null `
 -GroupCustomFields null `
 -Groups null `
 -PermissionKeys null `
 -ProjectRoles null `
 -SpecialGrants null `
 -UserCustomFields null `
 -Users null
```

- Convert the resource to JSON
```powershell
$PermissionGrantDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

