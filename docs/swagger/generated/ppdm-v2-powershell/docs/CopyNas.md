# CopyNas
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupMechanism** | **String** |  | [optional] 
**DirectoryCount** | **String** |  | [optional] 
**FileCount** | **String** |  | [optional] 
**SkippedElements** | [**CopyNasSkippedElements**](CopyNasSkippedElements.md) |  | [optional] 
**SnapshotMetadata** | [**CopyNasSnapshotMetadata**](CopyNasSnapshotMetadata.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyNas = Initialize-PpdmApiReferenceCopyNas  -BackupMechanism null `
 -DirectoryCount null `
 -FileCount null `
 -SkippedElements null `
 -SnapshotMetadata null
```

- Convert the resource to JSON
```powershell
$CopyNas | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

