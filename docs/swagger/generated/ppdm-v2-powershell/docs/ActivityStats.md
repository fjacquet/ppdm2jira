# ActivityStats
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetSizeInBytes** | **Int64** | The asset size in bytes. | [optional] 
**BytesTransferred** | **Int64** | The total data transferred to storage. | [optional] 
**BytesTransferredThroughput** | **Double** | The average bytes transferred for successfully completed activities over the number of protected assets.  | [optional] 
**BytesTransferredThroughputUnitOfTime** | **String** | Time used to calculate the throughput. | [optional] 
**DedupeRatio** | **Double** | Pre-compression bytes divided by post-compression bytes. | [optional] 
**NumberOfAgents** | **Int32** | Number of agents involved at the job group level. | [optional] 
**NumberOfAssets** | **Int32** | Total number of assets being processed. | [optional] 
**NumberOfProtectedAssets** | **Int32** | Total number of assets protected. | [optional] 
**PostCompBytes** | **Int64** | Size in bytes after client side compression. Data written to storage. | [optional] 
**PreCompBytes** | **Int64** | Data sent to Boost SDK to write while backup is running or when it is done. Data read from Boost SDK to restore. Size in bytes prior to client side compression. | [optional] 
**ReductionPercentage** | **Double** | Calculated as  (1-postCompBytes/preCompBytes)*100. | [optional] 
**StorageCompStats** | [**StorageCompStats**](StorageCompStats.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ActivityStats = Initialize-PpdmApiReferenceActivityStats  -AssetSizeInBytes null `
 -BytesTransferred null `
 -BytesTransferredThroughput null `
 -BytesTransferredThroughputUnitOfTime null `
 -DedupeRatio null `
 -NumberOfAgents null `
 -NumberOfAssets null `
 -NumberOfProtectedAssets null `
 -PostCompBytes null `
 -PreCompBytes null `
 -ReductionPercentage null `
 -StorageCompStats null
```

- Convert the resource to JSON
```powershell
$ActivityStats | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

