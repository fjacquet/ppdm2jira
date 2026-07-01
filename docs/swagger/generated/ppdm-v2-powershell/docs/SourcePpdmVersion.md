# SourcePpdmVersion
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Build** | **String** |  | [optional] 
**Major** | **String** |  | [optional] 
**Minor** | **String** |  | [optional] 
**Release** | **String** |  | [optional] 
**Service** | **String** |  | [optional] 
**Snapshot** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SourcePpdmVersion = Initialize-PpdmApiReferenceSourcePpdmVersion  -Build null `
 -Major null `
 -Minor null `
 -Release null `
 -Service null `
 -Snapshot null
```

- Convert the resource to JSON
```powershell
$SourcePpdmVersion | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

