# PatchAssetRequestPersistentVolumeClaim
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Excluded** | **Boolean** | Excluded from its parent namespace. | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchAssetRequestPersistentVolumeClaim = Initialize-PpdmApiReferencePatchAssetRequestPersistentVolumeClaim  -Excluded null
```

- Convert the resource to JSON
```powershell
$PatchAssetRequestPersistentVolumeClaim | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

