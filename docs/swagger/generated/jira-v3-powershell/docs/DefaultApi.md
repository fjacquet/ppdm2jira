# JiraApiReference.JiraApiReference\Api.DefaultApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-WorklogsByIssueIdAndWorklogId**](DefaultApi.md#Get-WorklogsByIssueIdAndWorklogId) | **POST** /rest/internal/api/latest/worklog/bulk | Get worklogs by issue id and worklog id


<a id="Get-WorklogsByIssueIdAndWorklogId"></a>
# **Get-WorklogsByIssueIdAndWorklogId**
> BulkWorklogKeyResponseBean Get-WorklogsByIssueIdAndWorklogId<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BulkWorklogKeyRequestBean] <PSCustomObject><br>

Get worklogs by issue id and worklog id

Returns worklog details for a list of issue ID and worklog ID pairs.  This is an internal API for bulk fetching worklogs by their issue and worklog IDs. Worklogs that don't exist will be filtered out from the response.  The returned list of worklogs is limited to 1000 items.  **[Permissions](#permissions) required:** This is an internal service-to-service API that requires ASAP authentication. No user permission checks are performed as this bypasses normal user context.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorklogCompositeKey = Initialize-WorklogCompositeKey -IssueId 0 -WorklogId 0
$BulkWorklogKeyRequestBean = Initialize-BulkWorklogKeyRequestBean -Requests $WorklogCompositeKey # BulkWorklogKeyRequestBean | A JSON object containing a list of issue ID and worklog ID pairs.

# Get worklogs by issue id and worklog id
try {
    $Result = Get-WorklogsByIssueIdAndWorklogId -BulkWorklogKeyRequestBean $BulkWorklogKeyRequestBean
} catch {
    Write-Host ("Exception occurred when calling Get-WorklogsByIssueIdAndWorklogId: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BulkWorklogKeyRequestBean** | [**BulkWorklogKeyRequestBean**](BulkWorklogKeyRequestBean.md)| A JSON object containing a list of issue ID and worklog ID pairs. | 

### Return type

[**BulkWorklogKeyResponseBean**](BulkWorklogKeyResponseBean.md) (PSCustomObject)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

