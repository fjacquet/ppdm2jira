# JiraApiReference.JiraApiReference\Api.IssuePanelsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-BulkPinUnpinProjectsAsync**](IssuePanelsApi.md#Invoke-BulkPinUnpinProjectsAsync) | **POST** /rest/api/3/forge/panel/action/bulk/async | Bulk pin or unpin issue panel to projects


<a id="Invoke-BulkPinUnpinProjectsAsync"></a>
# **Invoke-BulkPinUnpinProjectsAsync**
> ForgePanelProjectPinAsyncResponse Invoke-BulkPinUnpinProjectsAsync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForgePanelProjectPinRequest] <PSCustomObject><br>

Bulk pin or unpin issue panel to projects

Bulk pin or unpin an issue panel (added by a Forge app) to or from multiple projects.  The operation runs asynchronously. The response includes a task ID - use the [Get task](#api-rest-api-3-task-taskId-get) endpoint to check progress.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectPinAction = Initialize-ProjectPinAction -Action "PIN" -ProjectIdOrKey "MyProjectIdOrKey"
$ForgePanelProjectPinRequest = Initialize-ForgePanelProjectPinRequest -ModuleId "MyModuleId" -ProjectList $ProjectPinAction # ForgePanelProjectPinRequest | Forge module ID and the list of projects with pin or unpin action.

# Bulk pin or unpin issue panel to projects
try {
    $Result = Invoke-BulkPinUnpinProjectsAsync -ForgePanelProjectPinRequest $ForgePanelProjectPinRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-BulkPinUnpinProjectsAsync: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ForgePanelProjectPinRequest** | [**ForgePanelProjectPinRequest**](ForgePanelProjectPinRequest.md)| Forge module ID and the list of projects with pin or unpin action. | 

### Return type

[**ForgePanelProjectPinAsyncResponse**](ForgePanelProjectPinAsyncResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

