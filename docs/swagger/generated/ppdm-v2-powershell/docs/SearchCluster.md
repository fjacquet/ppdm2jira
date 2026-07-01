# SearchCluster
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | Activity ID for the operation | [optional] 
**Config** | [**SearchClusterConfig**](SearchClusterConfig.md) |  | [optional] 
**Id** | **String** | ID. | [optional] 
**MaintenanceMode** | **Boolean** | Search cluster is in maintenance mode. | [optional] 
**Name** | **String** | Name to associate with the search cluster. | 
**State** | **String** | State of the search cluster. | 
**StateDetail** | **String** | Detail of the search cluster state. | [optional] 
**Summary** | [**SearchClusterSummary**](SearchClusterSummary.md) |  | [optional] 
**SuspendedBy** | **String** | User last update the cluster. | [optional] 
**UpdatedBy** | **String** | User who last updated the cluster. | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchCluster = Initialize-PpdmApiReferenceSearchCluster  -ActivityId null `
 -Config null `
 -Id null `
 -MaintenanceMode null `
 -Name null `
 -State null `
 -StateDetail null `
 -Summary null `
 -SuspendedBy null `
 -UpdatedBy null
```

- Convert the resource to JSON
```powershell
$SearchCluster | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

