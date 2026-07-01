# CopyVm
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupId** | **String** | An opaque identifier used to represent the entire Virtual Machine (VM) backup that contains a full backup of this database. | [optional] 
**DataMoverType** | **String** |  | [optional] 
**DiskBackupCount** | **Int64** | The number of disks that have been backed up as part of this backup. | [optional] 
**DiskTotalCount** | **Int64** | The total number of disks for the VM. | [optional] 
**Disks** | [**CopyTargetDisk[]**](CopyTargetDisk.md) |  | [optional] 
**Networks** | [**CopyNetworkSettings[]**](CopyNetworkSettings.md) |  | [optional] 
**PartialCopy** | **Boolean** |  | [optional] 
**PartialCopyDescription** | **String** |  | [optional] 
**ProtectionEngineType** | **String** |  | [optional] 
**QuiesceStatus** | **String** |  | [optional] 
**StoragePolicyId** | **String** | The ID of vCenter storage policy assigned to the Virtual Machine (VM) and any non-disk files. | [optional] 
**SyntheticFull** | **Boolean** |  | [optional] 
**TransportModeUsed** | **String** | The transport mode used to transfer the data for this copy (NBD, HotAdd, TransportSnapshotDataMover, NBDSSL) | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyVm = Initialize-PpdmApiReferenceCopyVm  -BackupId null `
 -DataMoverType null `
 -DiskBackupCount null `
 -DiskTotalCount null `
 -Disks null `
 -Networks null `
 -PartialCopy null `
 -PartialCopyDescription null `
 -ProtectionEngineType null `
 -QuiesceStatus null `
 -StoragePolicyId null `
 -SyntheticFull null `
 -TransportModeUsed null
```

- Convert the resource to JSON
```powershell
$CopyVm | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

