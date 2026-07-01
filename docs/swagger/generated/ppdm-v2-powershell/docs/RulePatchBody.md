# RulePatchBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the rule. | [optional] 
**Name** | **String** | The name of the rule. | [optional] 

## Examples

- Prepare the resource
```powershell
$RulePatchBody = Initialize-PpdmApiReferenceRulePatchBody  -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$RulePatchBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

