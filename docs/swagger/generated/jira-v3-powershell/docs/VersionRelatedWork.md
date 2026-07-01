# VersionRelatedWork
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Category** | **String** | The category of the related work | 
**IssueId** | **Int64** | The ID of the issue associated with the related work (if there is one). Cannot be updated via the Rest API. | [optional] [readonly] 
**RelatedWorkId** | **String** | The id of the related work. For the native release note related work item, this will be null, and Rest API does not support updating it. | [optional] [readonly] 
**Title** | **String** | The title of the related work | [optional] 
**Url** | **String** | The URL of the related work. Will be null for the native release note related work item, but is otherwise required. | [optional] 

## Examples

- Prepare the resource
```powershell
$VersionRelatedWork = Initialize-JiraApiReferenceVersionRelatedWork  -Category null `
 -IssueId null `
 -RelatedWorkId null `
 -Title null `
 -Url null
```

- Convert the resource to JSON
```powershell
$VersionRelatedWork | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

