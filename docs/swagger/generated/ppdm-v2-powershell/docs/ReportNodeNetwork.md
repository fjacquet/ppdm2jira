# ReportNodeNetwork
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DnsServers** | **String[]** |  | 
**Fqdn** | **String** | Virtual Machine (VM) FQDN. | 
**Gateway** | **String** | IPv4 gateway. | 
**InterfaceName** | **String** |  | [optional] 
**IpAddress** | **String[]** | Virtual Machine (VM) IPv4 addresses. | 
**IpAddressFamily** | **String** | IP Protocol: IPV4 (default), IPV6. | 
**NetMask** | **String** | Network mask. | 
**NetworkMoref** | **String** | Network MoRef for the Node VM. | 

## Examples

- Prepare the resource
```powershell
$ReportNodeNetwork = Initialize-PpdmApiReferenceReportNodeNetwork  -DnsServers null `
 -Fqdn null `
 -Gateway null `
 -InterfaceName null `
 -IpAddress null `
 -IpAddressFamily null `
 -NetMask null `
 -NetworkMoref null
```

- Convert the resource to JSON
```powershell
$ReportNodeNetwork | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

