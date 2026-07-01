# IssueBulkTransitionPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BulkTransitionInputs** | [**BulkTransitionSubmitInput[]**](BulkTransitionSubmitInput.md) | List of objects and each object has two properties:   *  Issues that will be bulk transitioned.  *  TransitionId that corresponds to a specific transition of issues that share the same workflow. | 
**SendBulkNotification** | **Boolean** | A boolean value that indicates whether to send a bulk change notification when the issues are being transitioned.  If &#x60;true&#x60;, dispatches a bulk notification email to users about the updates. | [optional] [default to $true]

## Examples

- Prepare the resource
```powershell
$IssueBulkTransitionPayload = Initialize-JiraApiReferenceIssueBulkTransitionPayload  -BulkTransitionInputs null `
 -SendBulkNotification null
```

- Convert the resource to JSON
```powershell
$IssueBulkTransitionPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

