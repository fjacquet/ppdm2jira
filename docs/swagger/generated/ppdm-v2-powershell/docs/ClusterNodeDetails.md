# ClusterNodeDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupDetails** | [**AssetBackupDetails[]**](AssetBackupDetails.md) |  | 
**ExtraParams** | [**ExtraParams[]**](ExtraParams.md) |  | [optional] 
**Hostname** | **String** | Hostname of the node. | [optional] 
**Id** | **String** | Host ID of the node. | 

## Examples

- Prepare the resource
```powershell
$ClusterNodeDetails = Initialize-PpdmApiReferenceClusterNodeDetails  -BackupDetails null `
 -ExtraParams null `
 -Hostname null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ClusterNodeDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

