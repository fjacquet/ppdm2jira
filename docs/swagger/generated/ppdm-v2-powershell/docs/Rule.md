# Rule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **String** | The action performed. | [optional] 
**ActionArgs** | [**ActionArg[]**](ActionArg.md) |  | [optional] 
**FilterRef** | [**FilterRef**](FilterRef.md) |  | [optional] 
**Id** | **String** | The ID of the rule. | [optional] 
**LastRunAt** | **String** | The date when the rule was last run. | [optional] 
**Name** | **String** | The name of the rule. | [optional] 

## Examples

- Prepare the resource
```powershell
$Rule = Initialize-PpdmApiReferenceRule  -Action null `
 -ActionArgs null `
 -FilterRef null `
 -Id null `
 -LastRunAt null `
 -Name null
```

- Convert the resource to JSON
```powershell
$Rule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

