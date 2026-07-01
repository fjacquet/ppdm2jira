# NetworkRoutes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Destination** | **String** | Route target IP range or hostname. If type is host, enter IP address or FQDN. If type is subnet, then use only IP address. | [optional] 
**Gateway** | **String** | Gateway IP or proxy server. Optional.  | [optional] 
**Netmask** | **String** | Netmask applied to source IP address, whether need support short format. Optional, only for subnet type. | [optional] 
**Prefix** | **String** | Prefix applied to source IPv6 address. Optional, and only for subnet type. | [optional] 
**Type** | **String** | **subnet:** Subnet. Requires netmask. **host:** Single IP address or FQDN. Does not require netmask.  | [optional] [default to "subnet"]

## Examples

- Prepare the resource
```powershell
$NetworkRoutes = Initialize-PpdmApiReferenceNetworkRoutes  -Destination null `
 -Gateway null `
 -Netmask null `
 -Prefix null `
 -Type null
```

- Convert the resource to JSON
```powershell
$NetworkRoutes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

