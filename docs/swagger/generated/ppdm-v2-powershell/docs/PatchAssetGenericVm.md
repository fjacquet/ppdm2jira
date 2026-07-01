# PatchAssetGenericVm
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Disks** | [**PatchAssetExcludeGenericVmDisks[]**](PatchAssetExcludeGenericVmDisks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchAssetGenericVm = Initialize-PpdmApiReferencePatchAssetGenericVm  -Disks null
```

- Convert the resource to JSON
```powershell
$PatchAssetGenericVm | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

