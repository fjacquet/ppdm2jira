# InventorySourceSubnetworks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IpAddress** | **String** | IP address of the inventory source. | [optional] 
**Netmask** | [**Netmask**](Netmask.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InventorySourceSubnetworks = Initialize-PpdmApiReferenceInventorySourceSubnetworks  -IpAddress null `
 -Netmask null
```

- Convert the resource to JSON
```powershell
$InventorySourceSubnetworks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

