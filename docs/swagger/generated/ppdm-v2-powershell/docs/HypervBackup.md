# HypervBackup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupId** | **String** |  | [optional] 
**ConfigFiles** | [**HypervBackupConfigFilesInner[]**](HypervBackupConfigFilesInner.md) |  | [optional] 
**DiskBackupCount** | **Int32** |  | [optional] 
**DiskTotalCount** | **Int32** |  | [optional] 
**Disks** | [**HypervBackupDisksInner[]**](HypervBackupDisksInner.md) |  | [optional] 
**NetworkAdapters** | [**HypervBackupNetworkAdaptersInner[]**](HypervBackupNetworkAdaptersInner.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HypervBackup = Initialize-PpdmApiReferenceHypervBackup  -BackupId null `
 -ConfigFiles null `
 -DiskBackupCount null `
 -DiskTotalCount null `
 -Disks null `
 -NetworkAdapters null
```

- Convert the resource to JSON
```powershell
$HypervBackup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

