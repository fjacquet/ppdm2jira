# AssetKubernetesPersistentVolumeClaim
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessModes** | **String[]** | Access mode of the mounted volume (ReadWriteOnce, ReadOnlyMany, or ReadWriteMany). | [optional] 
**Excluded** | **Boolean** | Excluded from its parent namespace | [optional] 
**Status** | **String** | PVC phase/status (Available, Bound, Released, or Failed). | [optional] 
**StorageClassName** | **String** | Volume storage class name. | [optional] 
**VolumeMode** | **String** | Volume mode: block (raw block device) or filesystem. | [optional] 
**VolumeName** | **String** | Persistent volume name for the PVC. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetKubernetesPersistentVolumeClaim = Initialize-PpdmApiReferenceAssetKubernetesPersistentVolumeClaim  -AccessModes null `
 -Excluded null `
 -Status null `
 -StorageClassName null `
 -VolumeMode null `
 -VolumeName null
```

- Convert the resource to JSON
```powershell
$AssetKubernetesPersistentVolumeClaim | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

