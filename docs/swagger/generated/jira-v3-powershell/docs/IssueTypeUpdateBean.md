# IssueTypeUpdateBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvatarId** | **Int64** | The ID of an issue type avatar. This can be obtained be obtained from the following endpoints:   *  [System issue type avatar IDs only](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-avatars/#api-rest-api-3-avatar-type-system-get)  *  [System and custom issue type avatar IDs](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-avatars/#api-rest-api-3-universal-avatar-type-type-owner-entityid-get) | [optional] 
**Description** | **String** | The description of the issue type. | [optional] 
**Name** | **String** | The unique name for the issue type. The maximum length is 60 characters. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeUpdateBean = Initialize-JiraApiReferenceIssueTypeUpdateBean  -AvatarId null `
 -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IssueTypeUpdateBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

