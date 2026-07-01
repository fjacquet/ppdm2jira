# PreviewRuleConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | A transient identifier for this element, unique within this response but not guaranteed to stable across requests. | [optional] 
**Parameters** | **System.Collections.Hashtable** | The parameters of the rule. | [optional] 
**RuleKey** | **String** | The rule key of the rule. | [optional] 

## Examples

- Prepare the resource
```powershell
$PreviewRuleConfiguration = Initialize-JiraApiReferencePreviewRuleConfiguration  -Id null `
 -Parameters null `
 -RuleKey null
```

- Convert the resource to JSON
```powershell
$PreviewRuleConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

