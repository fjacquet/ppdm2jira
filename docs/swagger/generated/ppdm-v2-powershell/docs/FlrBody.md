# FlrBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Options** | **String[]** |  | [optional] 
**Source** | [**FlrSource**](FlrSource.md) |  | [optional] 
**Strategy** | [**Strategy**](Strategy.md) |  | [optional] 
**Target** | [**Target**](Target.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FlrBody = Initialize-PpdmApiReferenceFlrBody  -Options null `
 -Source null `
 -Strategy null `
 -Target null
```

- Convert the resource to JSON
```powershell
$FlrBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

