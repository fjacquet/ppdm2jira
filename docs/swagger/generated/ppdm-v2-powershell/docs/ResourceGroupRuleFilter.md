# ResourceGroupRuleFilter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Filter ID. | [optional] 
**Name** | **String** | Filter name. | [optional] 
**TemplateName** | **String** | Filter template name. | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceGroupRuleFilter = Initialize-PpdmApiReferenceResourceGroupRuleFilter  -Id null `
 -Name null `
 -TemplateName null
```

- Convert the resource to JSON
```powershell
$ResourceGroupRuleFilter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

