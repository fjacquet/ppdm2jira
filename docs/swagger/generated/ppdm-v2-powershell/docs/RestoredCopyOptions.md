# RestoredCopyOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdAttributes** | **String[]** |  | [optional] 
**AdvanceSpFileParameters** | [**RestoredCopyOptionsAdvanceSpFileParametersInner[]**](RestoredCopyOptionsAdvanceSpFileParametersInner.md) | Oracle pass-through field that specifies the key-value pairs of advance spfile parameters. It is only applicable when the restoreSpfile parameter is true. | [optional] 
**AllowOverwrite** | **String** | Indicate the strategy recovery will use to handle conflict of the contents in the destination NAS Server/Folder. the value must be either &#39;false&#39; or &#39;true | [optional] 
**ApplyNewGuid** | **Boolean** | Hyper-V Virtual Machine (VM) options field. Indicates whether the new ID should be created for the restored Virtual Machine (VM) or not. | [optional] 
**AutoGenTargetStorageResource** | **Boolean** | Indicates to create a new target asset for the alternate storage group restore on PowerMax. | [optional] 
**ChangeDatabaseName** | **Boolean** | Only for Disaster Recovery/IA workflow, change the database name after restoring for the database. | [optional] 
**ChangeDbId** | **Boolean** | Oracle pass-through field that applies only for the DR workflow and is used to change the DBID of the database. | [optional] 
**ChangePasswordOnNextLogin** | **Boolean** |  | [optional] 
**CheckAccessBackint** | **Boolean** | SAP HANA restore options. This option indicates whether to check for the existence of required backups on DataDomain, before initiating restore. | [optional] 
**CheckAccessFileSystem** | **Boolean** | SAP HANA restore options. This option indicates whether to check for the existence of required backups on local host before initiating restore. | [optional] 
**ClearLog** | **Boolean** | SAP HANA restore options. This option indicates whether to delete the files in log area before restore. | [optional] 
**ControlSpFileBackupData** | [**OracleRestoredOptionsControlSpFileInfo**](OracleRestoredOptionsControlSpFileInfo.md) |  | [optional] 
**ConvertToSpFile** | **Boolean** | Only for the disaster recovery/IA workflow. | [optional] 
**CrossCheckBackup** | **Boolean** | This option is for Oracle disaster recovery. Indicates to perform crosscheck backup. | [optional] 
**DatabaseRole** | **String** | Oracle pass-through field for restore dataguard support. | [optional] 
**DisableUserAccount** | **Boolean** |  | [optional] 
**DisconnectDatabaseUsers** | **Boolean** | Microsoft SQL Server requires that there are no database user connections when starting a database restore. This option will automatically disconnect any active database users prior to restoring the database. - false: do not disconnect active database users from database prior to starting a database restore. - true: disconnect active database users prior to starting a database restore. | [optional] 
**EnableAutoCleanup** | **Boolean** | Indicate if DR/INSTANT_ACCESS_RECOVERY fails whether to cleanup the database or not. | [optional] 
**EnableCompressedRestore** | **Boolean** | Passthrough field: Data Domain Boost compressed restore improves backup read performance by using data compression techniques. This option enables Data Domain Boost compressed restore. If the restore is performed under low bandwidth conditions, enabling this flag may help improve Data Domain Boost read performance.  When set to false, the Data Domain Boost data stream is not compressed.  When set to true, the Data Domain Boost data stream is compressed. | [optional] 
**EnableDebug** | **Boolean** | SQL Passthrough field: indicates if debug log should be enabled for the agent or not. | [optional] 
**FileRelocationOptions** | [**RestoredCopyOptionsFileRelocationOptions**](RestoredCopyOptionsFileRelocationOptions.md) |  | [optional] 
**ForceDatabaseOverwrite** | **Boolean** | SQL Passthrough field: indicates the database should be overwritten by the restore, which specifies the &quot;&quot;FORCE&quot;&quot; flag for T-SQL RESTORE statement. | [optional] 
**GuestOsPassword** | **String** | Hyper-V Virtual Machine (VM) options field. Indicates the password to be used for the guest OS on Hyper-V Virtual Machine (VM). | [optional] 
**GuestOsUsername** | **String** | Hyper-V Virtual Machine (VM) options field. Indicates the username to be used for the guest OS on Hyper-V Virtual Machine (VM). | [optional] 
**IgnoreDeltaBackups** | **Boolean** | SAP HANA restore options. This option indicates whether to use only the LOG backups during restore. | [optional] 
**IncludeClusterResources** | **Boolean** | Kubernetes (K8s) passthrough field: indicates the cluster resources that should be included in the restore operation.  | [optional] 
**IncludeVirtualMachineResources** | **Boolean** | Indicates whether the Kubernetes (K8s) Virtual Machine (VM) related cluster resources should be included in the restore operation. | [optional] 
**Iqns** | **String[]** | The list of client ISCSI qualified names (IQNs). | [optional] 
**KeepFlrAgentInstalled** | **Boolean** | Hyper-V Virtual Machine (VM) options field. Indicates whether to uninstall the Agent or not. Default value is FALSE. | [optional] 
**NetworkDetails** | [**RestoredCopyOptionsNetworkDetail[]**](RestoredCopyOptionsNetworkDetail.md) | Hyper-V Virtual Machine (VM) options field, used for setting up the network for VM, post the restore operation. | [optional] 
**OpenDatabase** | **Boolean** | Oracle pass-through field for opening the database after recovery. It is only applicable for DR and live DB restore and not for archive-only restore. | [optional] 
**OsUserNameTarget** | **String** | SAP HANA pass-through field that provides OS user name of the target instance it belongs to. | [optional] 
**PerformTailLogBackup** | **Boolean** | SQL Passthrough field: indicates if tail log backup should be performed.  | [optional] 
**PitInfo** | [**RestoredCopyOptionsPitInfo**](RestoredCopyOptionsPitInfo.md) |  | [optional] 
**PowerOnVm** | **Boolean** | Hyper-V Virtual Machine (VM) options field, default value is TRUE. | [optional] 
**PowerState** | **String** | The power state of the restored asset. | [optional] 
**PreferredInterface** | **String** | Passthrough field: The DD host name. Restore using this specified DD network. | [optional] 
**PrimaryHasDDConnection** | **Boolean** | SDMNG restore options. This option indicates whether the primary PowerStore has a PowerProtect Data Domain connection or not. | [optional] 
**RecoveryState** | **String** | SQL Passthrough field. If not specified, application assumes default is &quot;&quot;RECOVERY&quot;&quot;. | [optional] 
**RequestedProxy** | **String** | Passthrough field: The proxy host name. Restore using this specified proxy. | [optional] 
**RestoreAsClusteredVm** | **Boolean** | Hyper-V Virtual Machine (VM) options field. If the Hyper-V Server is part of a cluster, the Virtual Machine (VM) hosted by the Server can either run as stand-alone Virtual Machine (VM) or be part of cluster. this field indicates this. | [optional] 
**RestoreBiosUuid** | **Boolean** | The field for Virtual Machine (VM) restore that determines whether a restored VM&#39;s BIOS UUID is set to value from the backup or if the Virtual Machine (VM) is given a new BIOS UUID. Restoring the BIOS UUID is effectively always true for Restore-to-Original operations hence this field is ignored for these operations. - false: A new BIOS UUID is generated for a restored VM. This is the default behavior if restoredBiosUuid is not specified. - true: The BIOS UUID of a restored Virtual Machine (VM) is set to the value from the backup. | [optional] 
**RestoreLocation** | **String** | File system pass-through field for restore location. If not specified, application assumes default is &quot;&quot;ORIGINAL&quot;&quot;. | [optional] 
**RestoreOriginalMachineConfig** | **Boolean** | The field for Cloud DR restore, that marks if set original MAC id of restored VM | [optional] 
**RestorePFile** | **Boolean** | Only for the disaster recovery and instant access recovery workflow. | [optional] 
**RestoreParallelism** | **Int32** | The Microsoft SQL (MSSQL) options field indicates the number of assets that can be restored in parallel. | [optional] 
**RestorePath** | **String** | Hyper-V Virtual Machine (VM) options field. Indicates the path on which to create the VM. | [optional] 
**RestoreSpFile** | **Boolean** | Oracle pass-through field for restoring the spfile. This property is used if the destination host is different than the target host, the spfile is not provided by the user, and the restoreCategory property is DR. | [optional] 
**RestoreSubCategory** | **String** | Oracle and SAP HANA pass-through field for restore subcategory property. When restoreCategory property &#x3D; DISASTER_RECOVERY, the supported restoreSubCategory values are &quot;&quot;BACKUP_TIME&quot;&quot;, &quot;&quot;PIT_TIME&quot;&quot;, &quot;&quot;PIT_SCN&quot;&quot;, &quot;&quot;PIT_SEQ&quot;&quot;. When restoreCategory &#x3D; RESTORE_DB, the supported restoreSubCategory values are &quot;&quot;CURRENT_TIME&quot;&quot;, &quot;&quot;PIT_TIME&quot;&quot;, &quot;&quot;PIT_SCN&quot;&quot;, &quot;&quot;PIT_SEQ&quot;&quot;. When restoreCategory &#x3D; RESTORE_LOG, the supported restoreSubCategory values are &quot;&quot;ARCH_ALL&quot;&quot;, &quot;&quot;PIT_TIME&quot;&quot;, &quot;&quot;PIT_SCN&quot;&quot;, &quot;&quot;PIT_SEQ&quot;&quot;. | [optional] 
**RestoreTlpAcls** | **Boolean** | This option indicates whether to restore top level ACLs or not. | [optional] 
**RestoreVmNotes** | **Boolean** | Hyper-V Virtual Machine (VM) options field. | [optional] 
**RetainFolderHierarchy** | **Boolean** | File system pass-through field that indicates if restored files should maintain the folder structure. If not specified, application assumes default is true. | [optional] 
**RunWithElevatedPrivileges** | **Boolean** | Hyper-V Virtual Machine (VM) options field. Indicates to the Agent to run at higher privilege. The default value is FALSE. | [optional] 
**StopAssetBeforeRestore** | **Boolean** | SAP HANA pass-through field that indicates whether to stop the database before restore. | [optional] 
**StopAtTime** | **String** | SQL Passthrough field:  The time when SQL should stop rolling forward transactions for the TLOG backup being restored. | [optional] 
**SuffixVmName** | **String** | Hyper-V Virtual Machine (VM) options field. | [optional] 
**TargetArrayId** | **String** | The target array ID selected by the customer for the alternate storage group restore on PowerMax. | [optional] 
**TargetInstallLocation** | **String** | Oracle pass-through field for the Oracle home location of the destination host. To restore to the original database, the applicationSystem property already exists. To restore to an alternate location, the application system does not exist, and the installation location of the destination database is required. For DR workflows, this value is taken as input from the UI. | [optional] 
**TargetNewDatabaseName** | **String** | The new name specified by the user for the restored database. | [optional] 
**TargetSid** | **String** | Oracle pass-through field. Name (SID) of the destination asset for restore. For the DR workflow, this value is taken as input from the UI. | [optional] 
**TargetStorageResourcePrefix** | **String** | The prefix specified by the customer for the alternate storage group restore on PowerMax. | [optional] 
**TargetVmName** | **String** | Hyper-V Virtual Machine (VM) options field. Indicates the name of the Virtual Machine (VM) to be used for creating the VM. | [optional] 
**TargetVolume** | **String** | Hyper-V Virtual Machine (VM) options field. Indicates the volume on which to create the VM. | [optional] 
**TransLogPath** | **String** | SAP HANA pass-through field, that provides the path of uncommitted DB transaction logs, for restore. | [optional] 
**UpdateTimeOut** | **Int32** | This option indicates the interval at which the NAS pillar waits to cancel a particular backup or restore session. | [optional] 
**UseOriginalAssetName** | **Boolean** | Indicates to use the original name of the data source while creating the restore target. | [optional] 
**VProxyIds** | **String[]** | The VMware Protection (vProxy) IDs. | [optional] 
**VcenterId** | **String** | The vCenter ID for Cloud DR restore. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoredCopyOptions = Initialize-PpdmApiReferenceRestoredCopyOptions  -AdAttributes null `
 -AdvanceSpFileParameters null `
 -AllowOverwrite null `
 -ApplyNewGuid null `
 -AutoGenTargetStorageResource null `
 -ChangeDatabaseName null `
 -ChangeDbId null `
 -ChangePasswordOnNextLogin null `
 -CheckAccessBackint null `
 -CheckAccessFileSystem null `
 -ClearLog null `
 -ControlSpFileBackupData null `
 -ConvertToSpFile null `
 -CrossCheckBackup null `
 -DatabaseRole null `
 -DisableUserAccount null `
 -DisconnectDatabaseUsers null `
 -EnableAutoCleanup null `
 -EnableCompressedRestore null `
 -EnableDebug null `
 -FileRelocationOptions null `
 -ForceDatabaseOverwrite null `
 -GuestOsPassword null `
 -GuestOsUsername null `
 -IgnoreDeltaBackups null `
 -IncludeClusterResources null `
 -IncludeVirtualMachineResources null `
 -Iqns null `
 -KeepFlrAgentInstalled null `
 -NetworkDetails null `
 -OpenDatabase null `
 -OsUserNameTarget null `
 -PerformTailLogBackup null `
 -PitInfo null `
 -PowerOnVm null `
 -PowerState null `
 -PreferredInterface null `
 -PrimaryHasDDConnection null `
 -RecoveryState null `
 -RequestedProxy null `
 -RestoreAsClusteredVm null `
 -RestoreBiosUuid null `
 -RestoreLocation null `
 -RestoreOriginalMachineConfig null `
 -RestorePFile null `
 -RestoreParallelism null `
 -RestorePath null `
 -RestoreSpFile null `
 -RestoreSubCategory null `
 -RestoreTlpAcls null `
 -RestoreVmNotes null `
 -RetainFolderHierarchy null `
 -RunWithElevatedPrivileges null `
 -StopAssetBeforeRestore null `
 -StopAtTime null `
 -SuffixVmName null `
 -TargetArrayId null `
 -TargetInstallLocation null `
 -TargetNewDatabaseName null `
 -TargetSid null `
 -TargetStorageResourcePrefix null `
 -TargetVmName null `
 -TargetVolume null `
 -TransLogPath null `
 -UpdateTimeOut null `
 -UseOriginalAssetName null `
 -VProxyIds null `
 -VcenterId null
```

- Convert the resource to JSON
```powershell
$RestoredCopyOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

