# CopyExtendedData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupAssets** | [**CopyExtendedDataBackupAssetsInner[]**](CopyExtendedDataBackupAssetsInner.md) | Critical volumes information. | [optional] 
**ChildStorageGroups** | [**CopyExtendedDataChildStorageGroupsInner[]**](CopyExtendedDataChildStorageGroupsInner.md) |  | [optional] 
**ControlSpFileInfo** | [**CopyExtendedDataControlSpFileInfo**](CopyExtendedDataControlSpFileInfo.md) |  | [optional] 
**HasControlFile** | **Boolean** | Indicate if Controlfile is part of copy. | [optional] 
**HasSpFile** | **Boolean** | Indicate if SPFileis part of copy. | [optional] 
**MountPath** | **String** | Mount Path used for the backup for Oracle OIM. | [optional] 
**Protocol** | **String** | Indicates the protocol. | [optional] 
**ProvisionedBytes** | **Int64** | Indicates the amount of storage capacity that has been allocated or provisioned for a specific resource or entity. | [optional] 
**ScriptExecution** | **String** | Indicate if pre/post script is executed. | [optional] 
**SystemManufacturer** | **String** | Source manufacturer. | [optional] 
**SystemModel** | **String** | Source model. | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyExtendedData = Initialize-PpdmApiReferenceCopyExtendedData  -BackupAssets null `
 -ChildStorageGroups null `
 -ControlSpFileInfo null `
 -HasControlFile null `
 -HasSpFile null `
 -MountPath null `
 -Protocol null `
 -ProvisionedBytes null `
 -ScriptExecution null `
 -SystemManufacturer null `
 -SystemModel null
```

- Convert the resource to JSON
```powershell
$CopyExtendedData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

