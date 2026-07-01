# StorageSystems
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**StorageSystem[]**](StorageSystem.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageSystems = Initialize-PpdmApiReferenceStorageSystems  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$StorageSystems | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

