# JiraApiReference.JiraApiReference\Api.TeamsInPlanApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-AtlassianTeam**](TeamsInPlanApi.md#Add-AtlassianTeam) | **POST** /rest/api/3/plans/plan/{planId}/team/atlassian | Add Atlassian team to plan
[**New-PlanOnlyTeam**](TeamsInPlanApi.md#New-PlanOnlyTeam) | **POST** /rest/api/3/plans/plan/{planId}/team/planonly | Create plan-only team
[**Invoke-DeletePlanOnlyTeam**](TeamsInPlanApi.md#Invoke-DeletePlanOnlyTeam) | **DELETE** /rest/api/3/plans/plan/{planId}/team/planonly/{planOnlyTeamId} | Delete plan-only team
[**Get-AtlassianTeam**](TeamsInPlanApi.md#Get-AtlassianTeam) | **GET** /rest/api/3/plans/plan/{planId}/team/atlassian/{atlassianTeamId} | Get Atlassian team in plan
[**Get-PlanOnlyTeam**](TeamsInPlanApi.md#Get-PlanOnlyTeam) | **GET** /rest/api/3/plans/plan/{planId}/team/planonly/{planOnlyTeamId} | Get plan-only team
[**Get-Teams**](TeamsInPlanApi.md#Get-Teams) | **GET** /rest/api/3/plans/plan/{planId}/team | Get teams in plan paginated
[**Remove-AtlassianTeam**](TeamsInPlanApi.md#Remove-AtlassianTeam) | **DELETE** /rest/api/3/plans/plan/{planId}/team/atlassian/{atlassianTeamId} | Remove Atlassian team from plan
[**Update-AtlassianTeam**](TeamsInPlanApi.md#Update-AtlassianTeam) | **PUT** /rest/api/3/plans/plan/{planId}/team/atlassian/{atlassianTeamId} | Update Atlassian team in plan
[**Update-PlanOnlyTeam**](TeamsInPlanApi.md#Update-PlanOnlyTeam) | **PUT** /rest/api/3/plans/plan/{planId}/team/planonly/{planOnlyTeamId} | Update plan-only team


<a id="Add-AtlassianTeam"></a>
# **Add-AtlassianTeam**
> AnyType Add-AtlassianTeam<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AddAtlassianTeamRequest] <PSCustomObject><br>

Add Atlassian team to plan

Adds an existing Atlassian team to a plan and configures their plannning settings.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$PlanId = 789 # Int64 | The ID of the plan.
$AddAtlassianTeamRequest = Initialize-AddAtlassianTeamRequest -Capacity 0 -Id "MyId" -IssueSourceId 0 -PlanningStyle "Scrum" -SprintLength 0 # AddAtlassianTeamRequest | 

# Add Atlassian team to plan
try {
    $Result = Add-AtlassianTeam -PlanId $PlanId -AddAtlassianTeamRequest $AddAtlassianTeamRequest
} catch {
    Write-Host ("Exception occurred when calling Add-AtlassianTeam: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlanId** | **Int64**| The ID of the plan. | 
 **AddAtlassianTeamRequest** | [**AddAtlassianTeamRequest**](AddAtlassianTeamRequest.md)|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-PlanOnlyTeam"></a>
# **New-PlanOnlyTeam**
> Int64 New-PlanOnlyTeam<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatePlanOnlyTeamRequest] <PSCustomObject><br>

Create plan-only team

Creates a plan-only team and configures their planning settings.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$PlanId = 789 # Int64 | The ID of the plan.
$CreatePlanOnlyTeamRequest = Initialize-CreatePlanOnlyTeamRequest -Capacity 0 -IssueSourceId 0 -MemberAccountIds "MyMemberAccountIds" -Name "MyName" -PlanningStyle "Scrum" -SprintLength 0 # CreatePlanOnlyTeamRequest | 

# Create plan-only team
try {
    $Result = New-PlanOnlyTeam -PlanId $PlanId -CreatePlanOnlyTeamRequest $CreatePlanOnlyTeamRequest
} catch {
    Write-Host ("Exception occurred when calling New-PlanOnlyTeam: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlanId** | **Int64**| The ID of the plan. | 
 **CreatePlanOnlyTeamRequest** | [**CreatePlanOnlyTeamRequest**](CreatePlanOnlyTeamRequest.md)|  | 

### Return type

**Int64**

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeletePlanOnlyTeam"></a>
# **Invoke-DeletePlanOnlyTeam**
> AnyType Invoke-DeletePlanOnlyTeam<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanOnlyTeamId] <Int64><br>

Delete plan-only team

Deletes a plan-only team and their planning settings.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$PlanId = 789 # Int64 | The ID of the plan.
$PlanOnlyTeamId = 789 # Int64 | The ID of the plan-only team.

# Delete plan-only team
try {
    $Result = Invoke-DeletePlanOnlyTeam -PlanId $PlanId -PlanOnlyTeamId $PlanOnlyTeamId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeletePlanOnlyTeam: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlanId** | **Int64**| The ID of the plan. | 
 **PlanOnlyTeamId** | **Int64**| The ID of the plan-only team. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AtlassianTeam"></a>
# **Get-AtlassianTeam**
> GetAtlassianTeamResponse Get-AtlassianTeam<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AtlassianTeamId] <String><br>

Get Atlassian team in plan

Returns planning settings for an Atlassian team in a plan.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$PlanId = 789 # Int64 | The ID of the plan.
$AtlassianTeamId = "MyAtlassianTeamId" # String | The ID of the Atlassian team.

# Get Atlassian team in plan
try {
    $Result = Get-AtlassianTeam -PlanId $PlanId -AtlassianTeamId $AtlassianTeamId
} catch {
    Write-Host ("Exception occurred when calling Get-AtlassianTeam: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlanId** | **Int64**| The ID of the plan. | 
 **AtlassianTeamId** | **String**| The ID of the Atlassian team. | 

### Return type

[**GetAtlassianTeamResponse**](GetAtlassianTeamResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PlanOnlyTeam"></a>
# **Get-PlanOnlyTeam**
> GetPlanOnlyTeamResponse Get-PlanOnlyTeam<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanOnlyTeamId] <Int64><br>

Get plan-only team

Returns planning settings for a plan-only team.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$PlanId = 789 # Int64 | The ID of the plan.
$PlanOnlyTeamId = 789 # Int64 | The ID of the plan-only team.

# Get plan-only team
try {
    $Result = Get-PlanOnlyTeam -PlanId $PlanId -PlanOnlyTeamId $PlanOnlyTeamId
} catch {
    Write-Host ("Exception occurred when calling Get-PlanOnlyTeam: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlanId** | **Int64**| The ID of the plan. | 
 **PlanOnlyTeamId** | **Int64**| The ID of the plan-only team. | 

### Return type

[**GetPlanOnlyTeamResponse**](GetPlanOnlyTeamResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Teams"></a>
# **Get-Teams**
> PageWithCursorGetTeamResponseForPage Get-Teams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Cursor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get teams in plan paginated

Returns a [paginated](#pagination) list of plan-only and Atlassian teams in a plan.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$PlanId = 789 # Int64 | The ID of the plan.
$Cursor = "MyCursor" # String | The cursor to start from. If not provided, the first page will be returned. (optional) (default to "")
$MaxResults = 56 # Int32 | The maximum number of plan teams to return per page. The maximum value is 50. The default value is 50. (optional) (default to 50)

# Get teams in plan paginated
try {
    $Result = Get-Teams -PlanId $PlanId -Cursor $Cursor -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-Teams: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlanId** | **Int64**| The ID of the plan. | 
 **Cursor** | **String**| The cursor to start from. If not provided, the first page will be returned. | [optional] [default to &quot;&quot;]
 **MaxResults** | **Int32**| The maximum number of plan teams to return per page. The maximum value is 50. The default value is 50. | [optional] [default to 50]

### Return type

[**PageWithCursorGetTeamResponseForPage**](PageWithCursorGetTeamResponseForPage.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-AtlassianTeam"></a>
# **Remove-AtlassianTeam**
> AnyType Remove-AtlassianTeam<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AtlassianTeamId] <String><br>

Remove Atlassian team from plan

Removes an Atlassian team from a plan and deletes their planning settings.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$PlanId = 789 # Int64 | The ID of the plan.
$AtlassianTeamId = "MyAtlassianTeamId" # String | The ID of the Atlassian team.

# Remove Atlassian team from plan
try {
    $Result = Remove-AtlassianTeam -PlanId $PlanId -AtlassianTeamId $AtlassianTeamId
} catch {
    Write-Host ("Exception occurred when calling Remove-AtlassianTeam: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlanId** | **Int64**| The ID of the plan. | 
 **AtlassianTeamId** | **String**| The ID of the Atlassian team. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AtlassianTeam"></a>
# **Update-AtlassianTeam**
> AnyType Update-AtlassianTeam<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AtlassianTeamId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <SystemCollectionsHashtable><br>

Update Atlassian team in plan

Updates any of the following planning settings of an Atlassian team in a plan using [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902).   *  planningStyle  *  issueSourceId  *  sprintLength  *  capacity  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *Note that ""add"" operations do not respect array indexes in target locations. Call the ""Get Atlassian team in plan"" endpoint to find out the order of array elements.*

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$PlanId = 789 # Int64 | The ID of the plan.
$AtlassianTeamId = "MyAtlassianTeamId" # String | The ID of the Atlassian team.
$Body = @{ key_example = ... } # SystemCollectionsHashtable | 

# Update Atlassian team in plan
try {
    $Result = Update-AtlassianTeam -PlanId $PlanId -AtlassianTeamId $AtlassianTeamId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-AtlassianTeam: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlanId** | **Int64**| The ID of the plan. | 
 **AtlassianTeamId** | **String**| The ID of the Atlassian team. | 
 **Body** | **SystemCollectionsHashtable**|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-PlanOnlyTeam"></a>
# **Update-PlanOnlyTeam**
> AnyType Update-PlanOnlyTeam<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanOnlyTeamId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <SystemCollectionsHashtable><br>

Update plan-only team

Updates any of the following planning settings of a plan-only team using [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902).   *  name  *  planningStyle  *  issueSourceId  *  sprintLength  *  capacity  *  memberAccountIds  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *Note that ""add"" operations do not respect array indexes in target locations. Call the ""Get plan-only team"" endpoint to find out the order of array elements.*

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$PlanId = 789 # Int64 | The ID of the plan.
$PlanOnlyTeamId = 789 # Int64 | The ID of the plan-only team.
$Body = @{ key_example = ... } # SystemCollectionsHashtable | 

# Update plan-only team
try {
    $Result = Update-PlanOnlyTeam -PlanId $PlanId -PlanOnlyTeamId $PlanOnlyTeamId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-PlanOnlyTeam: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlanId** | **Int64**| The ID of the plan. | 
 **PlanOnlyTeamId** | **Int64**| The ID of the plan-only team. | 
 **Body** | **SystemCollectionsHashtable**|  | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

