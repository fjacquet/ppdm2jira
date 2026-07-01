# PatchAssetRequestKubernetesAttribute
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PersistentVolumeClaim** | [**PatchAssetRequestPersistentVolumeClaim**](PatchAssetRequestPersistentVolumeClaim.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchAssetRequestKubernetesAttribute = Initialize-PpdmApiReferencePatchAssetRequestKubernetesAttribute  -PersistentVolumeClaim null
```

- Convert the resource to JSON
```powershell
$PatchAssetRequestKubernetesAttribute | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

