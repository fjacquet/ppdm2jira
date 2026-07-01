# Network
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Gateway** | **String** | Optional gateway; supported only with the default network. | [optional] 
**Id** | **String** | Optimus: would be acm network id Miles: would generate an ID For default VLAN, the id would be 0, Miles and Optimus | [optional] 
**IpAddressFamily** | **String** | The VLAN IP address type. It must be one of these values [IPv4, IPv6, Dual]. | [default to "IPv4"]
**Ips** | **String[]** | IP address or IP range of addresses. Each IP address or IP address range is one item. This object must be empty in the IPv6 VLAN. | [optional] 
**Ipv6s** | **String[]** | IPv6 address or IP range of addresses. Each IPv6 address or IPv6 address range is one item. This object must be empty in the IPv4 VLAN. | [optional] 
**Mtu** | **Int32** | MTU (maximum transmission unit) for the virtual network. | 
**Name** | **String** | Name of the virtual network. Cannot be changed if already used by an asset. For default VLAN, the name is &quot;&quot;Default Network.&quot;&quot; | 
**Netmask** | **String** | Subnet mask for the virtual network. This object must be empty in the IPv6 VLAN. | [optional] 
**Prefix** | **String** | Subnet prefix for the virtual network. This object must be empty in the IPv4 VLAN. | [optional] 
**Purposes** | **String[]** | The purpose of the VLAN. It must be combined with &quot;&quot;MANAGEMENT_DATA&quot;&quot;, &quot;&quot;MANAGEMENT&quot;&quot; or &quot;&quot;DATA&quot;&quot;. | 
**Routes** | [**NetworkRoutes[]**](NetworkRoutes.md) | Optionally add a route. PowerProtect Data Manager servers may not need connect to all VLANs (for example, some PowerProtect Data Domain VLANs), but you can configure connectable gateways in PowerProtect Data Manager existing VLANs. Route configuration may be useful for an external route, for example, to cloud. For Optimus, ACM don&#39;t store route, so can&#39;t pass in routes when invoke PUT.  | [optional] 
**Status** | **String** | Output only, indicating request result. **init:** Inititalized, not yet saved to system **synced:** Fully synchronized to system **changed:** Changed but not fully synchronized to system **failed:** Save VLAN failed.  | [optional] [default to "init"]
**Tags** | **String[]** | The tags for the virtual network. | [optional] 
**Type** | **String** | This field is obsolete in 19.10 and later releases and is set to null. | [optional] [default to "any"]
**Usages** | [**NetworkUsages[]**](NetworkUsages.md) | Don&#39;t needed when create network. Only can input for usage update API. | [optional] 
**VlanId** | **Int32** | ID of the VLAN. Value is read-only after setting it. For default VLAN, the ID is 0. For other VLANs, values range from 1 to 4094. | 
**VmNetworkName** | **String** | For Optimus only.  For Miles, host specific, refer to usage&#39;s same field  | [optional] [default to "DPG_VM_PUBLIC_DATA_NETWORK"]

## Examples

- Prepare the resource
```powershell
$Network = Initialize-PpdmApiReferenceNetwork  -Gateway null `
 -Id null `
 -IpAddressFamily null `
 -Ips null `
 -Ipv6s null `
 -Mtu null `
 -Name null `
 -Netmask null `
 -Prefix null `
 -Purposes null `
 -Routes null `
 -Status null `
 -Tags null `
 -Type null `
 -Usages null `
 -VlanId null `
 -VmNetworkName null
```

- Convert the resource to JSON
```powershell
$Network | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

