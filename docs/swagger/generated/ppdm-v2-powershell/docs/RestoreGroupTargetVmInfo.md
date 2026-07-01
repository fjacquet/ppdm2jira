# RestoreGroupTargetVmInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClusterMoref** | **String** | The Managed Object Reference (MoRef) of the Compute Cluster that the new Virtual Machine (VM) should be placed into. This reference is only required if the hostMoref is not provided. | [optional] 
**Credentials** | [**RestoreGroupVMCredentials**](RestoreGroupVMCredentials.md) |  | [optional] 
**DataCenterMoref** | **String** | The MoRef of the datacenter that the new Virtual Machine (VM) should be placed into. This reference is required except when performing a direct-to-ESXi host restore. | [optional] 
**DeleteBackingFile** | **Boolean** | When performing a restore to original, and one or more disks in the current Virtual Machine (VM) did not exist at the time of the backup, those disks are removed from the VM. This flag controls whether the disk files are also deleted from the datastore. | [optional] 
**Disk** | [**RestoreGroupVirtualDiskMap**](RestoreGroupVirtualDiskMap.md) |  | [optional] 
**EsxHost** | [**EsxHostInfo**](EsxHostInfo.md) |  | [optional] 
**FolderMoref** | **String** | The MoRef of the Virtual Machine (VM) folder to place the new Virtual Machine (VM) into. If not provided the root folder of the datacenter is used as the destination. | [optional] 
**HostMoref** | **String** | The MoRef of the host to restore the Virtual Machine (VM) into. If the clusterMoref is provided and that cluster has DRS enabled, then this parameter is optional and an appropriate host is chosen automatically using DRS. | [optional] 
**InventorySourceId** | **String** | The ID of the vCenter inventory source to restore the Virtual Machine (VM) into. Optional for restore to original. | [optional] 
**Network** | [**RestoreGroupNetworkSettings**](RestoreGroupNetworkSettings.md) |  | [optional] 
**RecoverConfig** | **Boolean** | If true, then during restore to original the Virtual Machine (VM) configuration settings are restored along with the data on the disks. Defaults to true, but is automatically set to false if the Virtual Machine (VM) has any RDM disks or any disks are excluded in the backup. | [optional] 
**ResourcePoolMoref** | **String** | The optional MoRef of a resource pool to restore the VM into. | [optional] 
**SpbmRestoreDirective** | **String** | Controls whether to attempt to assign any storage policies that are saved in the backup when restoring the VM. | [optional] 
**TagRestoreDirective** | **String** | Controls whether to attempt to assign any tags that are saved in the backup when restoring the VM. If the vCenter does not have a tag with the same name, a new tag is created with that name, if possible. | [optional] 
**VmPowerOn** | **Boolean** | Controls whether to power on the VM after the restore is complete. For instant restore, this action happens before the VM is moved to permanent storage. For restore to original, if not set, the current power state of the VM is preserved. | [optional] 
**VmReconnectNic** | **Boolean** | Controls whether to reconnect all NICs on the VM after the restore is complete.  This setting is ignored if the network parameter is provided. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoreGroupTargetVmInfo = Initialize-PpdmApiReferenceRestoreGroupTargetVmInfo  -ClusterMoref null `
 -Credentials null `
 -DataCenterMoref null `
 -DeleteBackingFile null `
 -Disk null `
 -EsxHost null `
 -FolderMoref null `
 -HostMoref null `
 -InventorySourceId null `
 -Network null `
 -RecoverConfig null `
 -ResourcePoolMoref null `
 -SpbmRestoreDirective null `
 -TagRestoreDirective null `
 -VmPowerOn null `
 -VmReconnectNic null
```

- Convert the resource to JSON
```powershell
$RestoreGroupTargetVmInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

