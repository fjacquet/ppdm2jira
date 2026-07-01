# UiModificationContextDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the UI modification context. | [optional] [readonly] 
**IsAvailable** | **Boolean** | Whether a context is available. For example, when a project is deleted the context becomes unavailable. | [optional] [readonly] 
**IssueTypeId** | **String** | The issue type ID of the context. Null is treated as a wildcard, meaning the UI modification will be applied to all issue types. Each UI modification context can have a maximum of one wildcard. | [optional] 
**PortalId** | **String** | The portal ID of the context. Only required for Jira Service Management request create portal view (&#x60;JSMRequestCreate&#x60;). | [optional] 
**ProjectId** | **String** | The project ID of the context. Null is treated as a wildcard, meaning the UI modification will be applied to all projects. Each UI modification context can have a maximum of one wildcard. | [optional] 
**RequestTypeId** | **String** | The request type ID of the context. Only required for Jira Service Management request create portal view (&#x60;JSMRequestCreate&#x60;). | [optional] 
**ViewType** | **String** | The view type of the context.   Supported values:   *  &#x60;GIC&#x60; \- Jira global issue create  *  &#x60;IssueView&#x60; \- Jira issue view  *  &#x60;IssueTransition&#x60; \- Jira issue transition  *  &#x60;JSMRequestCreate&#x60; \- Jira Service Management request create portal view  For Jira view types (&#x60;GIC&#x60;, &#x60;IssueView&#x60;, &#x60;IssueTransition&#x60;), null is treated as a wildcard, meaning the UI modification will be applied to all view types. Each Jira context can have a maximum of one wildcard.      Wildcards are not applicable for JSM contexts. | [optional] 

## Examples

- Prepare the resource
```powershell
$UiModificationContextDetails = Initialize-JiraApiReferenceUiModificationContextDetails  -Id null `
 -IsAvailable null `
 -IssueTypeId null `
 -PortalId null `
 -ProjectId null `
 -RequestTypeId null `
 -ViewType null
```

- Convert the resource to JSON
```powershell
$UiModificationContextDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

