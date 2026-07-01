# CustomTemplatesProjectDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessLevel** | **String** | The access level of the project. Only used by team-managed project | [optional] 
**AdditionalProperties** | **System.Collections.Hashtable** | Additional properties of the project | [optional] 
**AssigneeType** | **String** | The default assignee when creating issues in the project | [optional] 
**AvatarId** | **Int64** | The ID of the project&#39;s avatar. Use the \[Get project avatars\](\#api-rest-api-3-project-projectIdOrKey-avatar-get) operation to list the available avatars in a project. | [optional] 
**CategoryId** | **Int64** | The ID of the project&#39;s category. A complete list of category IDs is found using the [Get all project categories](#api-rest-api-3-projectCategory-get) operation. | [optional] 
**Description** | **String** | Brief description of the project | [optional] 
**EnableComponents** | **Boolean** | Whether components are enabled for the project. Only used by company-managed project | [optional] [default to $false]
**Key** | **String** | Project keys must be unique and start with an uppercase letter followed by one or more uppercase alphanumeric characters. The maximum length is 10 characters. | [optional] 
**Language** | **String** | The default language for the project | [optional] 
**LeadAccountId** | **String** | The account ID of the project lead. Either &#x60;lead&#x60; or &#x60;leadAccountId&#x60; must be set when creating a project. Cannot be provided with &#x60;lead&#x60;. | [optional] 
**Name** | **String** | Name of the project | [optional] 
**Url** | **String** | A link to information about this project, such as project documentation | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomTemplatesProjectDetails = Initialize-JiraApiReferenceCustomTemplatesProjectDetails  -AccessLevel private `
 -AdditionalProperties null `
 -AssigneeType PROJECT_LEAD `
 -AvatarId 10200 `
 -CategoryId null `
 -Description This is a project for Foo Bar `
 -EnableComponents false `
 -Key PRJ `
 -Language en `
 -LeadAccountId 1234567890 `
 -Name Project Foo Bar `
 -Url https://www.example.com
```

- Convert the resource to JSON
```powershell
$CustomTemplatesProjectDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

