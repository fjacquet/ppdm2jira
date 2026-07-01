# InventorySourceIpRules
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IpList** | **String[]** | Set of string representations of IPv4 or IPv6 addresses. | [optional] 
**IpRanges** | [**InventorySourceIpRanges[]**](InventorySourceIpRanges.md) | Set of IP ranges, each defined by its minimum and maximum values. | [optional] 
**Subnetworks** | [**InventorySourceSubnetworks[]**](InventorySourceSubnetworks.md) | Set of subnetworks, each defined by its IP address and mask. | [optional] 

## Examples

- Prepare the resource
```powershell
$InventorySourceIpRules = Initialize-PpdmApiReferenceInventorySourceIpRules  -IpList null `
 -IpRanges null `
 -Subnetworks null
```

- Convert the resource to JSON
```powershell
$InventorySourceIpRules | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

