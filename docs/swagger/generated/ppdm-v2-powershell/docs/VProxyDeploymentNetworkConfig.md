# VProxyDeploymentNetworkConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Fqdn** | **String** |  | [optional] 
**Gateway** | **String** |  | [optional] 
**IPProtocol** | **String** |  | [optional] 
**InterfaceName** | **String** |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**IpV6Address** | **String** |  | [optional] 
**IpV6AutoAssign** | **Boolean** |  | [optional] 
**IpV6Gateway** | **String** |  | [optional] 
**IpV6PrefixLen** | **Int32** |  | [optional] 
**MacAddress** | **String** |  | [optional] 
**MultiVlanEnabled** | **Boolean** |  | [optional] 
**NetMask** | **String** |  | [optional] 
**NetworkMoref** | **String** |  | [optional] 
**SubnetUuid** | **String** |  | [optional] 
**Vlans** | [**ProxyDeploymentConfigVlans[]**](ProxyDeploymentConfigVlans.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VProxyDeploymentNetworkConfig = Initialize-PpdmApiReferenceVProxyDeploymentNetworkConfig  -Fqdn null `
 -Gateway null `
 -IPProtocol null `
 -InterfaceName null `
 -IpAddress null `
 -IpV6Address null `
 -IpV6AutoAssign null `
 -IpV6Gateway null `
 -IpV6PrefixLen null `
 -MacAddress null `
 -MultiVlanEnabled null `
 -NetMask null `
 -NetworkMoref null `
 -SubnetUuid null `
 -Vlans null
```

- Convert the resource to JSON
```powershell
$VProxyDeploymentNetworkConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

