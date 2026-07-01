# ProjectPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldLayoutSchemeId** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**IssueSecuritySchemeId** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**IssueTypeSchemeId** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**IssueTypeScreenSchemeId** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**NotificationSchemeId** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**PermissionSchemeId** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 
**ProjectTypeKey** | **String** | The [project type](https://confluence.atlassian.com/x/GwiiLQ#Jiraapplicationsoverview-Productfeaturesandprojecttypes), which defines the application-specific feature set. If you don&#39;t specify the project template you have to specify the project type. | [optional] 
**WorkflowSchemeId** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectPayload = Initialize-JiraApiReferenceProjectPayload  -FieldLayoutSchemeId null `
 -IssueSecuritySchemeId null `
 -IssueTypeSchemeId null `
 -IssueTypeScreenSchemeId null `
 -NotificationSchemeId null `
 -Pcri null `
 -PermissionSchemeId null `
 -ProjectTypeKey software `
 -WorkflowSchemeId null
```

- Convert the resource to JSON
```powershell
$ProjectPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

