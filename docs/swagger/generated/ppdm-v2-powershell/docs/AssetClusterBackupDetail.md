# AssetClusterBackupDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Nodes** | [**ClusterNodeDetails[]**](ClusterNodeDetails.md) |  | 
**StreamDistributionType** | **String** | Specifies whether the backup streams allocated on a node that is unreachable, should be ignored or distributed among the other available nodes. | 

## Examples

- Prepare the resource
```powershell
$AssetClusterBackupDetail = Initialize-PpdmApiReferenceAssetClusterBackupDetail  -Nodes null `
 -StreamDistributionType null
```

- Convert the resource to JSON
```powershell
$AssetClusterBackupDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

