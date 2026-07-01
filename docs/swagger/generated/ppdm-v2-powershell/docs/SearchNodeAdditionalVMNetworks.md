# SearchNodeAdditionalVMNetworks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Fqdn** | **String** |  | [optional] 
**Gateway** | **String** |  | [optional] 
**InterfaceName** | **String** |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**IpProtocol** | **String** |  | [optional] 
**IpV6Address** | **String** |  | [optional] 
**IpV6AutoAssign** | **Boolean** |  | [optional] 
**IpV6Gateway** | **String** |  | [optional] 
**IpV6PrefixLen** | **Int32** |  | [optional] 
**MacAddress** | **String** |  | [optional] 
**MultiVlanEnabled** | **Boolean** |  | [optional] 
**NetMask** | **String** |  | [optional] 
**NetworkMoref** | **String** |  | [optional] 
**Vlans** | [**SearchNodeAdditionalVMNetworksVlans[]**](SearchNodeAdditionalVMNetworksVlans.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchNodeAdditionalVMNetworks = Initialize-PpdmApiReferenceSearchNodeAdditionalVMNetworks  -Fqdn null `
 -Gateway null `
 -InterfaceName null `
 -IpAddress null `
 -IpProtocol null `
 -IpV6Address null `
 -IpV6AutoAssign null `
 -IpV6Gateway null `
 -IpV6PrefixLen null `
 -MacAddress null `
 -MultiVlanEnabled null `
 -NetMask null `
 -NetworkMoref null `
 -Vlans null
```

- Convert the resource to JSON
```powershell
$SearchNodeAdditionalVMNetworks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

