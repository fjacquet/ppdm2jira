# CdrVcInventory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DataCenters** | [**CdrVcInventoryDataCenters[]**](CdrVcInventoryDataCenters.md) |  | [optional] 
**Id** | **String** | ID of Cloud DR vCenter inventory. | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrVcInventory = Initialize-PpdmApiReferenceCdrVcInventory  -DataCenters null `
 -Id null
```

- Convert the resource to JSON
```powershell
$CdrVcInventory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

