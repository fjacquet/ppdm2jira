# SearchClusters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**SearchCluster[]**](SearchCluster.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchClusters = Initialize-PpdmApiReferenceSearchClusters  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$SearchClusters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

