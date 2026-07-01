# SystemConfigurationNetwork
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DnsServers** | **String[]** | The DNS servers of PowerProtect Data Manager. | [optional] 
**Fqdn** | **String** | The FQDN (Fully Qualified Domain Name) of PowerProtect Data Manager. | [optional] 
**Gateway** | **String** | The gateway of PowerProtect Data Manager. | [optional] 
**GatewayIpv6** | **String** | The IPV6 gateway of PowerProtect Data Manager. | [optional] 
**InterfaceName** | **String** | The Network interface card (NIC) name of PowerProtect Data Manager. | 
**IpAddress** | **String[]** | The IPV4 address of PowerProtect Data Manager. | 
**IpAddressFamily** | **String** | The IP address family of PowerProtect Data Manager. | 
**IpAddressIpv6** | **String[]** | The IPV6 address of PowerProtect Data Manager. | [optional] 
**NetMask** | **String** | The net mask of the IPv4 address. | 
**NslookupSuccess** | **Boolean** | If nslookup can successfully obtain domain name or IP address information. | [optional] 
**Prefix** | **String** | The prefix of the IPv6 network. | [optional] 
**SearchDomains** | **String[]** | The search domains of PowerProtect Data Manager. | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemConfigurationNetwork = Initialize-PpdmApiReferenceSystemConfigurationNetwork  -DnsServers null `
 -Fqdn null `
 -Gateway null `
 -GatewayIpv6 null `
 -InterfaceName null `
 -IpAddress null `
 -IpAddressFamily null `
 -IpAddressIpv6 null `
 -NetMask null `
 -NslookupSuccess null `
 -Prefix null `
 -SearchDomains null
```

- Convert the resource to JSON
```powershell
$SystemConfigurationNetwork | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

