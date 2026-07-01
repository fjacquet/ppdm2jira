# StorageContainers
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**StorageContainer[]**](StorageContainer.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageContainers = Initialize-PpdmApiReferenceStorageContainers  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$StorageContainers | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

