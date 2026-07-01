# NetworkRequirementServer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IpCount** | **Int32** |  | [optional] 
**Ipv6Count** | **Int32** | The number of IPv6 addresses required for a given server type (serverType). For example, if you have three SEARCH servers, at least three IPv6 addresses are required. You can provide three single IPv6 addresses such as [&quot;&quot;1111::11, 1111::12, 1111::13&quot;&quot;], or one IPv6 address range such as [&quot;&quot;1111::11-1111::13]. | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkRequirementServer = Initialize-PpdmApiReferenceNetworkRequirementServer  -IpCount null `
 -Ipv6Count null `
 -Type null
```

- Convert the resource to JSON
```powershell
$NetworkRequirementServer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

