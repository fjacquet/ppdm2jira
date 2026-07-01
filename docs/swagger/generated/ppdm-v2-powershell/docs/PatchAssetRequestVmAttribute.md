# PatchAssetRequestVmAttribute
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DataMoverType** | **String** |  | [optional] 
**DisableCbt** | **Boolean** |  | [optional] 
**DisableQuiescing** | **Boolean** |  | [optional] 
**Disks** | [**PatchAssetRequestExcludeDisksDetailsVmDisks[]**](PatchAssetRequestExcludeDisksDetailsVmDisks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchAssetRequestVmAttribute = Initialize-PpdmApiReferencePatchAssetRequestVmAttribute  -DataMoverType null `
 -DisableCbt null `
 -DisableQuiescing null `
 -Disks null
```

- Convert the resource to JSON
```powershell
$PatchAssetRequestVmAttribute | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

