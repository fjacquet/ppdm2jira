# SplitterInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NumberOfAttachedRPAClusters** | **Int32** |  | [optional] 
**RpaConnectivityInfo** | [**RPAConnectivity[]**](RPAConnectivity.md) |  | [optional] 
**Status** | **String** |  | [optional] 
**Uid** | **String** |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SplitterInfo = Initialize-PpdmApiReferenceSplitterInfo  -NumberOfAttachedRPAClusters null `
 -RpaConnectivityInfo null `
 -Status null `
 -Uid null `
 -Version null
```

- Convert the resource to JSON
```powershell
$SplitterInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

