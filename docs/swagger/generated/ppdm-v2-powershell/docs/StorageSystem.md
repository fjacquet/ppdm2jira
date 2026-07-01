# StorageSystem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Embedded** | [**StorageSystemEmbedded**](StorageSystemEmbedded.md) |  | [optional] 
**CapacityUtilization** | **Double** | Physical capacity utilization of the storage system. | [optional] 
**CreatedAt** | **System.DateTime** | Create time of the storage system. | [optional] 
**DdLocationId** | **String** | ID of location for the PowerProtect Data Domain. | [optional] 
**Description** | **String** | Storage System Description. | [optional] 
**Details** | [**StorageSystemDetails**](StorageSystemDetails.md) |  | [optional] 
**Id** | **String** | ID of the storage system in Elasticsearch. Use in GET operations or requests that accept ID in the path. | [optional] 
**InventorySourceRefs** | [**StorageSystemInventorySource[]**](StorageSystemInventorySource.md) |  | [optional] 
**LastDiscovered** | **System.DateTime** | Last discovery starts time of the storage system. | [optional] 
**LastDiscoveryAt** | **System.DateTime** | Last discovery end time of the storage system. | [optional] [readonly] 
**LastDiscoveryResult** | [**DiscoveryResult**](DiscoveryResult.md) |  | [optional] 
**LastDiscoveryStatus** | **String** | Status of the last discovery for the storage system. Valid values are following: - NEW - DETECTED - NOT_DETECTED - DELETED | [optional] 
**LastDiscoveryTaskId** | **String** | Last discovery task ID of the storage system. | [optional] [readonly] 
**VarLocal** | **Boolean** | Location of the storage system. True for internal storage system and false for external storage system. | [optional] 
**LocationId** | **String** | ID of location for the storage system. | [optional] 
**Name** | **String** | Name of the storage system. It can be used to show on UI page. | [optional] 
**OperatingSystem** | [**StorageSystemOperatingSystem**](StorageSystemOperatingSystem.md) |  | [optional] 
**ParentId** | **String** | If storage system is a member of a Data Domain system pool, this value is the ID of the storage system that represents the pool. | [optional] 
**Purpose** | **String** | Indicates how the storage system is used. | [optional] 
**Readiness** | [**Readiness**](Readiness.md) |  | [optional] 
**ReplicationEncryptionMode** | [**ReplicationEncryptionMode**](ReplicationEncryptionMode.md) |  | [optional] 
**RetentionLockModes** | **String[]** | A set of retention lock modes that are licensed and enabled on a PowerProtect Data Domain. Valid values are GOVERNANCE or COMPLIANCE (or both). | [optional] 
**Type** | **String** | Type of the storage system. | [optional] 
**UnsupportedFeatures** | **String[]** | If set, indicates if there are any unsupported features. | [optional] [readonly] 
**UpdatedAt** | **System.DateTime** | Update time of the storage system. | [optional] 
**VproxyRefs** | [**StorageSystemVproxy[]**](StorageSystemVproxy.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageSystem = Initialize-PpdmApiReferenceStorageSystem  -Embedded null `
 -CapacityUtilization null `
 -CreatedAt null `
 -DdLocationId null `
 -Description null `
 -Details null `
 -Id null `
 -InventorySourceRefs null `
 -LastDiscovered null `
 -LastDiscoveryAt null `
 -LastDiscoveryResult null `
 -LastDiscoveryStatus null `
 -LastDiscoveryTaskId null `
 -VarLocal null `
 -LocationId null `
 -Name null `
 -OperatingSystem null `
 -ParentId null `
 -Purpose null `
 -Readiness null `
 -ReplicationEncryptionMode null `
 -RetentionLockModes null `
 -Type null `
 -UnsupportedFeatures null `
 -UpdatedAt null `
 -VproxyRefs null
```

- Convert the resource to JSON
```powershell
$StorageSystem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

