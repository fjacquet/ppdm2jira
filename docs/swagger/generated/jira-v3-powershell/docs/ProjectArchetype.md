# ProjectArchetype
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RealType** | **String** |  | [optional] 
**Style** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectArchetype = Initialize-JiraApiReferenceProjectArchetype  -RealType null `
 -Style null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ProjectArchetype | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

