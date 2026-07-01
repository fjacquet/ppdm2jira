# ItemSelectionRuleRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the referenced item selection rule. | [optional] [readonly] 
**Name** | **String** | The name of the referenced item selection rule. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ItemSelectionRuleRef = Initialize-PpdmApiReferenceItemSelectionRuleRef  -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$ItemSelectionRuleRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

