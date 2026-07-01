# CopyNasSnapshotMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChangeListId** | **String** | The change list ID. | [optional] 
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Path** | **String** |  | [optional] 
**PathId** | **String** |  | [optional] 
**SnapshotLockId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyNasSnapshotMetadata = Initialize-PpdmApiReferenceCopyNasSnapshotMetadata  -ChangeListId null `
 -Id null `
 -Name null `
 -Path null `
 -PathId null `
 -SnapshotLockId null
```

- Convert the resource to JSON
```powershell
$CopyNasSnapshotMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

