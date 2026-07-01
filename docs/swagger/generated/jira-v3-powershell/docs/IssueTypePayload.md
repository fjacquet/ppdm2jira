# IssueTypePayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvatarId** | **Int64** | The avatar ID of the issue type. Go to https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-avatars/\#api-rest-api-3-avatar-type-system-get to choose an avatarId existing in Jira | [optional] 
**Description** | **String** | The description of the issue type | [optional] 
**HierarchyLevel** | **Int32** | The hierarchy level of the issue type. 0, 1, 2, 3 .. n; Negative values for subtasks | [optional] 
**Name** | **String** | The name of the issue type | [optional] 
**OnConflict** | **String** | The conflict strategy to use when the issue type already exists. FAIL - Fail execution, this always needs to be unique; USE - Use the existing entity and ignore new entity parameters | [optional] 
**Pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypePayload = Initialize-JiraApiReferenceIssueTypePayload  -AvatarId null `
 -Description null `
 -HierarchyLevel null `
 -Name null `
 -OnConflict null `
 -Pcri null
```

- Convert the resource to JSON
```powershell
$IssueTypePayload | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

