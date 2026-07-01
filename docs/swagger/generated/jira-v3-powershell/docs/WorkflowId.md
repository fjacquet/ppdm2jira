# WorkflowId
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Draft** | **Boolean** | **Deprecated:** Whether the workflow is in the draft state. The &#39;draft&#39; parameter will be removed from this API on [November 2, 2026](https://developer.atlassian.com/cloud/jira/platform/changelog/#CHANGE-3147). | [optional] 
**Name** | **String** | The name of the workflow. | 

## Examples

- Prepare the resource
```powershell
$WorkflowId = Initialize-JiraApiReferenceWorkflowId  -Draft null `
 -Name null
```

- Convert the resource to JSON
```powershell
$WorkflowId | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

