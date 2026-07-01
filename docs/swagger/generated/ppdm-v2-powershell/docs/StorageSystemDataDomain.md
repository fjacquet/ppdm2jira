# StorageSystemDataDomain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Capacities** | [**Capacity[]**](Capacity.md) |  | [optional] 
**CapacityQuotasSupported** | **Boolean** | Indicates if capacity quota is supported. | [optional] 
**CloudEnabled** | **Boolean** | Whether Cloud is enabled or not on the PowerProtect Data Domain. | [optional] 
**CloudTierLicensed** | **Boolean** | Cloud Tier License of the PowerProtect Data Domain. | [optional] 
**CompressionFactor** | **Double** | Compression factor of the PowerProtect Data Domain. - Example: 1.44E-4 | [optional] 
**DatacenterDescription** | **String** | Description of the data center for the system pool. | [optional] 
**DatacenterName** | **String** | Name of the system pool&#39;s datacenter. | [optional] 
**DdboostLicensed** | **Boolean** | DDBoost License of the PowerProtect Data Domain. | [optional] 
**EncryptionLicensed** | **Boolean** | Encryption License of the PowerProtect Data Domain. | [optional] 
**Model** | **String** | Model of the PowerProtect Data Domain. - Example: DD VE Version 4.0 | [optional] 
**PercentUsed** | **Double** | Percent of capacity used for the PowerProtect Data Domain. | [optional] 
**PreferredInterfaces** | [**PreferredInterface[]**](PreferredInterface.md) |  | [optional] 
**PreferredNetworkSupported** | **Boolean** | Indicates if preferred network interface is supported. | [optional] 
**ReplicationEncryptionEnabled** | **Boolean** | Encryption of replication for the PowerProtect Data Domain. True for enabling the encryption and false for disabling the encryption. | [optional] 
**ReplicationLicensed** | **Boolean** | Replication License of the PowerProtect Data Domain. | [optional] 
**RetentionLockComplianceEnabled** | **Boolean** |  | [optional] 
**RetentionLockComplianceLicensed** | **Boolean** | Retention Lock Compliance License of the PowerProtect Data Domain. | [optional] 
**RetentionLockGovernanceLicensed** | **Boolean** | Retention Lock Governance License of the PowerProtect Data Domain. | [optional] 
**RetentionLockSupported** | **Boolean** | Indicates if retention lock is supported. | [optional] 
**SerialNumber** | **String** | Serial number of the PowerProtect Data Domain. | [optional] 
**StreamQuotasSupported** | **Boolean** | Indicates if stream quota is supported. | [optional] 
**TotalSize** | **Double** | The total capacity in bytes of the PowerProtect Data Domain. | [optional] 
**TotalUsed** | **Double** | The total used capacity in bytes of the PowerProtect Data Domain. | [optional] 
**UserCredsId** | **String** |  | [optional] 
**VdiskEnabled** | **Boolean** | Whether vDisk service is enabled or not on the PowerProtect Data Domain. | [optional] 
**Version** | **String** | Version of the PowerProtect Data Domain. - Example: PowerProtect Data Domain system OS 6.2.0.10-615548 | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageSystemDataDomain = Initialize-PpdmApiReferenceStorageSystemDataDomain  -Capacities null `
 -CapacityQuotasSupported null `
 -CloudEnabled null `
 -CloudTierLicensed null `
 -CompressionFactor null `
 -DatacenterDescription null `
 -DatacenterName null `
 -DdboostLicensed null `
 -EncryptionLicensed null `
 -Model null `
 -PercentUsed null `
 -PreferredInterfaces null `
 -PreferredNetworkSupported null `
 -ReplicationEncryptionEnabled null `
 -ReplicationLicensed null `
 -RetentionLockComplianceEnabled null `
 -RetentionLockComplianceLicensed null `
 -RetentionLockGovernanceLicensed null `
 -RetentionLockSupported null `
 -SerialNumber null `
 -StreamQuotasSupported null `
 -TotalSize null `
 -TotalUsed null `
 -UserCredsId null `
 -VdiskEnabled null `
 -Version null
```

- Convert the resource to JSON
```powershell
$StorageSystemDataDomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

