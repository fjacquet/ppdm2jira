# JiraApiReference.JiraApiReference\Api.PlansApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ArchivePlan**](PlansApi.md#Invoke-ArchivePlan) | **PUT** /rest/api/3/plans/plan/{planId}/archive | Archive plan
[**New-Plan**](PlansApi.md#New-Plan) | **POST** /rest/api/3/plans/plan | Create plan
[**Copy-Plan**](PlansApi.md#Copy-Plan) | **POST** /rest/api/3/plans/plan/{planId}/duplicate | Duplicate plan
[**Get-Plan**](PlansApi.md#Get-Plan) | **GET** /rest/api/3/plans/plan/{planId} | Get plan
[**Get-Plans**](PlansApi.md#Get-Plans) | **GET** /rest/api/3/plans/plan | Get plans paginated
[**Invoke-TrashPlan**](PlansApi.md#Invoke-TrashPlan) | **PUT** /rest/api/3/plans/plan/{planId}/trash | Trash plan
[**Update-Plan**](PlansApi.md#Update-Plan) | **PUT** /rest/api/3/plans/plan/{planId} | Update plan


<a id="Invoke-ArchivePlan"></a>
# **Invoke-ArchivePlan**
> AnyType Invoke-ArchivePlan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanId] <Int64><br>

Archive plan

Archives a plan.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

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

# Archive plan
try {
    $Result = Invoke-ArchivePlan -PlanId $PlanId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ArchivePlan: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlanId** | **Int64**| The ID of the plan. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-Plan"></a>
# **New-Plan**
> Int64 New-Plan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatePlanRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseGroupId] <System.Nullable[Boolean]><br>

Create plan

Creates a plan.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$CreateCrossProjectReleaseRequest = Initialize-CreateCrossProjectReleaseRequest -Name "MyName" -ReleaseIds 0
$CreateCustomFieldRequest = Initialize-CreateCustomFieldRequest -CustomFieldId 0 -VarFilter $false
$CreateExclusionRulesRequest = Initialize-CreateExclusionRulesRequest -IssueIds 0 -IssueTypeIds 0 -NumberOfDaysToShowCompletedIssues 0 -ReleaseIds 0 -WorkStatusCategoryIds 0 -WorkStatusIds 0
$CreateIssueSourceRequest = Initialize-CreateIssueSourceRequest -Type "Board" -Value 0

$CreatePermissionHolderRequest = Initialize-CreatePermissionHolderRequest -Type "Group" -Value "MyValue"
$CreatePermissionRequest = Initialize-CreatePermissionRequest -Holder $CreatePermissionHolderRequest -Type "View"

$CreateDateFieldRequest = Initialize-CreateDateFieldRequest -DateCustomFieldId 0 -Type "DueDate"
$CreateSchedulingRequest = Initialize-CreateSchedulingRequest -Dependencies "Sequential" -EndDate $CreateDateFieldRequest -Estimation "StoryPoints" -InferredDates "None" -StartDate $CreateDateFieldRequest

$CreatePlanRequest = Initialize-CreatePlanRequest -CrossProjectReleases $CreateCrossProjectReleaseRequest -CustomFields $CreateCustomFieldRequest -ExclusionRules $CreateExclusionRulesRequest -IssueSources $CreateIssueSourceRequest -LeadAccountId "MyLeadAccountId" -Name "MyName" -Permissions $CreatePermissionRequest -Scheduling $CreateSchedulingRequest # CreatePlanRequest | 
$UseGroupId = $true # Boolean | Whether to accept group IDs instead of group names. Group names are deprecated. (optional) (default to $false)

# Create plan
try {
    $Result = New-Plan -CreatePlanRequest $CreatePlanRequest -UseGroupId $UseGroupId
} catch {
    Write-Host ("Exception occurred when calling New-Plan: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreatePlanRequest** | [**CreatePlanRequest**](CreatePlanRequest.md)|  | 
 **UseGroupId** | **Boolean**| Whether to accept group IDs instead of group names. Group names are deprecated. | [optional] [default to $false]

### Return type

**Int64**

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Copy-Plan"></a>
# **Copy-Plan**
> Int64 Copy-Plan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DuplicatePlanRequest] <PSCustomObject><br>

Duplicate plan

Duplicates a plan.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

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
$DuplicatePlanRequest = Initialize-DuplicatePlanRequest -Name "MyName" # DuplicatePlanRequest | 

# Duplicate plan
try {
    $Result = Copy-Plan -PlanId $PlanId -DuplicatePlanRequest $DuplicatePlanRequest
} catch {
    Write-Host ("Exception occurred when calling Copy-Plan: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlanId** | **Int64**| The ID of the plan. | 
 **DuplicatePlanRequest** | [**DuplicatePlanRequest**](DuplicatePlanRequest.md)|  | 

### Return type

**Int64**

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Plan"></a>
# **Get-Plan**
> GetPlanResponse Get-Plan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseGroupId] <System.Nullable[Boolean]><br>

Get plan

Returns a plan.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

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
$UseGroupId = $true # Boolean | Whether to return group IDs instead of group names. Group names are deprecated. (optional) (default to $false)

# Get plan
try {
    $Result = Get-Plan -PlanId $PlanId -UseGroupId $UseGroupId
} catch {
    Write-Host ("Exception occurred when calling Get-Plan: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlanId** | **Int64**| The ID of the plan. | 
 **UseGroupId** | **Boolean**| Whether to return group IDs instead of group names. Group names are deprecated. | [optional] [default to $false]

### Return type

[**GetPlanResponse**](GetPlanResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Plans"></a>
# **Get-Plans**
> PageWithCursorGetPlanResponseForPage Get-Plans<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTrashed] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeArchived] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Cursor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get plans paginated

Returns a [paginated](#pagination) list of plans.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$IncludeTrashed = $true # Boolean | Whether to include trashed plans in the results. (optional) (default to $false)
$IncludeArchived = $true # Boolean | Whether to include archived plans in the results. (optional) (default to $false)
$Cursor = "MyCursor" # String | The cursor to start from. If not provided, the first page will be returned. (optional) (default to "")
$MaxResults = 56 # Int32 | The maximum number of plans to return per page. The maximum value is 50. The default value is 50. (optional) (default to 50)

# Get plans paginated
try {
    $Result = Get-Plans -IncludeTrashed $IncludeTrashed -IncludeArchived $IncludeArchived -Cursor $Cursor -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-Plans: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IncludeTrashed** | **Boolean**| Whether to include trashed plans in the results. | [optional] [default to $false]
 **IncludeArchived** | **Boolean**| Whether to include archived plans in the results. | [optional] [default to $false]
 **Cursor** | **String**| The cursor to start from. If not provided, the first page will be returned. | [optional] [default to &quot;&quot;]
 **MaxResults** | **Int32**| The maximum number of plans to return per page. The maximum value is 50. The default value is 50. | [optional] [default to 50]

### Return type

[**PageWithCursorGetPlanResponseForPage**](PageWithCursorGetPlanResponseForPage.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-TrashPlan"></a>
# **Invoke-TrashPlan**
> AnyType Invoke-TrashPlan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanId] <Int64><br>

Trash plan

Moves a plan to trash.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

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

# Trash plan
try {
    $Result = Invoke-TrashPlan -PlanId $PlanId
} catch {
    Write-Host ("Exception occurred when calling Invoke-TrashPlan: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlanId** | **Int64**| The ID of the plan. | 

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Plan"></a>
# **Update-Plan**
> AnyType Update-Plan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlanId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <SystemCollectionsHashtable><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UseGroupId] <System.Nullable[Boolean]><br>

Update plan

Updates any of the following details of a plan using [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902).   *  name  *  leadAccountId  *  scheduling           *  estimation with StoryPoints, Days or Hours as possible values      *  startDate                   *  type with DueDate, TargetStartDate, TargetEndDate or DateCustomField as possible values          *  dateCustomFieldId      *  endDate                   *  type with DueDate, TargetStartDate, TargetEndDate or DateCustomField as possible values          *  dateCustomFieldId      *  inferredDates with None, SprintDates or ReleaseDates as possible values      *  dependencies with Sequential or Concurrent as possible values  *  issueSources           *  type with Board, Project or Filter as possible values      *  value  *  exclusionRules           *  numberOfDaysToShowCompletedIssues      *  issueIds      *  workStatusIds      *  workStatusCategoryIds      *  issueTypeIds      *  releaseIds  *  crossProjectReleases           *  name      *  releaseIds  *  customFields           *  customFieldId      *  filter  *  permissions           *  type with View or Edit as possible values      *  holder                   *  type with Group or AccountId as possible values          *  value  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *Note that ""add"" operations do not respect array indexes in target locations. Call the ""Get plan"" endpoint to find out the order of array elements.*

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
$Body = @{ key_example = ... } # SystemCollectionsHashtable | 
$UseGroupId = $true # Boolean | Whether to accept group IDs instead of group names. Group names are deprecated. (optional) (default to $false)

# Update plan
try {
    $Result = Update-Plan -PlanId $PlanId -Body $Body -UseGroupId $UseGroupId
} catch {
    Write-Host ("Exception occurred when calling Update-Plan: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlanId** | **Int64**| The ID of the plan. | 
 **Body** | **SystemCollectionsHashtable**|  | 
 **UseGroupId** | **Boolean**| Whether to accept group IDs instead of group names. Group names are deprecated. | [optional] [default to $false]

### Return type

[**AnyType**](AnyType.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

