# AssetResourceGroupRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFilter** | [**AssetResourceGroupRuleFilter**](AssetResourceGroupRuleFilter.md) |  | [optional] 
**Id** | **String** | Rule ID. | 
**Name** | **String** | Rule name. | [readonly] 

## Examples

- Prepare the resource
```powershell
$AssetResourceGroupRule = Initialize-PpdmApiReferenceAssetResourceGroupRule  -VarFilter null `
 -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$AssetResourceGroupRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

