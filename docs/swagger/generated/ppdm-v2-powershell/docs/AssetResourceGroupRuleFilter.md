# AssetResourceGroupRuleFilter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the filter. | [optional] 
**Name** | **String** | Name of the filter. | [optional] [readonly] 
**TemplateName** | **String** | If the filter is derived from a template, the template name. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AssetResourceGroupRuleFilter = Initialize-PpdmApiReferenceAssetResourceGroupRuleFilter  -Id null `
 -Name null `
 -TemplateName null
```

- Convert the resource to JSON
```powershell
$AssetResourceGroupRuleFilter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

