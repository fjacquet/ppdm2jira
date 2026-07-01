# FileInstance
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** | Unique ID of the asset that is indexed, provided by the orchestration host | [optional] 
**AssetName** | **String** | The name of the asset - Virtual Machine (VM) name for Virtual Machine (VM) backup | [optional] 
**BackupType** | **String** | The type of backup this metadata originated - indicates the filesystem NTFS/ext2/ext3/ext4/xfs. For NAS, it is NAS | [optional] 
**CopyEndDate** | **System.DateTime** | The copy end date and time when this file was backed up.  Copy start date and copy end date are used to determine how to restore a file or folder from a point in time. | [optional] 
**CopyStartDate** | **System.DateTime** | The copy start date and time when this file was backed up.  Copy start date and copy end date are used to determine how to restore a file or folder from a point in time. | [optional] 
**CreatedAt** | **System.DateTime** | The creation time of this file or folder. | [optional] 
**DiskLabel** | **String** | The Virtual Machine (VM) disk label for VMs or the Slice Name for NAS | [optional] 
**DiskName** | **String** | The Virtual Machine (VM) disk name for VMs or the Slice ID for NAS | [optional] 
**Id** | **String** | The unique id for this document for Virtual Machine (VM) backups;  holds the path hash value for NAS backups | [optional] 
**ItemType** | **String** | The type of document. | [optional] 
**Location** | **String** | The directory where this file or folder is located.  | [optional] 
**Name** | **String** | The name of this file or folder. | [optional] 
**ObjectType** | **String** | Indicates the asset type that is backed up. For Virtual Machine (VM) backups, the value is &quot;&quot;VM&quot;&quot;. For NAS backups, the value is &quot;&quot;NAS&quot;&quot;. For File System backups, the value is &quot;&quot;FS&quot;&quot;. | [optional] 
**ProtectionPolicyId** | **String** | The ID of the protection policy that instantiated this backup. | [optional] 
**Size** | **Int64** | The size in bytes. | [optional] 
**SourceServer** | **String** | The name of the source server. vCenter FQDN for VM, appliance name for NAS | [optional] 
**Type** | **String** | The file type.  Folders are of type folder. | [optional] 
**UpdatedAt** | **System.DateTime** | The last update time of this file or folder. | [optional] 

## Examples

- Prepare the resource
```powershell
$FileInstance = Initialize-PpdmApiReferenceFileInstance  -AssetId null `
 -AssetName null `
 -BackupType null `
 -CopyEndDate null `
 -CopyStartDate null `
 -CreatedAt null `
 -DiskLabel null `
 -DiskName null `
 -Id null `
 -ItemType null `
 -Location null `
 -Name null `
 -ObjectType null `
 -ProtectionPolicyId null `
 -Size null `
 -SourceServer null `
 -Type null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$FileInstance | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

