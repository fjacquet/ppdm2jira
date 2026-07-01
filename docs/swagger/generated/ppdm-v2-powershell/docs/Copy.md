# Copy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdhocBackup** | **Boolean** | Indicates if this is a manual or scheduled backup copy. | [optional] 
**AssetId** | **String** | ID of the asset to which this copy corresponds. | [optional] 
**AssetName** | **String** | Asset name. | [optional] 
**AssetSubtype** | [**AssetSubtypeEnum**](AssetSubtypeEnum.md) |  | [optional] 
**AssetType** | [**AssetTypeEnum**](AssetTypeEnum.md) |  | [optional] 
**BackupScope** | **String** | File system subtype for Bare Metal Recovery (BMR) and System State Recover (SSR). | [optional] 
**BackupSource** | **String** | Indicates whether the copy is backed up from either the replica site or the primary site. | [optional] 
**BackupTransactionId** | **String** | The parent backup transaction that this copy belongs to. | [optional] 
**BaseCopyId** | **String** | Provides the relationship to the full copy that is the base for a differential or log copy. | [optional] 
**ChangeFileListEnabled** | **Boolean** | Indicates whether the change file list feature is enabled. | [optional] 
**CompressedSizeInBytes** | **Int64** | The compressed size in bytes of this copy in the storage system. | [optional] 
**CopyConsistency** | **String** | The data consistency for this protection copy set. | [optional] 
**CopySubType** | **String** | The backup sub level of the copy. Only applicable when copy type is FULL. | [optional] 
**CopyType** | **String** | The backup level of this protection copy set. | [optional] 
**CreateTime** | **System.DateTime** | The creation date and time of this protection copy set, that is persisted with millisecond-level. For example, a time value such as &#39;2024-03-19T14:15:123456789Z&#39; would be truncated to &#39;2024-03-19T14:15:123Z&#39;. | [optional] 
**Criticality** | **Int32** | The criticality value of the copy, ranging from 1 to 4, indicates the level of importance. The default value is 2 (&#39;Hot&#39;). The meanings of the values are as follows: 1: Mission Critical 2: Hot 3: Warm 4: Cold | [optional] 
**DataTargetIds** | **String[]** |  | [optional] 
**DataTargetRefs** | [**AssetHypervisorClusterRef[]**](AssetHypervisorClusterRef.md) |  | [optional] 
**Details** | [**CopyDetails**](CopyDetails.md) |  | [optional] 
**EndTime** | **System.DateTime** | The end time of the this protection copy set, that is persisted with millisecond-level. For example, a time value such as &#39;2024-03-19T14:15:123456789Z&#39; would be truncated to &#39;2024-03-19T14:15:123Z&#39;. | [optional] 
**ExportedCopyCount** | **Int64** | Number of exported copy count on this copy. | [optional] 
**ExtendedData** | [**CopyExtendedData**](CopyExtendedData.md) |  | [optional] 
**ExternalId** | **String** | The external ID of the copy set.  Cloud DR description of this field:  The Copy ID that Cloud DR generates (PowerProtect Data Manager does not generate this value). This field is the only connection in PowerProtect Data Manager between the new PCS that is created and the Cloud DR copy. | [optional] 
**Groups** | [**CopyGroup[]**](CopyGroup.md) | The array of copy groups. | [optional] 
**Id** | **String** | ID of the copy. | [optional] 
**Location** | **String** | Location type of the copy. | [optional] 
**LogCount** | **String** | The number of logs that are dependent on the full copy. | [optional] 
**MetadataIndexingStatus** | **String** |  | [optional] 
**Name** | **String** | The name of the copy. | [optional] 
**OriginId** | **String** | The ID of the document in the origin PowerProtect Data Manager system. | [optional] 
**PartialCopy** | **Boolean** | Applies to VMDM and ADM.  ADM indicates broken chain. | [optional] 
**PartialCopyDescription** | **String** | Message that indicates why this is a partial copy. | [optional] 
**ProtectionCreated** | **Boolean** | Whether the copy represented by this copy set is created by PowerProtect Data Manager or not.  Copies that are created by PowerProtect Data Manager have this field set to true. | [optional] 
**ProtectionGroupRef** | [**CopyProtectionGroupRef**](CopyProtectionGroupRef.md) |  | [optional] 
**ProtectionPolicy** | [**CopyProtectionPolicy**](CopyProtectionPolicy.md) |  | [optional] 
**ReplicatedCopy** | **Boolean** | Indicates if this copy is a replicated copy. | [optional] 
**RestoreTargetCompatibilities** | [**RestoredTargetCompatibilities[]**](RestoredTargetCompatibilities.md) | Cloud DR supports different cloud vendors: AWS, AWS GovCloud, AZURE. Each vendor has basic requirements for a restore to work according to the state of the VM. Each copy of the Virtual Machine (VM) should have a list containing the compatibility for each target (vendor). | [optional] 
**RetentionLock** | **String** | Derived from the retention locks on the child protection copies. | [optional] 
**RetentionLockMode** | **String** | Retention lock mode of the data target that the copies reside on. | [optional] 
**RetentionTime** | **System.DateTime** | The earliest of the retention time on the child protection copies, that is persisted with millisecond-level. For example, a time value such as &#39;2024-03-19T14:15:123456789Z&#39; would be truncated to &#39;2024-03-19T14:15:123Z&#39;. | [optional] 
**RetierTime** | **System.DateTime** | The retier time on the protection copies in the cloud, that is persisted with millisecond-level. For example, a time value such as &#39;2024-03-19T14:15:123456789Z&#39; would be truncated to &#39;2024-03-19T14:15:123Z&#39;. | [optional] 
**Size** | **Int64** | The used capacity in the storage system of this copy in bytes. | [optional] 
**StartTime** | **System.DateTime** | The start time on the protection copies, that is persisted with millisecond-level. For example, a time value such as &#39;2024-03-19T14:15:123456789Z&#39; would be truncated to &#39;2024-03-19T14:15:123Z&#39;. | [optional] 
**State** | **String** | State of the copy.  | [optional] 
**StorageSystemId** | **String** | The ID of the storage system (for example, PowerProtect Data Domain) that the protection copies that are associated with this copy set reside on. | [optional] 
**SystemId** | **String** | The ID of the remote or the local PowerProtect Data Manager system. | [optional] 
**SystemTags** | **String[]** | Copy&#39;s tags. | [optional] 

## Examples

- Prepare the resource
```powershell
$Copy = Initialize-PpdmApiReferenceCopy  -AdhocBackup null `
 -AssetId null `
 -AssetName null `
 -AssetSubtype null `
 -AssetType null `
 -BackupScope null `
 -BackupSource null `
 -BackupTransactionId null `
 -BaseCopyId null `
 -ChangeFileListEnabled null `
 -CompressedSizeInBytes null `
 -CopyConsistency null `
 -CopySubType null `
 -CopyType null `
 -CreateTime null `
 -Criticality null `
 -DataTargetIds null `
 -DataTargetRefs null `
 -Details null `
 -EndTime null `
 -ExportedCopyCount null `
 -ExtendedData null `
 -ExternalId null `
 -Groups null `
 -Id null `
 -Location null `
 -LogCount null `
 -MetadataIndexingStatus null `
 -Name null `
 -OriginId null `
 -PartialCopy null `
 -PartialCopyDescription null `
 -ProtectionCreated null `
 -ProtectionGroupRef null `
 -ProtectionPolicy null `
 -ReplicatedCopy null `
 -RestoreTargetCompatibilities null `
 -RetentionLock null `
 -RetentionLockMode null `
 -RetentionTime null `
 -RetierTime null `
 -Size null `
 -StartTime null `
 -State null `
 -StorageSystemId null `
 -SystemId null `
 -SystemTags null
```

- Convert the resource to JSON
```powershell
$Copy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

