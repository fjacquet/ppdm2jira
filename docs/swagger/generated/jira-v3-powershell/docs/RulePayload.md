# RulePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Parameters** | **System.Collections.Hashtable** | The parameters of the rule | [optional] 
**RuleKey** | **String** | The key of the rule. See https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-workflows/\#api-rest-api-3-workflows-capabilities-get | [optional] 

## Examples

- Prepare the resource
```powershell
$RulePayload = Initialize-JiraApiReferenceRulePayload  -Parameters null `
 -RuleKey system:update-field
```

- Convert the resource to JSON
```powershell
$RulePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

