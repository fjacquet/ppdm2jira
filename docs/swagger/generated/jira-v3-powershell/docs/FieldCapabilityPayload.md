# FieldCapabilityPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomFieldDefinitions** | [**CustomFieldPayload[]**](CustomFieldPayload.md) | The custom field definitions. See https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-fields/\#api-rest-api-3-field-post | [optional] 
**FieldLayoutScheme** | [**FieldLayoutSchemePayload**](FieldLayoutSchemePayload.md) |  | [optional] 
**FieldLayouts** | [**FieldLayoutPayload[]**](FieldLayoutPayload.md) | The field layouts configuration. | [optional] 
**FieldScheme** | [**FieldSchemePayload**](FieldSchemePayload.md) |  | [optional] 
**IssueLayouts** | [**IssueLayoutPayload[]**](IssueLayoutPayload.md) | The issue layouts configuration | [optional] 
**IssueTypeScreenScheme** | [**IssueTypeScreenSchemePayload**](IssueTypeScreenSchemePayload.md) |  | [optional] 
**ScreenScheme** | [**ScreenSchemePayload[]**](ScreenSchemePayload.md) | The screen schemes See https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-screen-schemes/\#api-rest-api-3-screenscheme-post | [optional] 
**Screens** | [**ScreenPayload[]**](ScreenPayload.md) | The screens. See https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-screens/\#api-rest-api-3-screens-post | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldCapabilityPayload = Initialize-JiraApiReferenceFieldCapabilityPayload  -CustomFieldDefinitions null `
 -FieldLayoutScheme null `
 -FieldLayouts null `
 -FieldScheme null `
 -IssueLayouts null `
 -IssueTypeScreenScheme null `
 -ScreenScheme null `
 -Screens null
```

- Convert the resource to JSON
```powershell
$FieldCapabilityPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

