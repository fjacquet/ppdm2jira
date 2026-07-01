# IssueBulkTransitionForWorkflow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsTransitionsFiltered** | **Boolean** | Indicates whether all the transitions of this workflow are available in the transitions list or not. | [optional] [readonly] 
**Issues** | **String[]** | List of issue keys from the request which are associated with this workflow. | [optional] [readonly] 
**Transitions** | [**SimplifiedIssueTransition[]**](SimplifiedIssueTransition.md) | List of transitions available for issues from the request which are associated with this workflow.   **This list includes only those transitions that are common across the issues in this workflow and do not involve any additional field updates.**  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueBulkTransitionForWorkflow = Initialize-JiraApiReferenceIssueBulkTransitionForWorkflow  -IsTransitionsFiltered null `
 -Issues null `
 -Transitions null
```

- Convert the resource to JSON
```powershell
$IssueBulkTransitionForWorkflow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

