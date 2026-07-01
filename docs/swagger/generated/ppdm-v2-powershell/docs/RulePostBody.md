# RulePostBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **String** | The action performed. | [optional] 
**ActionArgs** | [**ActionArg[]**](ActionArg.md) |  | [optional] 
**FilterRef** | [**FilterRef**](FilterRef.md) |  | [optional] 
**LastRunAt** | **System.DateTime** |  | [optional] 
**Name** | **String** | The name of the rule. | [optional] 

## Examples

- Prepare the resource
```powershell
$RulePostBody = Initialize-PpdmApiReferenceRulePostBody  -Action null `
 -ActionArgs null `
 -FilterRef null `
 -LastRunAt null `
 -Name null
```

- Convert the resource to JSON
```powershell
$RulePostBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

