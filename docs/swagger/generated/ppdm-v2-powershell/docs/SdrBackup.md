# SdrBackup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EventTriggerSource** | **String** | The event trigger of the backup for server disaster recovery. | [optional] 
**BackupConsistencyType** | **String** | Server disaster recovery Backup type. | [optional] 
**BackupTriggerSource** | **String** | Server disaster recovery source of backup trigger. | [optional] 
**Checksum** | **String** | Server disaster recovery backup checksum. | [optional] 
**ComponentVersions** | [**ComponentVersion[]**](ComponentVersion.md) |  | [optional] 
**Components** | [**SdrComponent[]**](SdrComponent.md) |  | [optional] 
**ConfigType** | **String** | Configuration type of the server disaster recovery backup. | [optional] 
**Consistency** | **String** | Server disaster recovery backup consistency. | [optional] 
**CreationTime** | **System.DateTime** | Server disaster recovery backup creation time. | [optional] 
**DeployedPlatform** | **String** | Platform on which server disaster recovery was running at the time of the backup. | [optional] 
**ElapsedSeconds** | **Int32** | Server disaster recovery backup elapsed seconds. | [optional] 
**VarError** | **String** | Server disaster recovery backup error. | [optional] 
**Hostname** | **String** | Server disaster recovery backup host name. | [optional] 
**Id** | **String** | Server disaster recovery backup ID. | [optional] 
**LockboxPassphrase** | **String** | Server disaster recovery backup lockbox passphrase. | [optional] 
**MfrManifestId** | **String** | Server disaster recovery backup manifest ID. | [optional] 
**MfrReplicationId** | **String** | Server disaster recovery backup replication ID. | [optional] 
**Name** | **String** | Server disaster recovery backup name. | [optional] 
**NoScheduledStorageAccess** | **Boolean** |  | [optional] 
**NodeId** | **String** | Server disaster recovery backup node ID. | [optional] 
**Recover** | **Boolean** | Server disaster recovery backup recover flag. | [optional] 
**RecoverOptions** | [**RecoverOptions**](RecoverOptions.md) |  | [optional] 
**SequenceNumber** | **Int32** | Server disaster recovery backup sequence number. | [optional] 
**SizeInBytes** | **Int64** | Server disaster recovery backup size. | [optional] 
**Solution** | **String** | The solution describes the environment on which PPDM is deployed. For example, virtual_appliance or a software. | [optional] 
**State** | **String** | Server disaster recovery backup state. | [optional] 
**ValidRootCA** | **Boolean** | Indicates whether the backup contains a valid or invalid root CA certificate. | [optional] 
**Version** | **String** | Server disaster recovery backup version. | [optional] 
**WorkflowTaskId** | **String** | A PowerProtect Data Manager identifier for the task to associate this operation with. | [optional] 

## Examples

- Prepare the resource
```powershell
$SdrBackup = Initialize-PpdmApiReferenceSdrBackup  -EventTriggerSource null `
 -BackupConsistencyType null `
 -BackupTriggerSource null `
 -Checksum null `
 -ComponentVersions null `
 -Components null `
 -ConfigType null `
 -Consistency null `
 -CreationTime null `
 -DeployedPlatform null `
 -ElapsedSeconds null `
 -VarError null `
 -Hostname null `
 -Id null `
 -LockboxPassphrase null `
 -MfrManifestId null `
 -MfrReplicationId null `
 -Name null `
 -NoScheduledStorageAccess null `
 -NodeId null `
 -Recover null `
 -RecoverOptions null `
 -SequenceNumber null `
 -SizeInBytes null `
 -Solution null `
 -State null `
 -ValidRootCA null `
 -Version null `
 -WorkflowTaskId null
```

- Convert the resource to JSON
```powershell
$SdrBackup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

