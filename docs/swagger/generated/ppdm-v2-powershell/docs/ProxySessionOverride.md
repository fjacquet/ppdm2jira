# ProxySessionOverride
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CapacityPercentage** | **Int32** |  | [optional] 
**ControlPercentage** | **Int32** |  | [optional] 
**Datastores** | **String[]** |  | [optional] 
**TransportSessions** | [**ConfigurableTransportSessions**](ConfigurableTransportSessions.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProxySessionOverride = Initialize-PpdmApiReferenceProxySessionOverride  -CapacityPercentage null `
 -ControlPercentage null `
 -Datastores null `
 -TransportSessions null
```

- Convert the resource to JSON
```powershell
$ProxySessionOverride | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

