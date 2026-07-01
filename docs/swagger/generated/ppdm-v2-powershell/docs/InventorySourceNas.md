# InventorySourceNas
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Protocol** | **String** |  | [optional] 
**StorageApplianceName** | **String** | Associated storage name | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$InventorySourceNas = Initialize-PpdmApiReferenceInventorySourceNas  -Protocol null `
 -StorageApplianceName null
```

- Convert the resource to JSON
```powershell
$InventorySourceNas | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

