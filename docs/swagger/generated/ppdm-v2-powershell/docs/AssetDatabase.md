# AssetDatabase
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppServerId** | **String** |  | [optional] 
**AppServerName** | **String** | DB server name. | [optional] 
**AppServerSupportedProtectionProtocols** | **String[]** | A copy of the asset&#39;s associated application server&#39;s supportedProtectionProtocols field, if any. | [optional] 
**AppVersion** | **String** | The version of the application server. | [optional] [readonly] 
**Asm** | **String** |  | [optional] 
**ClusterName** | **String** | Name of DB cluster. | [optional] 
**ClusterType** | **String** | DB cluster type. For example: RAC. | [optional] 
**DbId** | **String** |  | [optional] 
**LastBackup** | **System.DateTime** | The date and time of the last backup copy for this asset. | [optional] 
**NfsShare** | [**AssetDatabaseNfsShare**](AssetDatabaseNfsShare.md) |  | [optional] 
**ProtectionEngineFlow** | **String** |  | [optional] 
**ProtectionType** | **String** | The type of backup performed. | [optional] 
**RelativeNFSDirectory** | **String** | Folder path relative to the top level path where the NFS export is mounted. | [optional] 
**RelativeWorkingDirectory** | **String** | Folder path relative to the top level path where temporary files are stored. | [optional] 
**Sid** | **String** |  | [optional] 
**Size** | **String** | Size of the database. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetDatabase = Initialize-PpdmApiReferenceAssetDatabase  -AppServerId null `
 -AppServerName null `
 -AppServerSupportedProtectionProtocols null `
 -AppVersion null `
 -Asm null `
 -ClusterName null `
 -ClusterType null `
 -DbId null `
 -LastBackup null `
 -NfsShare null `
 -ProtectionEngineFlow null `
 -ProtectionType null `
 -RelativeNFSDirectory null `
 -RelativeWorkingDirectory null `
 -Sid null `
 -Size null
```

- Convert the resource to JSON
```powershell
$AssetDatabase | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

