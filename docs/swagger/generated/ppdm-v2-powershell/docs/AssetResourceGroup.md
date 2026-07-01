# AssetResourceGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the resource group. | [optional] 
**Rule** | [**AssetResourceGroupRule**](AssetResourceGroupRule.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetResourceGroup = Initialize-PpdmApiReferenceAssetResourceGroup  -Id null `
 -Rule null
```

- Convert the resource to JSON
```powershell
$AssetResourceGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

