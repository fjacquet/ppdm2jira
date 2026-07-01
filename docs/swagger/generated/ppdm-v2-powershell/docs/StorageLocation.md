# StorageLocation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CapacityBytes** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Location** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**NodeId** | **String** |  | [optional] 
**QuotaBytes** | **String** |  | [optional] 
**QuotaRemainingBytes** | **String** |  | [optional] 
**Replication** | **Boolean** |  | [optional] 
**ReplicationLocations** | [**StorageLocation[]**](StorageLocation.md) |  | [optional] 
**StorageSystemType** | **String** |  | [optional] 
**StorageUnits** | [**AssetHypervisorClusterRef[]**](AssetHypervisorClusterRef.md) | Storage unit list for the asset. | [optional] 
**TotalCopyCount** | **String** |  | [optional] 
**TotalSizeBytes** | **String** |  | [optional] 
**UnsupportedFeatures** | **String[]** | If set, indicates if there are any unsupported features. | [optional] [readonly] 
**UsedBytes** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageLocation = Initialize-PpdmApiReferenceStorageLocation  -CapacityBytes null `
 -Id null `
 -Location null `
 -Name null `
 -NodeId null `
 -QuotaBytes null `
 -QuotaRemainingBytes null `
 -Replication null `
 -ReplicationLocations null `
 -StorageSystemType null `
 -StorageUnits null `
 -TotalCopyCount null `
 -TotalSizeBytes null `
 -UnsupportedFeatures null `
 -UsedBytes null
```

- Convert the resource to JSON
```powershell
$StorageLocation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

