# StorageSystemCapacity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CapacityStatus** | **String** | Capacity status of the PowerProtect Data Domain by tier type. | [optional] 
**CollectedAt** | **System.DateTime** |  | [optional] [readonly] 
**CompressionFactor** | **Double** | Compression factor of the PowerProtect Data Domain by tier type. | [optional] 
**LicensedUtilization** | **Double** | Physical licensed capacity utilization of the PowerProtect Data Domain by tier type. | [optional] 
**PercentUsed** | **Double** | Percentage of capacity used (capacity utilization) of the PowerProtect Data Domain by tier type. | [optional] 
**ReductionPercentage** | **Double** | Reduction percentage of the PowerProtect Data Domain by tier type. | [optional] 
**TotalLicensedSize** | **Double** | Total physical licensed capacity of the PowerProtect Data Domain by tier type. | [optional] 
**TotalLogicalSize** | **Double** | Total logical capacity of the PowerProtect Data Domain by tier type. | [optional] 
**TotalLogicalUsed** | **Double** | Total logical capacity used in the PowerProtect Data Domain by tier type. | [optional] 
**TotalPhysicalSize** | **Double** | Total physical capacity of the PowerProtect Data Domain by tier type. | [optional] 
**TotalPhysicalUsed** | **Double** | Total physical capacity used in the PowerProtect Data Domain by tier type. | [optional] 
**Type** | **String** | Tier type of the PowerProtect Data Domain. | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageSystemCapacity = Initialize-PpdmApiReferenceStorageSystemCapacity  -CapacityStatus null `
 -CollectedAt null `
 -CompressionFactor null `
 -LicensedUtilization null `
 -PercentUsed null `
 -ReductionPercentage null `
 -TotalLicensedSize null `
 -TotalLogicalSize null `
 -TotalLogicalUsed null `
 -TotalPhysicalSize null `
 -TotalPhysicalUsed null `
 -Type null
```

- Convert the resource to JSON
```powershell
$StorageSystemCapacity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

