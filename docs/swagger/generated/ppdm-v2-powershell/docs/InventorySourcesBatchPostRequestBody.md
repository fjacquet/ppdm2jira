# InventorySourcesBatchPostRequestBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | **String** |  | 
**Credentials** | [**InventorySourcesBatchPostRequestBodyCredentials**](InventorySourcesBatchPostRequestBodyCredentials.md) |  | 
**Details** | [**InventorySourcesBatchPostRequestBodyDetails**](InventorySourcesBatchPostRequestBodyDetails.md) |  | 
**Name** | **String** |  | 
**Port** | **Int32** |  | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$InventorySourcesBatchPostRequestBody = Initialize-PpdmApiReferenceInventorySourcesBatchPostRequestBody  -Address null `
 -Credentials null `
 -Details null `
 -Name null `
 -Port null `
 -Type null
```

- Convert the resource to JSON
```powershell
$InventorySourcesBatchPostRequestBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

