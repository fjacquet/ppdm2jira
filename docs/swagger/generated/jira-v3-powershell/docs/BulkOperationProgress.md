# BulkOperationProgress
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | A timestamp of when the task was submitted. | [optional] 
**FailedAccessibleIssues** | [**System.Collections.Hashtable**](Array.md) | Map of issue IDs for which the operation failed and that the user has permission to view, to their one or more reasons for failure. These reasons are open-ended text descriptions of the error and are not selected from a predefined list of standard reasons. | [optional] 
**InvalidOrInaccessibleIssueCount** | **Int32** | The number of issues that are either invalid or issues that the user doesn&#39;t have permission to view, regardless of the success or failure of the operation. | [optional] 
**ProcessedAccessibleIssues** | **Int64[]** | List of issue IDs for which the operation was successful and that the user has permission to view. | [optional] 
**ProgressPercent** | **Int64** | Progress of the task as a percentage. | [optional] 
**Started** | **System.DateTime** | A timestamp of when the task was started. | [optional] 
**Status** | **String** | The status of the task. | [optional] 
**SubmittedBy** | [**User**](User.md) |  | [optional] 
**TaskId** | **String** | The ID of the task. | [optional] [readonly] 
**TotalIssueCount** | **Int32** | The number of issues that the bulk operation was attempted on. | [optional] 
**Updated** | **System.DateTime** | A timestamp of when the task progress was last updated. | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkOperationProgress = Initialize-JiraApiReferenceBulkOperationProgress  -Created null `
 -FailedAccessibleIssues null `
 -InvalidOrInaccessibleIssueCount null `
 -ProcessedAccessibleIssues null `
 -ProgressPercent null `
 -Started null `
 -Status null `
 -SubmittedBy null `
 -TaskId null `
 -TotalIssueCount null `
 -Updated null
```

- Convert the resource to JSON
```powershell
$BulkOperationProgress | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

