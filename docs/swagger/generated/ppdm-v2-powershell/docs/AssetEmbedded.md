# AssetEmbedded
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProtectionPolicy** | [**EmbeddedProtectionPolicy**](EmbeddedProtectionPolicy.md) |  | [optional] 
**ProtectionlifeCycle** | [**EmbeddedProtectionPolicy**](EmbeddedProtectionPolicy.md) |  | [optional] 
**StorageSystem** | [**EmbeddedIdName**](EmbeddedIdName.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetEmbedded = Initialize-PpdmApiReferenceAssetEmbedded  -ProtectionPolicy null `
 -ProtectionlifeCycle null `
 -StorageSystem null
```

- Convert the resource to JSON
```powershell
$AssetEmbedded | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

