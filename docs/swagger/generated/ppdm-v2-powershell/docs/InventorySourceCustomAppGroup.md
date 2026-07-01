# InventorySourceCustomAppGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultGroup** | **Boolean** | Identifies whether this group is the SQL server default group. | [optional] 
**IpRules** | [**InventorySourceIpRules**](InventorySourceIpRules.md) |  | [optional] 
**Oracle** | [**InventorySourceOracle**](InventorySourceOracle.md) |  | [optional] 
**UnapprovedHostCount** | **Int32** | Number of hosts that are not approved by AppMgr whitelist. | [optional] 

## Examples

- Prepare the resource
```powershell
$InventorySourceCustomAppGroup = Initialize-PpdmApiReferenceInventorySourceCustomAppGroup  -DefaultGroup null `
 -IpRules null `
 -Oracle null `
 -UnapprovedHostCount null
```

- Convert the resource to JSON
```powershell
$InventorySourceCustomAppGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

