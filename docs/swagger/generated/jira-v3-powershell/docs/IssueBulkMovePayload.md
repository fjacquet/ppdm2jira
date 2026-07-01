# IssueBulkMovePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SendBulkNotification** | **Boolean** | A boolean value that indicates whether to send a bulk change notification when the issues are being moved.  If &#x60;true&#x60;, dispatches a bulk notification email to users about the updates. | [optional] [default to $true]
**TargetToSourcesMapping** | [**System.Collections.Hashtable**](TargetToSourcesMapping.md) | An object representing the mapping of issues and data related to destination entities, like fields and statuses, that are required during a bulk move.  The key is a string that is created by concatenating the following three entities in order, separated by commas. The format is &#x60;&lt;project ID or key&gt;,&lt;issueType ID&gt;,&lt;parent ID or key&gt;&#x60;. It should be unique across mappings provided in the payload. If you provide multiple mappings for the same key, only one will be processed. However, the operation won&#39;t fail, so the error may be hard to track down.   *  ***Destination project*** (Required): ID or key of the project to which the issues are being moved.  *  ***Destination issueType*** (Required): ID of the issueType to which the issues are being moved.  *  ***Destination parent ID or key*** (Optional): ID or key of the issue which will become the parent of the issues being moved. Only required when the destination issueType is a subtask. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueBulkMovePayload = Initialize-JiraApiReferenceIssueBulkMovePayload  -SendBulkNotification null `
 -TargetToSourcesMapping null
```

- Convert the resource to JSON
```powershell
$IssueBulkMovePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

