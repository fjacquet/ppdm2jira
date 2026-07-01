# FieldLayoutPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configuration** | [**FieldLayoutConfiguration[]**](FieldLayoutConfiguration.md) | The field layout configuration. See https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-field-configurations/\#api-rest-api-3-fieldconfiguration-post | [optional] 
**Description** | **String** | The description of the field layout | [optional] 
**Name** | **String** | The name of the field layout | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldLayoutPayload = Initialize-JiraApiReferenceFieldLayoutPayload  -Configuration null `
 -Description This is a field layout `
 -Name My Field Layout `
 -Pcri null
```

- Convert the resource to JSON
```powershell
$FieldLayoutPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

