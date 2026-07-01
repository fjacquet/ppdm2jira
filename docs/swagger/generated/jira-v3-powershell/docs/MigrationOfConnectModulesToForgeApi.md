# JiraApiReference.JiraApiReference\Api.MigrationOfConnectModulesToForgeApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Connect-ToForgeMigrationFetchTaskResourceFetchMigrationTaskGet**](MigrationOfConnectModulesToForgeApi.md#Connect-ToForgeMigrationFetchTaskResourceFetchMigrationTaskGet) | **GET** /rest/atlassian-connect/1/migration/{connectKey}/{jiraIssueFieldsKey}/task | Get Connect issue field migration task
[**Connect-ToForgeMigrationTaskSubmissionResourceSubmitTaskPost**](MigrationOfConnectModulesToForgeApi.md#Connect-ToForgeMigrationTaskSubmissionResourceSubmitTaskPost) | **POST** /rest/atlassian-connect/1/migration/{connectKey}/{jiraIssueFieldsKey}/task | Submit Connect issue field migration task


<a id="Connect-ToForgeMigrationFetchTaskResourceFetchMigrationTaskGet"></a>
# **Connect-ToForgeMigrationFetchTaskResourceFetchMigrationTaskGet**
> TaskProgress Connect-ToForgeMigrationFetchTaskResourceFetchMigrationTaskGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JiraIssueFieldsKey] <String><br>

Get Connect issue field migration task

Returns the details of a Connect issue field's migration to Forge.  When migrating a Connect app to Forge, [Issue Field](https://developer.atlassian.com/cloud/jira/software/modules/issue-field/) modules must be converted to [Custom field](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field/). When the Forge version of the app is installed, Forge creates a [background task](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-tasks/#api-group-tasks) to track the migration of field data across. This endpoint returns the status and other details of that background task.  For more details, see [Jira modules > Jira Custom Fields](https://developer.atlassian.com/platform/adopting-forge-from-connect/migrate-jira-custom-fields/).  **[Permissions](#permissions) required:** Only Connect and Forge apps can make this request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ConnectKey = "com.example.app" # String | The key of the Connect app that contains the Jira issue field being migrated.
$JiraIssueFieldsKey = "my-custom-field" # String | The module key of the Connect issue field being migrated.

# Get Connect issue field migration task
try {
    $Result = Connect-ToForgeMigrationFetchTaskResourceFetchMigrationTaskGet -ConnectKey $ConnectKey -JiraIssueFieldsKey $JiraIssueFieldsKey
} catch {
    Write-Host ("Exception occurred when calling Connect-ToForgeMigrationFetchTaskResourceFetchMigrationTaskGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectKey** | **String**| The key of the Connect app that contains the Jira issue field being migrated. | 
 **JiraIssueFieldsKey** | **String**| The module key of the Connect issue field being migrated. | 

### Return type

[**TaskProgress**](TaskProgress.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Connect-ToForgeMigrationTaskSubmissionResourceSubmitTaskPost"></a>
# **Connect-ToForgeMigrationTaskSubmissionResourceSubmitTaskPost**
> void Connect-ToForgeMigrationTaskSubmissionResourceSubmitTaskPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectKey] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JiraIssueFieldsKey] <String><br>

Submit Connect issue field migration task

Submits a request to trigger migration of connect issue field to its Forge custom field counterpart.  When migrating a Connect app to Forge, [Issue Field](https://developer.atlassian.com/cloud/jira/software/modules/issue-field/) modules must be converted to [Custom field](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field/) modules. This endpoint triggers the background migration of field data. Use the GET endpoint to retrieve the status and progress of the task.  For more details, see [Jira modules > Jira Custom Fields](https://developer.atlassian.com/platform/adopting-forge-from-connect/migrate-jira-custom-fields/).  **[Permissions](#permissions) required:** Only Connect and Forge apps can make this request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ConnectKey = "com.example.app" # String | The key of the Connect app that contains the Jira issue field being migrated.
$JiraIssueFieldsKey = "my-custom-field" # String | The module key of the Connect issue field being migrated.

# Submit Connect issue field migration task
try {
    $Result = Connect-ToForgeMigrationTaskSubmissionResourceSubmitTaskPost -ConnectKey $ConnectKey -JiraIssueFieldsKey $JiraIssueFieldsKey
} catch {
    Write-Host ("Exception occurred when calling Connect-ToForgeMigrationTaskSubmissionResourceSubmitTaskPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectKey** | **String**| The key of the Connect app that contains the Jira issue field being migrated. | 
 **JiraIssueFieldsKey** | **String**| The module key of the Connect issue field being migrated. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

