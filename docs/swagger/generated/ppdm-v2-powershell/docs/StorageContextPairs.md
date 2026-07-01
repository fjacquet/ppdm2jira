# StorageContextPairs
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RootContextId** | **String** |  | [optional] 
**StorageArrayId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageContextPairs = Initialize-PpdmApiReferenceStorageContextPairs  -RootContextId null `
 -StorageArrayId null
```

- Convert the resource to JSON
```powershell
$StorageContextPairs | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

