# NetworkIps
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ips** | **String[]** |  | [optional] 
**Ipv6s** | **String[]** | The IPv6 address or the IP range of addresses. Each IPv6 address or IPv6 address range is one item. This object must be empty in the IPv4 VLAN. | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkIps = Initialize-PpdmApiReferenceNetworkIps  -Ips null `
 -Ipv6s null
```

- Convert the resource to JSON
```powershell
$NetworkIps | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

