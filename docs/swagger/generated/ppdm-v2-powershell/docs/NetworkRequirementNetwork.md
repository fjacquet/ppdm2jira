# NetworkRequirementNetwork
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**IpAddressFamily** | **String** | The VLAN IP address type. It must be one of these values [IPv4, IPv6, Dual]. | [optional] [default to "IPv4"]
**Servers** | [**NetworkRequirementServer[]**](NetworkRequirementServer.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkRequirementNetwork = Initialize-PpdmApiReferenceNetworkRequirementNetwork  -Id null `
 -IpAddressFamily null `
 -Servers null
```

- Convert the resource to JSON
```powershell
$NetworkRequirementNetwork | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

