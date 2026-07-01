# VProxyNetworkConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Connected** | **Boolean** |  | [optional] 
**DeviceLabel** | **String** |  | [optional] 
**Dns** | [**CommonDnsConfig**](CommonDnsConfig.md) |  | [optional] 
**GatewayV4** | **String** |  | [optional] 
**GatewayV6** | **String** |  | [optional] 
**IpAddrV4** | [**CommonIpConfig**](CommonIpConfig.md) |  | [optional] 
**IpAddrV6** | [**CommonIpConfig**](CommonIpConfig.md) |  | [optional] 
**MAC** | **String** |  | [optional] 
**VirtualDeviceId** | **Int32** |  | [optional] 
**VirtualNetworkName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VProxyNetworkConfig = Initialize-PpdmApiReferenceVProxyNetworkConfig  -Connected null `
 -DeviceLabel null `
 -Dns null `
 -GatewayV4 null `
 -GatewayV6 null `
 -IpAddrV4 null `
 -IpAddrV6 null `
 -MAC null `
 -VirtualDeviceId null `
 -VirtualNetworkName null
```

- Convert the resource to JSON
```powershell
$VProxyNetworkConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

