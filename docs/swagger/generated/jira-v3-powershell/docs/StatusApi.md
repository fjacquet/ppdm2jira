# JiraApiReference.JiraApiReference\Api.StatusApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Statuses**](StatusApi.md#New-Statuses) | **POST** /rest/api/3/statuses | Bulk create statuses
[**Invoke-DeleteStatusesById**](StatusApi.md#Invoke-DeleteStatusesById) | **DELETE** /rest/api/3/statuses | Bulk delete Statuses
[**Get-ProjectIssueTypeUsagesForStatus**](StatusApi.md#Get-ProjectIssueTypeUsagesForStatus) | **GET** /rest/api/3/statuses/{statusId}/project/{projectId}/issueTypeUsages | Get issue type usages by status and project
[**Get-ProjectUsagesForStatus**](StatusApi.md#Get-ProjectUsagesForStatus) | **GET** /rest/api/3/statuses/{statusId}/projectUsages | Get project usages by status
[**Get-StatusesById**](StatusApi.md#Get-StatusesById) | **GET** /rest/api/3/statuses | Bulk get statuses
[**Get-StatusesByName**](StatusApi.md#Get-StatusesByName) | **GET** /rest/api/3/statuses/byNames | Bulk get statuses by name
[**Get-WorkflowUsagesForStatus**](StatusApi.md#Get-WorkflowUsagesForStatus) | **GET** /rest/api/3/statuses/{statusId}/workflowUsages | Get workflow usages by status
[**Search-**](StatusApi.md#Search-) | **GET** /rest/api/3/statuses/search | Search statuses paginated
[**Update-Statuses**](StatusApi.md#Update-Statuses) | **PUT** /rest/api/3/statuses | Bulk update statuses


<a id="New-Statuses"></a>
# **New-Statuses**
> JiraStatus[] New-Statuses<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StatusCreateRequest] <PSCustomObject><br>

Bulk create statuses

Creates statuses for a global or project scope.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)  *  *Administer Jira* [project permission.](https://confluence.atlassian.com/x/yodKLg)

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectId = Initialize-ProjectId -Id "MyId"
$StatusScope = Initialize-StatusScope -Project $ProjectId -Type "PROJECT"

$StatusCreate = Initialize-StatusCreate -Description "MyDescription" -Name "MyName" -StatusCategory "TODO"
$StatusCreateRequest = Initialize-StatusCreateRequest -Scope $StatusScope -Statuses $StatusCreate # StatusCreateRequest | Details of the statuses being created and their scope.

# Bulk create statuses
try {
    $Result = New-Statuses -StatusCreateRequest $StatusCreateRequest
} catch {
    Write-Host ("Exception occurred when calling New-Statuses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StatusCreateRequest** | [**StatusCreateRequest**](StatusCreateRequest.md)| Details of the statuses being created and their scope. | 

### Return type

[**JiraStatus[]**](JiraStatus.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteStatusesById"></a>
# **Invoke-DeleteStatusesById**
> AnyType Invoke-DeleteStatusesById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String[]><br>

Bulk delete Statuses

Deletes statuses by ID.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)  *  *Administer Jira* [project permission.](https://confluence.atlassian.com/x/yodKLg)

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String[] | The list of status IDs. To include multiple IDs, provide an ampersand-separated list. For example, id=10000&id=10001.  Min items `1`, Max items `50`

# Bulk delete Statuses
try {
    $Result = Invoke-DeleteStatusesById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteStatusesById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String[]**](String.md)| The list of status IDs. To include multiple IDs, provide an ampersand-separated list. For example, id&#x3D;10000&amp;id&#x3D;10001.  Min items &#x60;1&#x60;, Max items &#x60;50&#x60; | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProjectIssueTypeUsagesForStatus"></a>
# **Get-ProjectIssueTypeUsagesForStatus**
> StatusProjectIssueTypeUsageDTO Get-ProjectIssueTypeUsagesForStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StatusId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NextPageToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get issue type usages by status and project

Returns a page of issue types in a project using a given status.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StatusId = "MyStatusId" # String | The statusId to fetch issue type usages for
$ProjectId = "MyProjectId" # String | The projectId to fetch issue type usages for
$NextPageToken = "MyNextPageToken" # String | The cursor for pagination (optional)
$MaxResults = 56 # Int32 | The maximum number of results to return. Must be an integer between 1 and 200. (optional) (default to 50)

# Get issue type usages by status and project
try {
    $Result = Get-ProjectIssueTypeUsagesForStatus -StatusId $StatusId -ProjectId $ProjectId -NextPageToken $NextPageToken -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-ProjectIssueTypeUsagesForStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StatusId** | **String**| The statusId to fetch issue type usages for | 
 **ProjectId** | **String**| The projectId to fetch issue type usages for | 
 **NextPageToken** | **String**| The cursor for pagination | [optional] 
 **MaxResults** | **Int32**| The maximum number of results to return. Must be an integer between 1 and 200. | [optional] [default to 50]

### Return type

[**StatusProjectIssueTypeUsageDTO**](StatusProjectIssueTypeUsageDTO.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProjectUsagesForStatus"></a>
# **Get-ProjectUsagesForStatus**
> StatusProjectUsageDTO Get-ProjectUsagesForStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StatusId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NextPageToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get project usages by status

Returns a page of projects using a given status.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StatusId = "MyStatusId" # String | The statusId to fetch project usages for
$NextPageToken = "MyNextPageToken" # String | The cursor for pagination (optional)
$MaxResults = 56 # Int32 | The maximum number of results to return. Must be an integer between 1 and 200. (optional) (default to 50)

# Get project usages by status
try {
    $Result = Get-ProjectUsagesForStatus -StatusId $StatusId -NextPageToken $NextPageToken -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-ProjectUsagesForStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StatusId** | **String**| The statusId to fetch project usages for | 
 **NextPageToken** | **String**| The cursor for pagination | [optional] 
 **MaxResults** | **Int32**| The maximum number of results to return. Must be an integer between 1 and 200. | [optional] [default to 50]

### Return type

[**StatusProjectUsageDTO**](StatusProjectUsageDTO.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-StatusesById"></a>
# **Get-StatusesById**
> JiraStatus[] Get-StatusesById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String[]><br>

Bulk get statuses

Returns a list of the statuses specified by one or more status IDs.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)  *  *Administer Jira* [project permission.](https://confluence.atlassian.com/x/yodKLg)

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Id = "MyId" # String[] | The list of status IDs. To include multiple IDs, provide an ampersand-separated list. For example, id=10000&id=10001.  Min items `1`, Max items `50`

# Bulk get statuses
try {
    $Result = Get-StatusesById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-StatusesById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String[]**](String.md)| The list of status IDs. To include multiple IDs, provide an ampersand-separated list. For example, id&#x3D;10000&amp;id&#x3D;10001.  Min items &#x60;1&#x60;, Max items &#x60;50&#x60; | 

### Return type

[**JiraStatus[]**](JiraStatus.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-StatusesByName"></a>
# **Get-StatusesByName**
> JiraStatus[] Get-StatusesByName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>

Bulk get statuses by name

Returns a list of the statuses specified by one or more status names.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)  *  *Administer Jira* [project permission.](https://confluence.atlassian.com/x/yodKLg)  *  *Browse projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String[] | The list of status names. To include multiple names, provide an ampersand-separated list. For example, name=nameXX&name=nameYY.  Min items `1`, Max items `50`
$ProjectId = "MyProjectId" # String | The project the status is part of or null for global statuses. (optional)

# Bulk get statuses by name
try {
    $Result = Get-StatusesByName -Name $Name -ProjectId $ProjectId
} catch {
    Write-Host ("Exception occurred when calling Get-StatusesByName: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | [**String[]**](String.md)| The list of status names. To include multiple names, provide an ampersand-separated list. For example, name&#x3D;nameXX&amp;name&#x3D;nameYY.  Min items &#x60;1&#x60;, Max items &#x60;50&#x60; | 
 **ProjectId** | **String**| The project the status is part of or null for global statuses. | [optional] 

### Return type

[**JiraStatus[]**](JiraStatus.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowUsagesForStatus"></a>
# **Get-WorkflowUsagesForStatus**
> StatusWorkflowUsageDTO Get-WorkflowUsagesForStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StatusId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NextPageToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get workflow usages by status

Returns a page of workflows using a given status.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StatusId = "MyStatusId" # String | The statusId to fetch workflow usages for
$NextPageToken = "MyNextPageToken" # String | The cursor for pagination (optional)
$MaxResults = 56 # Int32 | The maximum number of results to return. Must be an integer between 1 and 200. (optional) (default to 50)

# Get workflow usages by status
try {
    $Result = Get-WorkflowUsagesForStatus -StatusId $StatusId -NextPageToken $NextPageToken -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowUsagesForStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StatusId** | **String**| The statusId to fetch workflow usages for | 
 **NextPageToken** | **String**| The cursor for pagination | [optional] 
 **MaxResults** | **Int32**| The maximum number of results to return. Must be an integer between 1 and 200. | [optional] [default to 50]

### Return type

[**StatusWorkflowUsageDTO**](StatusWorkflowUsageDTO.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-"></a>
# **Search-**
> PageOfStatuses Search-<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchString] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StatusCategory] <String><br>

Search statuses paginated

Returns a [paginated](https://developer.atlassian.com/cloud/jira/platform/rest/v3/intro/#pagination) list of statuses that match a search on name or project.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)  *  *Administer Jira* [project permission.](https://confluence.atlassian.com/x/yodKLg)

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectId = "MyProjectId" # String | The project the status is part of or null for global statuses. (optional)
$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 200)
$SearchString = "MySearchString" # String | Term to match status names against or null to search for all statuses in the search scope. (optional)
$StatusCategory = "MyStatusCategory" # String | Category of the status to filter by. The supported values are: `TODO`, `IN_PROGRESS`, and `DONE`. (optional)

# Search statuses paginated
try {
    $Result = Search- -ProjectId $ProjectId -StartAt $StartAt -MaxResults $MaxResults -SearchString $SearchString -StatusCategory $StatusCategory
} catch {
    Write-Host ("Exception occurred when calling Search-: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **String**| The project the status is part of or null for global statuses. | [optional] 
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 200]
 **SearchString** | **String**| Term to match status names against or null to search for all statuses in the search scope. | [optional] 
 **StatusCategory** | **String**| Category of the status to filter by. The supported values are: &#x60;TODO&#x60;, &#x60;IN_PROGRESS&#x60;, and &#x60;DONE&#x60;. | [optional] 

### Return type

[**PageOfStatuses**](PageOfStatuses.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Statuses"></a>
# **Update-Statuses**
> AnyType Update-Statuses<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StatusUpdateRequest] <PSCustomObject><br>

Bulk update statuses

Updates statuses by ID.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)  *  *Administer Jira* [project permission.](https://confluence.atlassian.com/x/yodKLg)

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StatusUpdate = Initialize-StatusUpdate -Description "MyDescription" -Id "MyId" -Name "MyName" -StatusCategory "TODO"
$StatusUpdateRequest = Initialize-StatusUpdateRequest -Statuses $StatusUpdate # StatusUpdateRequest | The list of statuses that will be updated.

# Bulk update statuses
try {
    $Result = Update-Statuses -StatusUpdateRequest $StatusUpdateRequest
} catch {
    Write-Host ("Exception occurred when calling Update-Statuses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StatusUpdateRequest** | [**StatusUpdateRequest**](StatusUpdateRequest.md)| The list of statuses that will be updated. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

