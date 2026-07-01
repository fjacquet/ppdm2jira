# SearchClusterSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DiskCacheNfsServer** | **String** | NFS server hosting disk cache. | [optional] 
**LastIndexingActivitySyncTime** | **System.DateTime** | Last time PowerProtect Data Manager indexing activities were synced. | [optional] 
**LastMetadataSyncTime** | **System.DateTime** | Last index synchronization time. | [optional] 
**LastReplicaCopyIndexingStatusSyncTime** | **System.DateTime** | Last time PowerProtect Data Manager indexing status was synced for the replica copies with Queued, Running or Null status. | [optional] 
**LastUpdateMilestone** | **String** | The last successful update milestone completed. | [optional] 
**Nodes** | [**NodeSummary[]**](NodeSummary.md) | Summary of node status. | [optional] 
**TotalAssets** | **Int64** | Total assets targeted for index. | [optional] 
**TotalAssetsIndexed** | **Int64** | Total assets indexed. | [optional] 
**TotalDiskCapacity** | **Int64** | Aggregate disk capacity of all nodes. | [optional] 
**TotalDiskUsage** | **Int64** | Aggregate disk usage of all nodes. | [optional] 
**TotalFailed** | **Int32** | Total nodes in failed state. | [optional] 
**TotalNodes** | **Int32** | Total deployed search nodes. | [optional] 
**UnsuccessfulBackupsLastIndexingActivitySyncTime** | **System.DateTime** | Last time PowerProtect Data Manager indexing activities were synced for the protection jobs completed with Failed or Cancelled or Skipped status. | [optional] 
**UpdateRetryCount** | **Int64** | Number of times that the update has been retried since the last successful update. | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchClusterSummary = Initialize-PpdmApiReferenceSearchClusterSummary  -DiskCacheNfsServer null `
 -LastIndexingActivitySyncTime null `
 -LastMetadataSyncTime null `
 -LastReplicaCopyIndexingStatusSyncTime null `
 -LastUpdateMilestone null `
 -Nodes null `
 -TotalAssets null `
 -TotalAssetsIndexed null `
 -TotalDiskCapacity null `
 -TotalDiskUsage null `
 -TotalFailed null `
 -TotalNodes null `
 -UnsuccessfulBackupsLastIndexingActivitySyncTime null `
 -UpdateRetryCount null
```

- Convert the resource to JSON
```powershell
$SearchClusterSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

