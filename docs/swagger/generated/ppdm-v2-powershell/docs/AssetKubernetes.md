# AssetKubernetes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExternalCreatedAt** | **String** | Date and time when resource is created (UTC). | [optional] 
**InventorySourceId** | **String** | PowerProtect Data Manager inventory source ID (inventorySourceId). | [optional] 
**InventorySourceName** | **String** | The Kubernetes cluster name this asset belongs to. | [optional] 
**LastBackup** | **System.DateTime** | The date and time of last copy for this Kubernetes asset. If no backup, this field is null. | [optional] 
**Namespace** | **String** | Kubernetes resource namespace. | [optional] 
**PersistentVolumeClaim** | [**AssetKubernetesPersistentVolumeClaim**](AssetKubernetesPersistentVolumeClaim.md) |  | [optional] 
**Size** | **Int64** | For namespace: Total capacity of all namespace member PVCs in bytes (asset size). For persistent volume claims (PVC): PVC capacity. | [optional] 
**SubType** | **String** | The subtype for this Kubernetes resource (K8S_NAMESPACE or K8S_PERSISTENT_VOLUME_CLAIM). | [optional] 
**Uid** | **String** | ID of Kubernetes resource. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetKubernetes = Initialize-PpdmApiReferenceAssetKubernetes  -ExternalCreatedAt null `
 -InventorySourceId null `
 -InventorySourceName null `
 -LastBackup null `
 -Namespace null `
 -PersistentVolumeClaim null `
 -Size null `
 -SubType null `
 -Uid null
```

- Convert the resource to JSON
```powershell
$AssetKubernetes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

