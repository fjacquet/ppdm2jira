# StatusWorkflowUsagePage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextPageToken** | **String** | Page token for the next page of issue type usages. | [optional] 
**Values** | [**StatusWorkflowUsageWorkflow[]**](StatusWorkflowUsageWorkflow.md) | The list of statuses. | [optional] 

## Examples

- Prepare the resource
```powershell
$StatusWorkflowUsagePage = Initialize-JiraApiReferenceStatusWorkflowUsagePage  -NextPageToken null `
 -Values null
```

- Convert the resource to JSON
```powershell
$StatusWorkflowUsagePage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

