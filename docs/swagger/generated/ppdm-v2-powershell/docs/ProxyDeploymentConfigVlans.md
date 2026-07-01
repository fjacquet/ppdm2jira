# ProxyDeploymentConfigVlans
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Gateway** | **String** |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**IpV6Address** | **String** |  | [optional] 
**IpV6AutoAssign** | **Boolean** |  | [optional] 
**IpV6Gateway** | **String** |  | [optional] 
**IpV6PrefixLen** | **Int32** |  | [optional] 
**Mtu** | **Int32** |  | [optional] 
**Netmask** | **String** |  | [optional] 
**Routes** | [**ProxyDeploymentConfigRoutes[]**](ProxyDeploymentConfigRoutes.md) |  | [optional] 
**VlanId** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProxyDeploymentConfigVlans = Initialize-PpdmApiReferenceProxyDeploymentConfigVlans  -Gateway null `
 -IpAddress null `
 -IpV6Address null `
 -IpV6AutoAssign null `
 -IpV6Gateway null `
 -IpV6PrefixLen null `
 -Mtu null `
 -Netmask null `
 -Routes null `
 -VlanId null
```

- Convert the resource to JSON
```powershell
$ProxyDeploymentConfigVlans | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

