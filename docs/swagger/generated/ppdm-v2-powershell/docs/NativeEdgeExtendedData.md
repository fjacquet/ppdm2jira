# NativeEdgeExtendedData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupId** | **String** | The ID of the backup. | [optional] 
**DiskBackupCount** | **Int64** | The number of disks included in this backup. | [optional] 
**DiskTotalCount** | **Int64** | Total number of disks. | [optional] 
**Disks** | [**NativeEdgeDisk[]**](NativeEdgeDisk.md) |  | [optional] 
**Networks** | [**NativeEdgeNetwork[]**](NativeEdgeNetwork.md) |  | [optional] 
**SyntheticFull** | **Boolean** | Indicates whether this copy is a Synthetic Full or a Full (level 0) backup. | [optional] 

## Examples

- Prepare the resource
```powershell
$NativeEdgeExtendedData = Initialize-PpdmApiReferenceNativeEdgeExtendedData  -BackupId null `
 -DiskBackupCount null `
 -DiskTotalCount null `
 -Disks null `
 -Networks null `
 -SyntheticFull null
```

- Convert the resource to JSON
```powershell
$NativeEdgeExtendedData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

