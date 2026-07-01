# IssueBulkDeletePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SelectedIssueIdsOrKeys** | **String[]** | List of issue IDs or keys which are to be bulk deleted. These IDs or keys can be from different projects and issue types. | 
**SendBulkNotification** | **Boolean** | A boolean value that indicates whether to send a bulk change notification when the issues are being deleted.  If &#x60;true&#x60;, dispatches a bulk notification email to users about the updates. | [optional] [default to $true]

## Examples

- Prepare the resource
```powershell
$IssueBulkDeletePayload = Initialize-JiraApiReferenceIssueBulkDeletePayload  -SelectedIssueIdsOrKeys null `
 -SendBulkNotification null
```

- Convert the resource to JSON
```powershell
$IssueBulkDeletePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

