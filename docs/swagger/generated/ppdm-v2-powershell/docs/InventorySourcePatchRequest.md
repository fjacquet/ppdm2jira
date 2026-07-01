# InventorySourcePatchRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Details** | [**InventorySourcePatchRequestDetailsVCenter**](InventorySourcePatchRequestDetailsVCenter.md) |  | [optional] 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InventorySourcePatchRequest = Initialize-PpdmApiReferenceInventorySourcePatchRequest  -Details null `
 -Id null
```

- Convert the resource to JSON
```powershell
$InventorySourcePatchRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

