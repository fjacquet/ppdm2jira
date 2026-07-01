# SdrHost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hostname** | **String** | Server disaster recovery host name. | [optional] 
**Id** | **String** | Server disaster recovery host ID. | [optional] 
**NodeId** | **String** | Server disaster recovery host node ID. | [optional] 
**Version** | **String** | Server disaster recovery host version. | [optional] 

## Examples

- Prepare the resource
```powershell
$SdrHost = Initialize-PpdmApiReferenceSdrHost  -Hostname null `
 -Id null `
 -NodeId null `
 -Version null
```

- Convert the resource to JSON
```powershell
$SdrHost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

