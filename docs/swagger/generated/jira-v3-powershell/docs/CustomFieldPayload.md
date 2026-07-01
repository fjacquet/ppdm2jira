# CustomFieldPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CfType** | **String** | The type of the custom field | [optional] 
**Description** | **String** | The description of the custom field | [optional] 
**Name** | **String** | The name of the custom field | [optional] 
**OnConflict** | **String** | The strategy to use when there is a conflict with an existing custom field. FAIL - Fail execution, this always needs to be unique; USE - Use the existing entity and ignore new entity parameters | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Scope** | **String** | Allows an overwrite to declare the new Custom Field to be created as a GLOBAL-scoped field. Leave this as empty or null to use the project&#39;s default scope. | [optional] 
**SearcherKey** | **String** | The searcher key of the custom field | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomFieldPayload = Initialize-JiraApiReferenceCustomFieldPayload  -CfType See https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-fields/#api-rest-api-3-field-post &#x60;type&#x60; for values `
 -Description This is a custom field `
 -Name My Custom Field `
 -OnConflict null `
 -Pcri null `
 -Scope null `
 -SearcherKey See https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-fields/#api-rest-api-3-field-post &#x60;searcherKey&#x60; for values
```

- Convert the resource to JSON
```powershell
$CustomFieldPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

