# ClusterInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Addresses** | [**Address[]**](Address.md) |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**NodeSelectionStrategy** | **String** |  | [optional] 
**Nodes** | [**ClusterInfoNode[]**](ClusterInfoNode.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ClusterInfo = Initialize-PpdmApiReferenceClusterInfo  -Addresses null `
 -IpAddress null `
 -NodeSelectionStrategy null `
 -Nodes null
```

- Convert the resource to JSON
```powershell
$ClusterInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

