# InventorySources
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**InventorySource[]**](InventorySource.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InventorySources = Initialize-PpdmApiReferenceInventorySources  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$InventorySources | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

