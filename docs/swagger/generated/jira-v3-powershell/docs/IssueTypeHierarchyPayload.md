# IssueTypeHierarchyPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HierarchyLevel** | **Int32** | The hierarchy level of the issue type. 0, 1, 2, 3 .. n; Negative values for subtasks | [optional] 
**Name** | **String** | The name of the issue type | [optional] 
**OnConflict** | **String** | The conflict strategy to use when the issue type already exists. FAIL - Fail execution, this always needs to be unique; USE - Use the existing entity and ignore new entity parameters | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeHierarchyPayload = Initialize-JiraApiReferenceIssueTypeHierarchyPayload  -HierarchyLevel null `
 -Name null `
 -OnConflict null `
 -Pcri null
```

- Convert the resource to JSON
```powershell
$IssueTypeHierarchyPayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

