# PreferredInterface
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NetworkAddress** | **String** |  | [optional] 
**NetworkLabel** | **String** |  | [optional] 
**NetworkName** | **String** |  | [optional] 
**Purposes** | [**NetworkPurpose[]**](NetworkPurpose.md) |  | [optional] 
**Readiness** | [**Readiness**](Readiness.md) |  | [optional] 
**Scope** | **String** |  | [optional] 
**Speed** | **Double** |  | [optional] 
**Tags** | **String[]** | The tags for the virtual network. | [optional] 

## Examples

- Prepare the resource
```powershell
$PreferredInterface = Initialize-PpdmApiReferencePreferredInterface  -NetworkAddress null `
 -NetworkLabel null `
 -NetworkName null `
 -Purposes null `
 -Readiness null `
 -Scope null `
 -Speed null `
 -Tags null
```

- Convert the resource to JSON
```powershell
$PreferredInterface | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

