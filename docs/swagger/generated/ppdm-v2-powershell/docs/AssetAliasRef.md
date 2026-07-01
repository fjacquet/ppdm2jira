# AssetAliasRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** | Asset ID of aliases. | [optional] 
**Name** | **String** | Asset name of aliases. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetAliasRef = Initialize-PpdmApiReferenceAssetAliasRef  -AssetId null `
 -Name null
```

- Convert the resource to JSON
```powershell
$AssetAliasRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

