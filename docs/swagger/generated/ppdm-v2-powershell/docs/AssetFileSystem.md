# AssetFileSystem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppServerId** | **String** |  | [optional] 
**AppServerName** | **String** | File System application server name. | [optional] 
**ClusterName** | **String** | Name of File System application server cluster. | [optional] 
**ClusterType** | **String** | File System application server cluster type. For example: FCI. | [optional] 
**FileSystemType** | **String** | File system type of the file system. For example: NTFS. | [optional] 
**Guid** | **String** | Asset GUID of the file system. | [optional] 
**HostName** | **String** | Host name of the file system. | [optional] 
**HostOS** | **String** | Operation system name of the file system. | [optional] 
**LastBackup** | **System.DateTime** | The date and time of the last backup copy for this asset. | [optional] 
**ProtectionType** | **String** | Protection type for file system. For example: DDBFS. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetFileSystem = Initialize-PpdmApiReferenceAssetFileSystem  -AppServerId null `
 -AppServerName null `
 -ClusterName null `
 -ClusterType null `
 -FileSystemType null `
 -Guid null `
 -HostName null `
 -HostOS null `
 -LastBackup null `
 -ProtectionType null
```

- Convert the resource to JSON
```powershell
$AssetFileSystem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

