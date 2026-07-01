# InventorySourceIpRanges
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Max** | **String** | String representation of an IPv4 or IPv6 address. The inclusive maximum for this range definition. | [optional] 
**Min** | **String** | String representation of an IPv4 or IPv6 address. The inclusive minimum for this range definition. | [optional] 

## Examples

- Prepare the resource
```powershell
$InventorySourceIpRanges = Initialize-PpdmApiReferenceInventorySourceIpRanges  -Max null `
 -Min null
```

- Convert the resource to JSON
```powershell
$InventorySourceIpRanges | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

