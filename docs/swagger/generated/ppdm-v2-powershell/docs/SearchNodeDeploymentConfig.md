# SearchNodeDeploymentConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdditionalVMNetworks** | [**SearchNodeAdditionalVMNetworks[]**](SearchNodeAdditionalVMNetworks.md) |  | 
**DiskProvisioning** | **String** | Disk Provisioning. | [optional] 
**Dns** | **String** | List of DNS servers separated by comma. | 
**Fqdn** | **String** | Virtual Machine (VM) FQDN. | 
**Gateway** | **String** | IP gateway. | [optional] 
**IpAddress** | **String** | Virtual Machine (VM) IP address. | [optional] 
**IpProtocol** | **String** | IP Protocol: IPv4 (default), IPv6, or Dual | 
**IpV6Address** | **String** | Virtual Machine (VM) IP address when using IPv6. | [optional] 
**IpV6AutoAssign** | **Boolean** |  | [optional] 
**IpV6Gateway** | **String** | IPv6 gateway. | [optional] 
**IpV6PrefixLen** | **Int32** | IPv6 network mask. | [optional] 
**Location** | [**SearchNodeDeploymentLocation**](SearchNodeDeploymentLocation.md) |  | 
**MultiVlanEnabled** | **Boolean** |  | [optional] 
**NetMask** | **String** | Network mask. | [optional] 
**NetworkMoref** | **String** | Network MoRef for the node VM. | 
**Ovafile** | **String** | OVA file name to use for deployment. | [optional] 
**TimeZone** | **String** | Time zone (default is cuurent PowerProtect Data Manager timezone). | [optional] 
**Vlans** | [**SearchNodeAdditionalVMNetworksVlans[]**](SearchNodeAdditionalVMNetworksVlans.md) |  | [optional] 
**VmName** | **String** | Virtual Machine (VM) name. | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchNodeDeploymentConfig = Initialize-PpdmApiReferenceSearchNodeDeploymentConfig  -AdditionalVMNetworks null `
 -DiskProvisioning null `
 -Dns null `
 -Fqdn null `
 -Gateway null `
 -IpAddress null `
 -IpProtocol null `
 -IpV6Address null `
 -IpV6AutoAssign null `
 -IpV6Gateway null `
 -IpV6PrefixLen null `
 -Location null `
 -MultiVlanEnabled null `
 -NetMask null `
 -NetworkMoref null `
 -Ovafile null `
 -TimeZone null `
 -Vlans null `
 -VmName null
```

- Convert the resource to JSON
```powershell
$SearchNodeDeploymentConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

