# UserPickerUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [optional] 
**AccountType** | **String** | The user account type. Can take the following values:   *  &#x60;atlassian&#x60; regular Atlassian user account  *  &#x60;app&#x60; system account used for Connect applications and OAuth to represent external systems  *  &#x60;customer&#x60; Jira Service Desk account representing an external service desk | [optional] 
**AvatarUrl** | **String** | The avatar URL of the user. | [optional] 
**DisplayName** | **String** | The display name of the user. Depending on the user’s privacy setting, this may be returned as null. | [optional] 
**Html** | **String** | The display name, email address, and key of the user with the matched query string highlighted with the HTML bold tag. | [optional] 
**Key** | **String** | This property is no longer available. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] 
**Name** | **String** | This property is no longer available . See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] 

## Examples

- Prepare the resource
```powershell
$UserPickerUser = Initialize-JiraApiReferenceUserPickerUser  -AccountId null `
 -AccountType null `
 -AvatarUrl null `
 -DisplayName null `
 -Html null `
 -Key null `
 -Name null
```

- Convert the resource to JSON
```powershell
$UserPickerUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

