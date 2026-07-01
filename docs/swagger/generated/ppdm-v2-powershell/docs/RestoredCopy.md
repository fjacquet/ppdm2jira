# RestoredCopy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | The activity ID of the restore activity. Activity can be a Task, a Job, or a JobGroup. | [optional] 
**CompletionTime** | **System.DateTime** | Restoration completion time. | [optional] 
**CopyId** | **String** | ID of the copy to be restored. | [optional] 
**CopyIds** | **String[]** | IDs of copy to be restored. | [optional] 
**Description** | **String** | The description of the restored copy, it&#39;s not description of restore job. | 
**DryRun** | **Boolean** | For Oracle to generate RMAN scripts only. | [optional] 
**ExpirationTime** | **System.DateTime** | When the restore is expired, VMDM service involves the restore session to remove (cleanup) its NAS datastore and resource. | [optional] 
**Id** | **String** | ID of the particular restored copy. | [optional] 
**Options** | [**RestoredCopyOptions**](RestoredCopyOptions.md) |  | [optional] 
**RestoreEntireBackupTransaction** | **Boolean** | Restore all copies that have the same backup transaction ID (backupTransactionId). | [optional] 
**RestoreEntireCopyGroup** | **Boolean** | This flag helps the API to distinguish between the Single copy restore and the Copy-group restore. | [optional] 
**RestoreType** | **String** | Restore operation type of particular restored copy. | 
**RestoredCopiesDetails** | [**RestoredCopiesDetails**](RestoredCopiesDetails.md) |  | [optional] 
**StartTime** | **System.DateTime** | Restoration start time. | [optional] 
**State** | **String** | State of particular restored copy. | [optional] 
**Status** | **String** | Status of particular restored copy. | [optional] 
**UserComment** | [**UserComment**](UserComment.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoredCopy = Initialize-PpdmApiReferenceRestoredCopy  -ActivityId null `
 -CompletionTime null `
 -CopyId null `
 -CopyIds null `
 -Description null `
 -DryRun null `
 -ExpirationTime null `
 -Id null `
 -Options null `
 -RestoreEntireBackupTransaction null `
 -RestoreEntireCopyGroup null `
 -RestoreType null `
 -RestoredCopiesDetails null `
 -StartTime null `
 -State null `
 -Status null `
 -UserComment null
```

- Convert the resource to JSON
```powershell
$RestoredCopy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

