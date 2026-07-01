# StatusWorkflowUsageDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StatusId** | **String** | The status ID. | [optional] 
**Workflows** | [**StatusWorkflowUsagePage**](StatusWorkflowUsagePage.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StatusWorkflowUsageDTO = Initialize-JiraApiReferenceStatusWorkflowUsageDTO  -StatusId null `
 -Workflows null
```

- Convert the resource to JSON
```powershell
$StatusWorkflowUsageDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

