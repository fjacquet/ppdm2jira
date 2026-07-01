# TargetVmInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** | The ID of the target Virtual Machine (VM) for a granular VMDK restore-to-alternate operation. | [optional] 
**ClusterMoref** | **String** | The moref (managed object reference) of the Compute Cluster that the new VM should be placed into.  This is only required if the hostMoref is not provided. | [optional] 
**DataCenterMoref** | **String** | The moref of the Datacenter that the new VM should be placed into.  This is required except when performing a Direct to ESXi Host restore. | [optional] 
**DataStoreMoref** | **String** | The moref of the Datastore that the new VM should be placed into.  This is only required if the diskMap parameter is not provided, in which case this value is ignored. | [optional] 
**DeleteBackingFile** | **Boolean** | When performing a Restore to Original, and one or more disks in the current VM did not exist at the time of the backup, those disks will be removed from the VM.  This flag controls whether the disk files are also deleted from the datastore. | [optional] 
**Disks** | [**VirtualDiskMap[]**](VirtualDiskMap.md) | A optional list of the disks that should be restored, and how/where to restore them.  If not provided then all disks will be restored based on the information in the copy, and the provided datastoreMoref. | [optional] 
**EsxHost** | [**HostCredentials**](HostCredentials.md) |  | [optional] 
**FolderMoref** | **String** | The moref of the VM Folder to place the new VM into.  If not provided the root folder of the datacenter is used as the destination. | [optional] 
**HostMoref** | **String** | The moref of the host to restore the VM into.  If the clusterMoref is provided and that cluster has DRS enabled, then this parameter is optional and an appropriate host will be chosen automatically using DRS. | [optional] 
**InventorySourceId** | **String** | The ID of the vCenter Inventory Source to restore the VM into.  Optional for Restore to Original. | [optional] 
**Networks** | [**NetworkSettings[]**](NetworkSettings.md) | An optional list of NICs that exist in the backup that should be restored and mapped to networks in the vCenter.  This allows NICs to be re-mapped to different networks at the time of restore. | [optional] 
**RecoverConfig** | **Boolean** | If true then during Restore to Original the VM configuration settings will be restored along with the data on the disks.  Defaults to true, but will be automatically set to false if the VM has any RDM disks, or any disks were excluded in the backup. | [optional] 
**ResourcePoolMoref** | **String** | The optional moref of a ResourcePool to restore the VM into. | [optional] 
**RestoredVmAsset** | [**RestoredVmAsset**](RestoredVmAsset.md) |  | [optional] 
**SpbmRestoreDirective** | **String** | Controls whether to attempt to assign any Storage Policies that were saved in the backup when restoring the VM. | [optional] 
**TagRestoreDirective** | **String** | Controls whether to attempt to assign any Tags that were saved in the backup when restoring the VM.  If the vCenter does not have a Tag with the same name, a new Tag will be created with that name if possible. | [optional] 
**VmName** | **String** | The name of the VM to use for restore to New/Alternate, Instant Access, Instant Restore or Restore to ESXi Host. | [optional] 
**VmPowerOn** | **Boolean** | Controls whether to power on the VM after the restore is complete.  For Instant Restore this happens before the VM is moved to permanent storage.  For Restore to Original, if not set the current power state of the VM will be preserved. | [optional] 
**VmReconnectNic** | **Boolean** | Controls whether to reconnect all NICs on the VM after the restore is complete.  This setting is ignored if the networks parameter is provided. | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetVmInfo = Initialize-PpdmApiReferenceTargetVmInfo  -AssetId null `
 -ClusterMoref null `
 -DataCenterMoref null `
 -DataStoreMoref null `
 -DeleteBackingFile null `
 -Disks null `
 -EsxHost null `
 -FolderMoref null `
 -HostMoref null `
 -InventorySourceId null `
 -Networks null `
 -RecoverConfig null `
 -ResourcePoolMoref null `
 -RestoredVmAsset null `
 -SpbmRestoreDirective null `
 -TagRestoreDirective null `
 -VmName null `
 -VmPowerOn null `
 -VmReconnectNic null
```

- Convert the resource to JSON
```powershell
$TargetVmInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

