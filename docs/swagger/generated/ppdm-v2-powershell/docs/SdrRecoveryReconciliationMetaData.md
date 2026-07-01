# SdrRecoveryReconciliationMetaData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupCreationTime** | **String** | The selected restore backup&#39;s creation time. | [optional] 
**RestoreCompletionTime** | **String** | The restore workflow completion time. | [optional] 

## Examples

- Prepare the resource
```powershell
$SdrRecoveryReconciliationMetaData = Initialize-PpdmApiReferenceSdrRecoveryReconciliationMetaData  -BackupCreationTime null `
 -RestoreCompletionTime null
```

- Convert the resource to JSON
```powershell
$SdrRecoveryReconciliationMetaData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

