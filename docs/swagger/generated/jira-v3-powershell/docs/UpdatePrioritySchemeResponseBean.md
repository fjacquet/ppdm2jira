# UpdatePrioritySchemeResponseBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PriorityScheme** | [**PrioritySchemeWithPaginatedPrioritiesAndProjects**](PrioritySchemeWithPaginatedPrioritiesAndProjects.md) |  | [optional] 
**Task** | [**TaskProgressBeanJsonNode**](TaskProgressBeanJsonNode.md) | The in-progress issue migration task. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$UpdatePrioritySchemeResponseBean = Initialize-JiraApiReferenceUpdatePrioritySchemeResponseBean  -PriorityScheme null `
 -Task null
```

- Convert the resource to JSON
```powershell
$UpdatePrioritySchemeResponseBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

