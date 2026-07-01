# ProxyDeploymentConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdditionalVMNetworks** | [**VProxyDeploymentNetworkConfig[]**](VProxyDeploymentNetworkConfig.md) |  | [optional] 
**DiskProvisioning** | **String** | Disk Provisioning | [optional] 
**Dns** | **String** |  | [optional] 
**Fqdn** | **String** |  | [optional] 
**Gateway** | **String** |  | [optional] 
**IPProtocol** | **String** |  | [optional] 
**InterfaceName** | **String** |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**IpV6Address** | **String** |  | [optional] 
**IpV6AutoAssign** | **Boolean** |  | [optional] 
**IpV6Gateway** | **String** |  | [optional] 
**IpV6PrefixLen** | **Int32** |  | [optional] 
**Location** | [**VmDeploymentLocation**](VmDeploymentLocation.md) |  | [optional] 
**MacAddress** | **String** |  | [optional] 
**MultiVlanEnabled** | **Boolean** |  | [optional] 
**NTPServer** | **String** |  | [optional] 
**NetMask** | **String** |  | [optional] 
**NetworkMoref** | **String** |  | [optional] 
**NodeSize** | **String** | Virtual Machine (VM) Size of node | [optional] 
**OvaFile** | **String** |  | [optional] 
**PrismLocation** | [**PrismVmDeploymentLocation**](PrismVmDeploymentLocation.md) |  | [optional] 
**RootCredential** | [**VProxyCredential**](VProxyCredential.md) |  | [optional] 
**SubnetUuid** | **String** |  | [optional] 
**Timezone** | **String** |  | [optional] 
**VMName** | **String** |  | [optional] 
**Vlans** | [**ProxyDeploymentConfigVlans[]**](ProxyDeploymentConfigVlans.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProxyDeploymentConfig = Initialize-PpdmApiReferenceProxyDeploymentConfig  -AdditionalVMNetworks null `
 -DiskProvisioning null `
 -Dns null `
 -Fqdn null `
 -Gateway null `
 -IPProtocol null `
 -InterfaceName null `
 -IpAddress null `
 -IpV6Address null `
 -IpV6AutoAssign null `
 -IpV6Gateway null `
 -IpV6PrefixLen null `
 -Location null `
 -MacAddress null `
 -MultiVlanEnabled null `
 -NTPServer null `
 -NetMask null `
 -NetworkMoref null `
 -NodeSize null `
 -OvaFile null `
 -PrismLocation null `
 -RootCredential null `
 -SubnetUuid null `
 -Timezone null `
 -VMName null `
 -Vlans null
```

- Convert the resource to JSON
```powershell
$ProxyDeploymentConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

