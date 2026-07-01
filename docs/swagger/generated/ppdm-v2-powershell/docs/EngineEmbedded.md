# EngineEmbedded
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DataDomainMtree** | [**EngineDataDomainMtree**](EngineDataDomainMtree.md) |  | [optional] 
**StorageSystem** | [**EngineStorageSystem**](EngineStorageSystem.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EngineEmbedded = Initialize-PpdmApiReferenceEngineEmbedded  -DataDomainMtree null `
 -StorageSystem null
```

- Convert the resource to JSON
```powershell
$EngineEmbedded | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

