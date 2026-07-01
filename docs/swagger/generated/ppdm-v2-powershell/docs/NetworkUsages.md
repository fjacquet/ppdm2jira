# NetworkUsages
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Device** | **String** | The device that host used to create alias/virtual interface | [optional] 
**InUse** | **Boolean** | Indicates whether IP is in use by the specific server. Changed by status and user input. | [optional] [default to $false]
**Ip** | **String** | Real used IP by host from specified ips | [optional] 
**Ipv6** | **String** | The IPv6 address that is used by the host. | [optional] 
**Ipv6InUse** | **Boolean** | Indicates whether IPv6 is in use by the specific server. Changed by status and user input. | [optional] 
**LastUpdateAt** | **String** | usage update time. | [optional] 
**NetworkInterface** | **String** | Network interface that the host created to acquire IP for | [optional] 
**NetworkMoref** | **String** | Interface moref of the network. | [optional] 
**PortGroupType** | **String** | Port group type of the network. | [optional] 
**PurposeMismatch** | **Boolean** | Indicates whether the server mismatches the purpose of the VLAN. | [optional] 
**ReferenceId** | **String** | Based on server type, store corresponding id For PowerProtect Data Manager, vProxy and search, would be node id. For VSO related servers, would be empty for first release. | [optional] 
**ServerType** | **String** | Node type | [optional] 
**Status** | **String** | init: specified but not allied yet failed: acquire ip failed, maybe because ip conflict synced: successfully applied about network and route released: can be reuse by other server, and can be deleted from usage changed: some changes stored to DB but not apply to server yet | [optional] 
**VmNetworkName** | **String** | Miles only. VM&#39;s network card&#39;s network name, for additional VLAN, should be the one tag as 4095 in vSphere | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkUsages = Initialize-PpdmApiReferenceNetworkUsages  -Device null `
 -InUse null `
 -Ip null `
 -Ipv6 null `
 -Ipv6InUse null `
 -LastUpdateAt null `
 -NetworkInterface null `
 -NetworkMoref null `
 -PortGroupType null `
 -PurposeMismatch null `
 -ReferenceId null `
 -ServerType null `
 -Status null `
 -VmNetworkName null
```

- Convert the resource to JSON
```powershell
$NetworkUsages | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

