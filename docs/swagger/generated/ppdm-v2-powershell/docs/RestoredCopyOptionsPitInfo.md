# RestoredCopyOptionsPitInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndLogSeq** | **String** | This property is used when restoreCategory &#x3D; RESTORE_LOG and restoreSubCategory &#x3D; PIT_SEQ. | [optional] 
**EndScn** | **String** | This property is used when restoreCategory &#x3D; RESTORE_LOG and restoreSubCategory &#x3D; PIT_SCN. The value must be integer type. | [optional] 
**EndTime** | **String** | The end time is used when restoreCategory &#x3D; RESTORE_LOG and restoreSubCategory &#x3D; PIT_TIME. | [optional] 
**StartLogSeq** | **String** | This property is used when restoreCategory &#x3D; RESTORE_LOG and restoreSubCategory &#x3D; PIT_SEQ. | [optional] 
**StartScn** | **String** | This property is used when restoreCategory &#x3D; RESTORE_LOG and restoreSubCategory &#x3D; PIT_SCN. The value must be integer type. | [optional] 
**StartTime** | **String** | The start time is used when restoreCategory &#x3D; RESTORE_LOG and restoreSubCategory &#x3D; PIT_TIME. | [optional] 
**TargetLogSeq** | **String** | The restoreSubCategory property &#x3D; PIT_SEQ, which is the target log sequence number for point-in-time recovery. | [optional] 
**TargetScn** | **String** | The restoreSubCategory property &#x3D; PIT_SCN, which is the target SCN number for point-in-time recovery. | [optional] 
**TargetTime** | **String** | When restoreCategory &#x3D; &quot;&quot;DISASTER_RECOVERY&quot;&quot;, restoreSubCategory &#x3D; &quot;&quot;BACKUP_TIME&quot;&quot; and targetTime &#x3D; backupEndTime. When restoreCategory &#x3D; DISASTER_RECOVERY or RESTORE_DB, restoreSubCategory &#x3D; PIT_TIME or user specified time. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoredCopyOptionsPitInfo = Initialize-PpdmApiReferenceRestoredCopyOptionsPitInfo  -EndLogSeq null `
 -EndScn null `
 -EndTime null `
 -StartLogSeq null `
 -StartScn null `
 -StartTime null `
 -TargetLogSeq null `
 -TargetScn null `
 -TargetTime null
```

- Convert the resource to JSON
```powershell
$RestoredCopyOptionsPitInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

