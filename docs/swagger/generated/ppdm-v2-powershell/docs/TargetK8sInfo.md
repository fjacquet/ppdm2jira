# TargetK8sInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**K8sVirtualMachineNames** | **String[]** | The list of all names of the Kubernetes (K8s) Virtual Machines (VMs) to be restored. | [optional] 
**Namespace** | **String** | The alternate namespace name for Restore to New.  Note: If restoreType&#x3D;&#x3D;TO_PRODUCTION (Restore to Original), the value of this field is ignored. | [optional] 
**OverwritePersistentVolumeClaim** | **Boolean** | Boolean to indicate if persistent volume claim contents should be overwritten if they exist.  If it is true, existing persistent volume claim contents are overwritten. | [optional] 
**OverwriteVmConfig** | **Boolean** | Boolean to indicate whether to overwrite the Virtual Machine (VM) configuration.  If true, the existing Virtual Machine (VM) configuration is overwritten. | [optional] 
**PersistentVolumeClaims** | [**TargetK8sInfoPersistentVolumeClaims[]**](TargetK8sInfoPersistentVolumeClaims.md) | List of persistent volume claims to be restored. Each entry in the list is the asset name pointing to a Kubernetes persistent volume claim asset. | [optional] 
**SkipNamespaceResources** | **Boolean** | Boolean to Indicates whether namespace resources will be restored.  If it is true, it means to not restore namespace resources. | [optional] 
**TargetInventorySourceId** | **String** | The target cluster inventory source id where the restore will  begin. | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetK8sInfo = Initialize-PpdmApiReferenceTargetK8sInfo  -K8sVirtualMachineNames null `
 -Namespace null `
 -OverwritePersistentVolumeClaim null `
 -OverwriteVmConfig null `
 -PersistentVolumeClaims null `
 -SkipNamespaceResources null `
 -TargetInventorySourceId null
```

- Convert the resource to JSON
```powershell
$TargetK8sInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

