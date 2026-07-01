# FLRAsset
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**InventorySourceName** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Protocol** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FLRAsset = Initialize-PpdmApiReferenceFLRAsset  -Id null `
 -InventorySourceName null `
 -Name null `
 -Protocol null
```

- Convert the resource to JSON
```powershell
$FLRAsset | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

