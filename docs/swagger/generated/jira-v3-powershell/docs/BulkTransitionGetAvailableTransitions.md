# BulkTransitionGetAvailableTransitions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvailableTransitions** | [**IssueBulkTransitionForWorkflow[]**](IssueBulkTransitionForWorkflow.md) | List of available transitions for bulk transition operation for requested issues grouped by workflow | [optional] [readonly] 
**EndingBefore** | **String** | The end cursor for use in pagination. | [optional] [readonly] 
**StartingAfter** | **String** | The start cursor for use in pagination. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$BulkTransitionGetAvailableTransitions = Initialize-JiraApiReferenceBulkTransitionGetAvailableTransitions  -AvailableTransitions null `
 -EndingBefore null `
 -StartingAfter null
```

- Convert the resource to JSON
```powershell
$BulkTransitionGetAvailableTransitions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

