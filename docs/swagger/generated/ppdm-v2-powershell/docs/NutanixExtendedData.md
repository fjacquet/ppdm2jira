# NutanixExtendedData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupId** | **String** | The backup ID. | [optional] 
**DiskBackupCount** | **Int64** | The number of disks that have been backed up as part of this backup. | [optional] 
**DiskTotalCount** | **Int64** | The total number of disks for the Virtual Machine (VM). | [optional] 
**Disks** | [**NutanixDisk[]**](NutanixDisk.md) |  | [optional] 
**Networks** | [**NutanixNetwork[]**](NutanixNetwork.md) |  | [optional] 
**SnapshotName** | **String** | The name of the snapshot. | [optional] 
**SnapshotType** | [**PrismSnapshotType**](PrismSnapshotType.md) |  | [optional] 
**SnapshotUuid** | **String** | The UUID of the snapshot. | [optional] 
**SyntheticFull** | **Boolean** | A flag indicating whether this copy is a Synthetic Full or a Full (level 0) backup. | [optional] 
**TransportModeUsed** | [**TransportMode**](TransportMode.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NutanixExtendedData = Initialize-PpdmApiReferenceNutanixExtendedData  -BackupId null `
 -DiskBackupCount null `
 -DiskTotalCount null `
 -Disks null `
 -Networks null `
 -SnapshotName null `
 -SnapshotType null `
 -SnapshotUuid null `
 -SyntheticFull null `
 -TransportModeUsed null
```

- Convert the resource to JSON
```powershell
$NutanixExtendedData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

