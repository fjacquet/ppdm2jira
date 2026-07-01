# StorageSystemInventorySource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Preferred** | **Boolean** |  | [optional] 
**Type** | [**InventorySourceTypeEnum**](InventorySourceTypeEnum.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageSystemInventorySource = Initialize-PpdmApiReferenceStorageSystemInventorySource  -Id null `
 -Name null `
 -Preferred null `
 -Type null
```

- Convert the resource to JSON
```powershell
$StorageSystemInventorySource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

