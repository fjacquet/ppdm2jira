# User
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. Required in requests. | [optional] 
**AccountType** | **String** | The user account type. Can take the following values:   *  &#x60;atlassian&#x60; regular Atlassian user account  *  &#x60;app&#x60; system account used for Connect applications and OAuth to represent external systems  *  &#x60;customer&#x60; Jira Service Desk account representing an external service desk | [optional] [readonly] 
**Active** | **Boolean** | Whether the user is active. | [optional] [readonly] 
**AppType** | **String** | The app type of the user account when accountType is &#39;app&#39;. Can take the following values:   *  &#x60;service&#x60; Service Account  *  &#x60;agent&#x60; Rovo Agent Account  *  &#x60;unknown&#x60; Unknown app type | [optional] [readonly] 
**ApplicationRoles** | [**SimpleListWrapperApplicationRole**](SimpleListWrapperApplicationRole.md) | The application roles the user is assigned to. | [optional] [readonly] 
**AvatarUrls** | [**AvatarUrlsBean**](AvatarUrlsBean.md) | The avatars of the user. | [optional] [readonly] 
**DisplayName** | **String** | The display name of the user. Depending on the user’s privacy setting, this may return an alternative value. | [optional] [readonly] 
**EmailAddress** | **String** | The email address of the user. Depending on the user’s privacy setting, this may be returned as null. | [optional] [readonly] 
**Expand** | **String** | Expand options that include additional user details in the response. | [optional] [readonly] 
**Groups** | [**SimpleListWrapperGroupName**](SimpleListWrapperGroupName.md) | The groups that the user belongs to. | [optional] [readonly] 
**Guest** | **Boolean** | Whether the user is a guest. | [optional] [readonly] 
**Key** | **String** | This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] 
**Locale** | **String** | The locale of the user. Depending on the user’s privacy setting, this may be returned as null. | [optional] [readonly] 
**Name** | **String** | This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] 
**Self** | **String** | The URL of the user. | [optional] [readonly] 
**TimeZone** | **String** | The time zone specified in the user&#39;s profile. If the user&#39;s time zone is not visible to the current user (due to user&#39;s profile setting), or if a time zone has not been set, the instance&#39;s default time zone will be returned. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$User = Initialize-JiraApiReferenceUser  -AccountId null `
 -AccountType null `
 -Active null `
 -AppType null `
 -ApplicationRoles null `
 -AvatarUrls null `
 -DisplayName null `
 -EmailAddress null `
 -Expand null `
 -Groups null `
 -Guest null `
 -Key null `
 -Locale null `
 -Name null `
 -Self null `
 -TimeZone null
```

- Convert the resource to JSON
```powershell
$User | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

