# WorkflowSchemeUsagePage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextPageToken** | **String** | Token for the next page of issue type usages. | [optional] 
**Values** | [**WorkflowSchemeUsage[]**](WorkflowSchemeUsage.md) | The list of workflow schemes. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowSchemeUsagePage = Initialize-JiraApiReferenceWorkflowSchemeUsagePage  -NextPageToken null `
 -Values null
```

- Convert the resource to JSON
```powershell
$WorkflowSchemeUsagePage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

