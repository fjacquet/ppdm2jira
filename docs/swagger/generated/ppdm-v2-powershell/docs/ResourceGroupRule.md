# ResourceGroupRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFilter** | [**ResourceGroupRuleFilter**](ResourceGroupRuleFilter.md) |  | [optional] 
**Id** | **String** | Rule ID. | 
**Name** | **String** | Rule name. | 

## Examples

- Prepare the resource
```powershell
$ResourceGroupRule = Initialize-PpdmApiReferenceResourceGroupRule  -VarFilter null `
 -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$ResourceGroupRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

