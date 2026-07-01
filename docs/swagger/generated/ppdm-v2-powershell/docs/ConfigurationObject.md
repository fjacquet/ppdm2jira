# ConfigurationObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdHocBackupRetentionInHours** | **String** | Hours to retain backups. | [optional] 
**BackupFrequencyInHours** | **String** | Frequency of backups in hours. | [optional] 
**EventAccumulatedTimeInMinutes** | **String** | Event accumulation time. | [optional] 
**EventElapsedTimeInMinutes** | **String** | Event aggregation time. | [optional] 
**NumberOfDaysBackupsAvailable** | **String** | Days for backups to be available. | [optional] 
**SystemBackupRetentionInHours** | **String** | Retention value for backups to be retained. | [optional] 
**ValidSpringConfiguration** | **Boolean** | Valid Spring Configuration. | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigurationObject = Initialize-PpdmApiReferenceConfigurationObject  -AdHocBackupRetentionInHours null `
 -BackupFrequencyInHours null `
 -EventAccumulatedTimeInMinutes null `
 -EventElapsedTimeInMinutes null `
 -NumberOfDaysBackupsAvailable null `
 -SystemBackupRetentionInHours null `
 -ValidSpringConfiguration null
```

- Convert the resource to JSON
```powershell
$ConfigurationObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

