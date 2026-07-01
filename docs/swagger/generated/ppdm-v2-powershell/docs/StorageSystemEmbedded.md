# StorageSystemEmbedded
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InventorySource** | [**EmbeddedIdName**](EmbeddedIdName.md) |  | [optional] 
**Location** | [**EmbeddedIdName**](EmbeddedIdName.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageSystemEmbedded = Initialize-PpdmApiReferenceStorageSystemEmbedded  -InventorySource null `
 -Location null
```

- Convert the resource to JSON
```powershell
$StorageSystemEmbedded | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

