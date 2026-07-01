# AssetExtendedData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdsFileBackupEnabled** | **Boolean** | Enable ADS File Backup. Defaults to false if no value is provided. | [optional] 
**AlternateDestinationPath** | **String** | Alternate path used during NAS FLR restore to original, will be used only if overrideExisiting is set to false. | [optional] 
**ChangeFileListEnabled** | **Boolean** | Enable change file list. Applicable during SnapshotSlice and BackupSnapshot Backup Actions. | [optional] 
**ContinueOnFileNameLenLimitReached** | **Boolean** | If set to true, continue with the backup of the file or folder when the name length of the file or folder exceeds 255 bytes. | [optional] 
**DepthLimit** | **Int32** | Slice depth limit. It is used during the SnapshotSlice operation when creating a backup. | [optional] 
**EnableNasFsApiScan** | **Boolean** | Enables file system scan using ReadDirPlus. Applicable during SnapshotSlice and BackupSnapshot backup actions. | [optional] 
**FailedBackupRetryCount** | **Int32** | Auto retry for slices that failed to complete during the backup session. | [optional] 
**MaxSliceFolderCount** | **Int32** | The maximum number of Slice folders allowed which is utilized during the SnapshotSlice operation for creating a backup. | [optional] 
**NfsShare** | [**AssetExtendedDataNfsShare**](AssetExtendedDataNfsShare.md) |  | [optional] 
**OverrideExisting** | **Boolean** | If set to false, NAS FLR will restore to the path provided in the alternateDestinationPath in case of restore to original. | [optional] 
**PreviousSliceFileCount** | **Int64** | This field specifies the slice threshold for the file count of the previous backup job. | [optional] 
**PreviousSliceSize** | **Int64** | This field specifies the slice threshold for the file size of the previous backup job. | [optional] 
**RelativeWorkingDirectory** | **String** | The NFS relative working directory. | [optional] 
**SkipFilesWithNameLenLimitReached** | **Boolean** | If set to true, skip the file or folder during a backup when the length of the file or folder name exceeds 255 bytes. | [optional] 
**SliceFileCount** | **Int32** | Slice file count limit. It is used during the SnapshotSlice operation when creating a backup. | [optional] 
**SliceSize** | **Int64** | Slice file size limit. It is used during the SnapshotSlice operation when creating a backup. | [optional] 
**UpdateTimeOut** | **Int32** | Timeout interval after which the backup session is canceled. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetExtendedData = Initialize-PpdmApiReferenceAssetExtendedData  -AdsFileBackupEnabled null `
 -AlternateDestinationPath null `
 -ChangeFileListEnabled null `
 -ContinueOnFileNameLenLimitReached null `
 -DepthLimit null `
 -EnableNasFsApiScan null `
 -FailedBackupRetryCount null `
 -MaxSliceFolderCount null `
 -NfsShare null `
 -OverrideExisting null `
 -PreviousSliceFileCount null `
 -PreviousSliceSize null `
 -RelativeWorkingDirectory null `
 -SkipFilesWithNameLenLimitReached null `
 -SliceFileCount null `
 -SliceSize null `
 -UpdateTimeOut null
```

- Convert the resource to JSON
```powershell
$AssetExtendedData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

