# ClusterInfoNode
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Active** | **Boolean** |  | [optional] 
**ExternalId** | **String** |  | [optional] 
**Fqdn** | **String** |  | [optional] 
**HostId** | **String** |  | [optional] 
**Hostname** | **String** |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**LastDiscoveryStatus** | **String** |  | [optional] 
**LocalApplicationSystemRef** | [**ClusterInfoNodeLocalApplicationSystemRef**](ClusterInfoNodeLocalApplicationSystemRef.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ClusterInfoNode = Initialize-PpdmApiReferenceClusterInfoNode  -Active null `
 -ExternalId null `
 -Fqdn null `
 -HostId null `
 -Hostname null `
 -IpAddress null `
 -LastDiscoveryStatus null `
 -LocalApplicationSystemRef null
```

- Convert the resource to JSON
```powershell
$ClusterInfoNode | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

