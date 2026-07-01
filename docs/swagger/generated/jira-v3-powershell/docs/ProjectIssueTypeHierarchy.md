# ProjectIssueTypeHierarchy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hierarchy** | [**ProjectIssueTypesHierarchyLevel[]**](ProjectIssueTypesHierarchyLevel.md) | Details of an issue type hierarchy level. | [optional] [readonly] 
**ProjectId** | **Int64** | The ID of the project. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectIssueTypeHierarchy = Initialize-JiraApiReferenceProjectIssueTypeHierarchy  -Hierarchy null `
 -ProjectId null
```

- Convert the resource to JSON
```powershell
$ProjectIssueTypeHierarchy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

