# CopyK8s
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupId** | **String** |  | [optional] 
**ClusterResourcesIncluded** | **String** |  | [optional] 
**K8sVirtualMachines** | [**CopyK8sK8sVirtualMachinesInner[]**](CopyK8sK8sVirtualMachinesInner.md) | An array containing all Kubernetes (K8S) Virtual Machine (VM) related details. | [optional] 
**PersistentVolumeClaims** | [**PersistentVolumeClaims[]**](PersistentVolumeClaims.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyK8s = Initialize-PpdmApiReferenceCopyK8s  -BackupId null `
 -ClusterResourcesIncluded null `
 -K8sVirtualMachines null `
 -PersistentVolumeClaims null
```

- Convert the resource to JSON
```powershell
$CopyK8s | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

