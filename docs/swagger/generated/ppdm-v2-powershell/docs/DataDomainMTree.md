# DataDomainMTree
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppOptimizedCompression** | **String** |  | [optional] 
**Attributes** | **System.Collections.Hashtable** |  | [optional] 
**AvailableCapacityInBytes** | **Double** |  | [optional] [readonly] 
**CreatedAt** | **System.DateTime** |  | [optional] [readonly] 
**Credential** | [**Id**](Id.md) |  | 
**Deletable** | **Boolean** |  | [optional] 
**Discovered** | **Boolean** |  | [optional] [readonly] 
**HardCapacityQuotaLevel** | **Int64** |  | [optional] 
**HardStreamQuotaLevel** | **Int32** |  | [optional] 
**Id** | **String** |  | [optional] 
**LastDiscoveryStatus** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**NetworkInterfaces** | [**NetworkInterfaceStorageUnit[]**](NetworkInterfaceStorageUnit.md) |  | [optional] 
**ProtectionCreated** | **Boolean** |  | [optional] 
**Purpose** | **String** | Indicates the purpose of the storage unit. | [optional] 
**ReplicationSources** | **String[]** |  | [optional] [readonly] 
**ReplicationTargets** | **String[]** |  | [optional] 
**RetentionEnabledIndefinitely** | **Boolean** |  | [optional] 
**RetentionLockMode** | **String** |  | [optional] 
**RetentionLockStatus** | **String** |  | [optional] 
**RetentionMaximum** | **Int64** |  | [optional] 
**RetentionMinimum** | **Int64** |  | [optional] [readonly] 
**Reusable** | **Boolean** |  | [optional] 
**SecurityOfficerPassword** | **String** |  | [optional] 
**SecurityOfficerUsername** | **String** |  | [optional] 
**SoftCapacityQuotaLevel** | **Int64** |  | [optional] 
**SoftStreamQuotaLevel** | **Int32** |  | [optional] 
**StorageSystem** | [**Id**](Id.md) |  | 
**SystemManaged** | **Boolean** |  | [optional] 
**Tenant** | [**Id**](Id.md) |  | [optional] 
**TotalCapacityInBytes** | **Double** |  | [optional] [readonly] 
**Type** | **String** |  | [optional] 
**UnsupportedFeatures** | **String[]** | If set, indicates if there are any unsupported features. | [optional] [readonly] 
**UpdatedAt** | **System.DateTime** |  | [optional] [readonly] 
**Usage** | **String** | Indicates the usage of the storage unit. | [optional] 
**UserTags** | **String[]** |  | [optional] 
**VaultDataTargetIds** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainMTree = Initialize-PpdmApiReferenceDataDomainMTree  -AppOptimizedCompression null `
 -Attributes null `
 -AvailableCapacityInBytes null `
 -CreatedAt null `
 -Credential null `
 -Deletable null `
 -Discovered null `
 -HardCapacityQuotaLevel null `
 -HardStreamQuotaLevel null `
 -Id null `
 -LastDiscoveryStatus null `
 -LastUpdated null `
 -Name null `
 -NetworkInterfaces null `
 -ProtectionCreated null `
 -Purpose null `
 -ReplicationSources null `
 -ReplicationTargets null `
 -RetentionEnabledIndefinitely null `
 -RetentionLockMode null `
 -RetentionLockStatus null `
 -RetentionMaximum null `
 -RetentionMinimum null `
 -Reusable null `
 -SecurityOfficerPassword null `
 -SecurityOfficerUsername null `
 -SoftCapacityQuotaLevel null `
 -SoftStreamQuotaLevel null `
 -StorageSystem null `
 -SystemManaged null `
 -Tenant null `
 -TotalCapacityInBytes null `
 -Type null `
 -UnsupportedFeatures null `
 -UpdatedAt null `
 -Usage null `
 -UserTags null `
 -VaultDataTargetIds null
```

- Convert the resource to JSON
```powershell
$DataDomainMTree | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

