# Project
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Archived** | **Boolean** | Whether the project is archived. | [optional] [readonly] 
**ArchivedBy** | [**User**](User.md) | The user who archived the project. | [optional] [readonly] 
**ArchivedDate** | **System.DateTime** | The date when the project was archived. | [optional] [readonly] 
**AssigneeType** | **String** | The default assignee when creating issues for this project. | [optional] [readonly] 
**AvatarUrls** | [**AvatarUrlsBean**](AvatarUrlsBean.md) | The URLs of the project&#39;s avatars. | [optional] [readonly] 
**Components** | [**ProjectComponent[]**](ProjectComponent.md) | List of the components contained in the project. | [optional] [readonly] 
**Deleted** | **Boolean** | Whether the project is marked as deleted. | [optional] [readonly] 
**DeletedBy** | [**User**](User.md) | The user who marked the project as deleted. | [optional] [readonly] 
**DeletedDate** | **System.DateTime** | The date when the project was marked as deleted. | [optional] [readonly] 
**Description** | **String** | A brief description of the project. | [optional] [readonly] 
**Email** | **String** | An email address associated with the project. | [optional] 
**Expand** | **String** | Expand options that include additional project details in the response. | [optional] [readonly] 
**Favourite** | **Boolean** | Whether the project is selected as a favorite. | [optional] 
**Id** | **String** | The ID of the project. | [optional] 
**Insight** | [**ProjectInsight**](ProjectInsight.md) | Insights about the project. | [optional] [readonly] 
**IsPrivate** | **Boolean** | Whether the project is private from the user&#39;s perspective. This means the user can&#39;t see the project or any associated issues. | [optional] [readonly] 
**IssueTypeHierarchy** | [**Hierarchy**](Hierarchy.md) | The issue type hierarchy for the project. | [optional] [readonly] 
**IssueTypes** | [**IssueTypeDetails[]**](IssueTypeDetails.md) | List of the issue types available in the project. | [optional] [readonly] 
**Key** | **String** | The key of the project. | [optional] [readonly] 
**LandingPageInfo** | [**ProjectLandingPageInfo**](ProjectLandingPageInfo.md) | The project landing page info. | [optional] [readonly] 
**Lead** | [**User**](User.md) | The username of the project lead. | [optional] [readonly] 
**Name** | **String** | The name of the project. | [optional] [readonly] 
**Permissions** | [**ProjectPermissions**](ProjectPermissions.md) | User permissions on the project | [optional] [readonly] 
**ProjectCategory** | [**ProjectCategory**](ProjectCategory.md) | The category the project belongs to. | [optional] [readonly] 
**ProjectTypeKey** | **String** | The [project type](https://confluence.atlassian.com/x/GwiiLQ#Jiraapplicationsoverview-Productfeaturesandprojecttypes) of the project. | [optional] [readonly] 
**Properties** | [**System.Collections.Hashtable**](AnyType.md) | Map of project properties | [optional] [readonly] 
**RetentionTillDate** | **System.DateTime** | The date when the project is deleted permanently. | [optional] [readonly] 
**Roles** | **System.Collections.Hashtable** | The name and self URL for each role defined in the project. For more information, see [Create project role](#api-rest-api-3-role-post). | [optional] [readonly] 
**Self** | **String** | The URL of the project details. | [optional] [readonly] 
**Simplified** | **Boolean** | Whether the project is simplified. | [optional] [readonly] 
**Style** | **String** | The type of the project. | [optional] [readonly] 
**Url** | **String** | A link to information about this project, such as project documentation. | [optional] [readonly] 
**Uuid** | **String** | Unique ID for next-gen projects. | [optional] [readonly] 
**Versions** | **Version[]** | The versions defined in the project. For more information, see [Create version](#api-rest-api-3-version-post). | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Project = Initialize-JiraApiReferenceProject  -Archived null `
 -ArchivedBy null `
 -ArchivedDate null `
 -AssigneeType null `
 -AvatarUrls null `
 -Components null `
 -Deleted null `
 -DeletedBy null `
 -DeletedDate null `
 -Description null `
 -Email null `
 -Expand null `
 -Favourite null `
 -Id null `
 -Insight null `
 -IsPrivate null `
 -IssueTypeHierarchy null `
 -IssueTypes null `
 -Key null `
 -LandingPageInfo null `
 -Lead null `
 -Name null `
 -Permissions null `
 -ProjectCategory null `
 -ProjectTypeKey null `
 -Properties null `
 -RetentionTillDate null `
 -Roles null `
 -Self null `
 -Simplified null `
 -Style null `
 -Url null `
 -Uuid null `
 -Versions null
```

- Convert the resource to JSON
```powershell
$Project | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

