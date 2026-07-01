# JiraApiReference.JiraApiReference\Api.WorkflowsApi

All URIs are relative to *https://your-domain.atlassian.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Workflows**](WorkflowsApi.md#New-Workflows) | **POST** /rest/api/3/workflows/create | Bulk create workflows
[**Invoke-DeleteInactiveWorkflow**](WorkflowsApi.md#Invoke-DeleteInactiveWorkflow) | **DELETE** /rest/api/3/workflow/{entityId} | Delete inactive workflow
[**Get-DefaultEditor**](WorkflowsApi.md#Get-DefaultEditor) | **GET** /rest/api/3/workflows/defaultEditor | Get the user&#39;s default workflow editor
[**Get-ProjectUsagesForWorkflow**](WorkflowsApi.md#Get-ProjectUsagesForWorkflow) | **GET** /rest/api/3/workflow/{workflowId}/projectUsages | Get projects using a given workflow
[**Get-WorkflowProjectIssueTypeUsages**](WorkflowsApi.md#Get-WorkflowProjectIssueTypeUsages) | **GET** /rest/api/3/workflow/{workflowId}/project/{projectId}/issueTypeUsages | Get issue types in a project that are using a given workflow
[**Get-WorkflowSchemeUsagesForWorkflow**](WorkflowsApi.md#Get-WorkflowSchemeUsagesForWorkflow) | **GET** /rest/api/3/workflow/{workflowId}/workflowSchemes | Get workflow schemes which are using a given workflow
[**Get-WorkflowsPaginated**](WorkflowsApi.md#Get-WorkflowsPaginated) | **GET** /rest/api/3/workflow/search | Get workflows paginated
[**Invoke-ListWorkflowHistory**](WorkflowsApi.md#Invoke-ListWorkflowHistory) | **POST** /rest/api/3/workflow/history/list | List workflow history entries
[**Read-WorkflowFromHistory**](WorkflowsApi.md#Read-WorkflowFromHistory) | **POST** /rest/api/3/workflow/history | Read workflow version from history
[**Read-WorkflowPreviews**](WorkflowsApi.md#Read-WorkflowPreviews) | **POST** /rest/api/3/workflows/preview | Preview workflow
[**Read-Workflows**](WorkflowsApi.md#Read-Workflows) | **POST** /rest/api/3/workflows | Bulk get workflows
[**Search-Workflows**](WorkflowsApi.md#Search-Workflows) | **GET** /rest/api/3/workflows/search | Search workflows
[**Update-Workflows**](WorkflowsApi.md#Update-Workflows) | **POST** /rest/api/3/workflows/update | Bulk update workflows
[**Confirm-CreateWorkflows**](WorkflowsApi.md#Confirm-CreateWorkflows) | **POST** /rest/api/3/workflows/create/validation | Validate create workflows
[**Confirm-UpdateWorkflows**](WorkflowsApi.md#Confirm-UpdateWorkflows) | **POST** /rest/api/3/workflows/update/validation | Validate update workflows
[**Invoke-WorkflowCapabilities**](WorkflowsApi.md#Invoke-WorkflowCapabilities) | **GET** /rest/api/3/workflows/capabilities | Get available workflow capabilities


<a id="New-Workflows"></a>
# **New-Workflows**
> WorkflowCreateResponse New-Workflows<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowCreateRequest] <PSCustomObject><br>

Bulk create workflows

Create workflows and related statuses.  **[Permissions](#permissions) required:**   *  *Administer Jira* project permission to create all, including global-scoped, workflows  *  *Administer projects* project permissions to create project-scoped workflows

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
$WorkflowScope = Initialize-WorkflowScope -Project $ProjectId -Type "PROJECT"

$WorkflowStatusUpdate = Initialize-WorkflowStatusUpdate -Description "MyDescription" -Id "MyId" -Name "MyName" -StatusCategory "TODO" -StatusReference "MyStatusReference"

$WorkflowLayout = Initialize-WorkflowLayout -X 0 -Y 0

"assignee"$ApprovalConfiguration = Initialize-ApprovalConfiguration -Active "true" -ConditionType "number" -ConditionValue "MyConditionValue" -Exclude "assignee" -FieldId "MyFieldId" -PrePopulatedFieldId "MyPrePopulatedFieldId" -TransitionApproved "MyTransitionApproved" -TransitionRejected "MyTransitionRejected"
$StatusLayoutUpdate = Initialize-StatusLayoutUpdate -ApprovalConfiguration $ApprovalConfiguration -Layout $WorkflowLayout -Properties @{ key_example = "MyInner" } -StatusReference "MyStatusReference"

$WorkflowRuleConfiguration = Initialize-WorkflowRuleConfiguration -Id "MyId" -Parameters @{ key_example = "MyInner" } -RuleKey "MyRuleKey"

$ConditionGroupUpdate = Initialize-ConditionGroupUpdate -ConditionGroups $ConditionGroupUpdate -Conditions $WorkflowRuleConfiguration -Operation "ANY"

$WorkflowTransitionLinks = Initialize-WorkflowTransitionLinks -FromPort 0 -FromStatusReference "MyFromStatusReference" -ToPort 0
$WorkflowTrigger = Initialize-WorkflowTrigger -Id "MyId" -Parameters @{ key_example = "MyInner" } -RuleKey "MyRuleKey"
$TransitionUpdateDTO = Initialize-TransitionUpdateDTO -Actions $WorkflowRuleConfiguration -Conditions $ConditionGroupUpdate -CustomIssueEventId "MyCustomIssueEventId" -Description "MyDescription" -Id "MyId" -Links $WorkflowTransitionLinks -Name "MyName" -Properties @{ key_example = "MyInner" } -ToStatusReference "MyToStatusReference" -TransitionScreen $WorkflowRuleConfiguration -Triggers $WorkflowTrigger -Type "INITIAL" -Validators $WorkflowRuleConfiguration

$WorkflowCreate = Initialize-WorkflowCreate -Description "MyDescription" -LoopedTransitionContainerLayout $WorkflowLayout -Name "MyName" -StartPointLayout $WorkflowLayout -Statuses $StatusLayoutUpdate -Transitions $TransitionUpdateDTO

$WorkflowCreateRequest = Initialize-WorkflowCreateRequest -Scope $WorkflowScope -Statuses $WorkflowStatusUpdate -Workflows $WorkflowCreate # WorkflowCreateRequest | 

# Bulk create workflows
try {
    $Result = New-Workflows -WorkflowCreateRequest $WorkflowCreateRequest
} catch {
    Write-Host ("Exception occurred when calling New-Workflows: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowCreateRequest** | [**WorkflowCreateRequest**](WorkflowCreateRequest.md)|  | 

### Return type

[**WorkflowCreateResponse**](WorkflowCreateResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteInactiveWorkflow"></a>
# **Invoke-DeleteInactiveWorkflow**
> void Invoke-DeleteInactiveWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EntityId] <String><br>

Delete inactive workflow

Deletes a workflow.  The workflow cannot be deleted if it is:   *  an active workflow.  *  a system workflow.  *  associated with any workflow scheme.  *  associated with any draft workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$EntityId = "MyEntityId" # String | The entity ID of the workflow.

# Delete inactive workflow
try {
    $Result = Invoke-DeleteInactiveWorkflow -EntityId $EntityId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteInactiveWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EntityId** | **String**| The entity ID of the workflow. | 

### Return type

void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DefaultEditor"></a>
# **Get-DefaultEditor**
> DefaultWorkflowEditorResponse Get-DefaultEditor<br>

Get the user's default workflow editor

Get the user's default workflow editor. This can be either the new editor or the legacy editor.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


# Get the user's default workflow editor
try {
    $Result = Get-DefaultEditor
} catch {
    Write-Host ("Exception occurred when calling Get-DefaultEditor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DefaultWorkflowEditorResponse**](DefaultWorkflowEditorResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProjectUsagesForWorkflow"></a>
# **Get-ProjectUsagesForWorkflow**
> WorkflowProjectUsageDTO Get-ProjectUsagesForWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NextPageToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get projects using a given workflow

Returns a page of projects using a given workflow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorkflowId = "MyWorkflowId" # String | The workflow ID
$NextPageToken = "MyNextPageToken" # String | The cursor for pagination (optional)
$MaxResults = 56 # Int32 | The maximum number of results to return. Must be an integer between 1 and 200. (optional) (default to 50)

# Get projects using a given workflow
try {
    $Result = Get-ProjectUsagesForWorkflow -WorkflowId $WorkflowId -NextPageToken $NextPageToken -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-ProjectUsagesForWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowId** | **String**| The workflow ID | 
 **NextPageToken** | **String**| The cursor for pagination | [optional] 
 **MaxResults** | **Int32**| The maximum number of results to return. Must be an integer between 1 and 200. | [optional] [default to 50]

### Return type

[**WorkflowProjectUsageDTO**](WorkflowProjectUsageDTO.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowProjectIssueTypeUsages"></a>
# **Get-WorkflowProjectIssueTypeUsages**
> WorkflowProjectIssueTypeUsageDTO Get-WorkflowProjectIssueTypeUsages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NextPageToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get issue types in a project that are using a given workflow

Returns a page of issue types using a given workflow within a project.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorkflowId = "MyWorkflowId" # String | The workflow ID
$ProjectId = 789 # Int64 | The project ID
$NextPageToken = "MyNextPageToken" # String | The cursor for pagination (optional)
$MaxResults = 56 # Int32 | The maximum number of results to return. Must be an integer between 1 and 200. (optional) (default to 50)

# Get issue types in a project that are using a given workflow
try {
    $Result = Get-WorkflowProjectIssueTypeUsages -WorkflowId $WorkflowId -ProjectId $ProjectId -NextPageToken $NextPageToken -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowProjectIssueTypeUsages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowId** | **String**| The workflow ID | 
 **ProjectId** | **Int64**| The project ID | 
 **NextPageToken** | **String**| The cursor for pagination | [optional] 
 **MaxResults** | **Int32**| The maximum number of results to return. Must be an integer between 1 and 200. | [optional] [default to 50]

### Return type

[**WorkflowProjectIssueTypeUsageDTO**](WorkflowProjectIssueTypeUsageDTO.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowSchemeUsagesForWorkflow"></a>
# **Get-WorkflowSchemeUsagesForWorkflow**
> WorkflowSchemeUsageDTO Get-WorkflowSchemeUsagesForWorkflow<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NextPageToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>

Get workflow schemes which are using a given workflow

Returns a page of workflow schemes using a given workflow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorkflowId = "MyWorkflowId" # String | The workflow ID
$NextPageToken = "MyNextPageToken" # String | The cursor for pagination (optional)
$MaxResults = 56 # Int32 | The maximum number of results to return. Must be an integer between 1 and 200. (optional) (default to 50)

# Get workflow schemes which are using a given workflow
try {
    $Result = Get-WorkflowSchemeUsagesForWorkflow -WorkflowId $WorkflowId -NextPageToken $NextPageToken -MaxResults $MaxResults
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowSchemeUsagesForWorkflow: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowId** | **String**| The workflow ID | 
 **NextPageToken** | **String**| The cursor for pagination | [optional] 
 **MaxResults** | **Int32**| The maximum number of results to return. Must be an integer between 1 and 200. | [optional] [default to 50]

### Return type

[**WorkflowSchemeUsageDTO**](WorkflowSchemeUsageDTO.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-WorkflowsPaginated"></a>
# **Get-WorkflowsPaginated**
> PageBeanWorkflow Get-WorkflowsPaginated<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowName] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryString] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IsActive] <System.Nullable[Boolean]><br>

Get workflows paginated

This will be removed on [June 1, 2026](https://developer.atlassian.com/cloud/jira/platform/changelog/#CHANGE-2569); use [Search workflows](#api-rest-api-3-workflows-search-get) instead.  Returns a [paginated](#pagination) list of published classic workflows. When workflow names are specified, details of those workflows are returned. Otherwise, all published classic workflows are returned.  This operation does not return next-gen workflows.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional) (default to 0)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional) (default to 50)
$WorkflowName = "MyWorkflowName" # String[] | The name of a workflow to return. To include multiple workflows, provide an ampersand-separated list. For example, `workflowName=name1&workflowName=name2`. (optional)
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  `transitions` For each workflow, returns information about the transitions inside the workflow.  *  `transitions.rules` For each workflow transition, returns information about its rules. Transitions are included automatically if this expand is requested.  *  `transitions.properties` For each workflow transition, returns information about its properties. Transitions are included automatically if this expand is requested.  *  `statuses` For each workflow, returns information about the statuses inside the workflow.  *  `statuses.properties` For each workflow status, returns information about its properties. Statuses are included automatically if this expand is requested.  *  `default` For each workflow, returns information about whether this is the default workflow.  *  `schemes` For each workflow, returns information about the workflow schemes the workflow is assigned to.  *  `projects` For each workflow, returns information about the projects the workflow is assigned to, through workflow schemes.  *  `hasDraftWorkflow` For each workflow, returns information about whether the workflow has a draft version.  *  `operations` For each workflow, returns information about the actions that can be undertaken on the workflow. (optional)
$QueryString = "MyQueryString" # String | String used to perform a case-insensitive partial match with workflow name. (optional)
$OrderBy = "name" # String | [Order](#ordering) the results by a field:   *  `name` Sorts by workflow name.  *  `created` Sorts by create time.  *  `updated` Sorts by update time. (optional)
$IsActive = $true # Boolean | Filters active and inactive workflows. (optional)

# Get workflows paginated
try {
    $Result = Get-WorkflowsPaginated -StartAt $StartAt -MaxResults $MaxResults -WorkflowName $WorkflowName -Expand $Expand -QueryString $QueryString -OrderBy $OrderBy -IsActive $IsActive
} catch {
    Write-Host ("Exception occurred when calling Get-WorkflowsPaginated: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0]
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] [default to 50]
 **WorkflowName** | [**String[]**](String.md)| The name of a workflow to return. To include multiple workflows, provide an ampersand-separated list. For example, &#x60;workflowName&#x3D;name1&amp;workflowName&#x3D;name2&#x60;. | [optional] 
 **Expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;transitions&#x60; For each workflow, returns information about the transitions inside the workflow.  *  &#x60;transitions.rules&#x60; For each workflow transition, returns information about its rules. Transitions are included automatically if this expand is requested.  *  &#x60;transitions.properties&#x60; For each workflow transition, returns information about its properties. Transitions are included automatically if this expand is requested.  *  &#x60;statuses&#x60; For each workflow, returns information about the statuses inside the workflow.  *  &#x60;statuses.properties&#x60; For each workflow status, returns information about its properties. Statuses are included automatically if this expand is requested.  *  &#x60;default&#x60; For each workflow, returns information about whether this is the default workflow.  *  &#x60;schemes&#x60; For each workflow, returns information about the workflow schemes the workflow is assigned to.  *  &#x60;projects&#x60; For each workflow, returns information about the projects the workflow is assigned to, through workflow schemes.  *  &#x60;hasDraftWorkflow&#x60; For each workflow, returns information about whether the workflow has a draft version.  *  &#x60;operations&#x60; For each workflow, returns information about the actions that can be undertaken on the workflow. | [optional] 
 **QueryString** | **String**| String used to perform a case-insensitive partial match with workflow name. | [optional] 
 **OrderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;name&#x60; Sorts by workflow name.  *  &#x60;created&#x60; Sorts by create time.  *  &#x60;updated&#x60; Sorts by update time. | [optional] 
 **IsActive** | **Boolean**| Filters active and inactive workflows. | [optional] 

### Return type

[**PageBeanWorkflow**](PageBeanWorkflow.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ListWorkflowHistory"></a>
# **Invoke-ListWorkflowHistory**
> WorkflowHistoryListResponseDTO Invoke-ListWorkflowHistory<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowHistoryListRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

List workflow history entries

Returns a list of workflow history entries for a specified workflow id.  **Note:** Stored workflow data expires after 60 days. Additionally, no data from before the 30th of October 2025 is available.  **[Permissions](#permissions) required:**   *  *Administer Jira* global permission to access all, including project-scoped, workflows  *  At least one of the *Administer projects* and *View (read-only) workflow* project permissions to access project-scoped workflows

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorkflowHistoryListRequest = Initialize-WorkflowHistoryListRequest -WorkflowId "MyWorkflowId" # WorkflowHistoryListRequest | 
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  `includeIntermediateWorkflows` Includes intermediate workflow versions that are sometimes created during workflow updates or migrations. By default, these are omitted from the response. (optional)

# List workflow history entries
try {
    $Result = Invoke-ListWorkflowHistory -WorkflowHistoryListRequest $WorkflowHistoryListRequest -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListWorkflowHistory: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowHistoryListRequest** | [**WorkflowHistoryListRequest**](WorkflowHistoryListRequest.md)|  | 
 **Expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;includeIntermediateWorkflows&#x60; Includes intermediate workflow versions that are sometimes created during workflow updates or migrations. By default, these are omitted from the response. | [optional] 

### Return type

[**WorkflowHistoryListResponseDTO**](WorkflowHistoryListResponseDTO.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Read-WorkflowFromHistory"></a>
# **Read-WorkflowFromHistory**
> WorkflowHistoryReadResponseDTO Read-WorkflowFromHistory<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowHistoryReadRequest] <PSCustomObject><br>

Read workflow version from history

Returns a workflow and related statuses for a specified workflow id and version number.  **Note:** Stored workflow data expires after 60 days. Additionally, no data from before the 30th of October 2025 is available.  **[Permissions](#permissions) required:**   *  *Administer Jira* global permission to access all, including project-scoped, workflows  *  At least one of the *Administer projects* and *View (read-only) workflow* project permissions to access project-scoped workflows

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorkflowHistoryReadRequest = Initialize-WorkflowHistoryReadRequest -Version 0 -WorkflowId "MyWorkflowId" # WorkflowHistoryReadRequest | 

# Read workflow version from history
try {
    $Result = Read-WorkflowFromHistory -WorkflowHistoryReadRequest $WorkflowHistoryReadRequest
} catch {
    Write-Host ("Exception occurred when calling Read-WorkflowFromHistory: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowHistoryReadRequest** | [**WorkflowHistoryReadRequest**](WorkflowHistoryReadRequest.md)|  | 

### Return type

[**WorkflowHistoryReadResponseDTO**](WorkflowHistoryReadResponseDTO.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Read-WorkflowPreviews"></a>
# **Read-WorkflowPreviews**
> WorkflowPreviewResponse Read-WorkflowPreviews<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowPreviewRequest] <PSCustomObject><br>

Preview workflow

Returns a requested workflow within a given project. The response provides a read-only preview of the workflow, omitting full configuration details.  **[Permissions](#permissions) required:**   *  At least one of the *Administer projects* and *View (read-only) workflow* project permissions

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorkflowPreviewRequest = Initialize-WorkflowPreviewRequest -IssueTypeIds "MyIssueTypeIds" -ProjectId "MyProjectId" -WorkflowIds "MyWorkflowIds" -WorkflowNames "MyWorkflowNames" # WorkflowPreviewRequest | 

# Preview workflow
try {
    $Result = Read-WorkflowPreviews -WorkflowPreviewRequest $WorkflowPreviewRequest
} catch {
    Write-Host ("Exception occurred when calling Read-WorkflowPreviews: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowPreviewRequest** | [**WorkflowPreviewRequest**](WorkflowPreviewRequest.md)|  | 

### Return type

[**WorkflowPreviewResponse**](WorkflowPreviewResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Read-Workflows"></a>
# **Read-Workflows**
> WorkflowReadResponse Read-Workflows<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowReadRequest] <PSCustomObject><br>

Bulk get workflows

Returns a list of workflows and related statuses by providing workflow names, workflow IDs, or project and issue types.  **[Permissions](#permissions) required:**   *  *Administer Jira* global permission to access all, including project-scoped, workflows  *  At least one of the *Administer projects* and *View (read-only) workflow* project permissions to access project-scoped workflows

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$ProjectAndIssueTypePair = Initialize-ProjectAndIssueTypePair -IssueTypeId "MyIssueTypeId" -ProjectId "MyProjectId"
$WorkflowReadRequest = Initialize-WorkflowReadRequest -ProjectAndIssueTypes $ProjectAndIssueTypePair -WorkflowIds "MyWorkflowIds" -WorkflowNames "MyWorkflowNames" # WorkflowReadRequest | 

# Bulk get workflows
try {
    $Result = Read-Workflows -WorkflowReadRequest $WorkflowReadRequest
} catch {
    Write-Host ("Exception occurred when calling Read-Workflows: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowReadRequest** | [**WorkflowReadRequest**](WorkflowReadRequest.md)|  | 

### Return type

[**WorkflowReadResponse**](WorkflowReadResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-Workflows"></a>
# **Search-Workflows**
> WorkflowSearchResponse Search-Workflows<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxResults] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryString] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Scope] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IsActive] <System.Nullable[Boolean]><br>

Search workflows

Returns a [paginated](#pagination) list of global and project workflows. If workflow names are specified in the query string, details of those workflows are returned. Otherwise, all workflows are returned.  **[Permissions](#permissions) required:**   *  *Administer Jira* global permission to access all, including project-scoped, workflows  *  At least one of the *Administer projects* and *View (read-only) workflow* project permissions to access project-scoped workflows

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$StartAt = 789 # Int64 | The index of the first item to return in a page of results (page offset). (optional)
$MaxResults = 56 # Int32 | The maximum number of items to return per page. (optional)
$Expand = "MyExpand" # String | Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  `values.transitions` Returns the transitions that each workflow is associated with. (optional)
$QueryString = "MyQueryString" # String | String used to perform a case-insensitive partial match with workflow name. (optional)
$OrderBy = "MyOrderBy" # String | [Order](#ordering) the results by a field:   *  `name` Sorts by workflow name.  *  `created` Sorts by create time.  *  `updated` Sorts by update time. (optional)
$Scope = "MyScope" # String | The scope of the workflow. Global for company-managed projects and Project for team-managed projects. (optional)
$IsActive = $true # Boolean | Filters active and inactive workflows. (optional)

# Search workflows
try {
    $Result = Search-Workflows -StartAt $StartAt -MaxResults $MaxResults -Expand $Expand -QueryString $QueryString -OrderBy $OrderBy -Scope $Scope -IsActive $IsActive
} catch {
    Write-Host ("Exception occurred when calling Search-Workflows: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StartAt** | **Int64**| The index of the first item to return in a page of results (page offset). | [optional] 
 **MaxResults** | **Int32**| The maximum number of items to return per page. | [optional] 
 **Expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;values.transitions&#x60; Returns the transitions that each workflow is associated with. | [optional] 
 **QueryString** | **String**| String used to perform a case-insensitive partial match with workflow name. | [optional] 
 **OrderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;name&#x60; Sorts by workflow name.  *  &#x60;created&#x60; Sorts by create time.  *  &#x60;updated&#x60; Sorts by update time. | [optional] 
 **Scope** | **String**| The scope of the workflow. Global for company-managed projects and Project for team-managed projects. | [optional] 
 **IsActive** | **Boolean**| Filters active and inactive workflows. | [optional] 

### Return type

[**WorkflowSearchResponse**](WorkflowSearchResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Workflows"></a>
# **Update-Workflows**
> WorkflowUpdateResponse Update-Workflows<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowUpdateRequest] <PSCustomObject><br>

Bulk update workflows

Update workflows and related statuses.  **[Permissions](#permissions) required:**   *  *Administer Jira* project permission to create all, including global-scoped, workflows  *  *Administer projects* project permissions to create project-scoped workflows

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorkflowStatusUpdate = Initialize-WorkflowStatusUpdate -Description "MyDescription" -Id "MyId" -Name "MyName" -StatusCategory "TODO" -StatusReference "MyStatusReference"

$StatusMigration = Initialize-StatusMigration -NewStatusReference "MyNewStatusReference" -OldStatusReference "MyOldStatusReference"
$WorkflowLayout = Initialize-WorkflowLayout -X 0 -Y 0

$StatusMappingDTO = Initialize-StatusMappingDTO -IssueTypeId "MyIssueTypeId" -ProjectId "MyProjectId" -StatusMigrations $StatusMigration

"assignee"$ApprovalConfiguration = Initialize-ApprovalConfiguration -Active "true" -ConditionType "number" -ConditionValue "MyConditionValue" -Exclude "assignee" -FieldId "MyFieldId" -PrePopulatedFieldId "MyPrePopulatedFieldId" -TransitionApproved "MyTransitionApproved" -TransitionRejected "MyTransitionRejected"
$StatusLayoutUpdate = Initialize-StatusLayoutUpdate -ApprovalConfiguration $ApprovalConfiguration -Layout $WorkflowLayout -Properties @{ key_example = "MyInner" } -StatusReference "MyStatusReference"

$WorkflowRuleConfiguration = Initialize-WorkflowRuleConfiguration -Id "MyId" -Parameters @{ key_example = "MyInner" } -RuleKey "MyRuleKey"

$ConditionGroupUpdate = Initialize-ConditionGroupUpdate -ConditionGroups $ConditionGroupUpdate -Conditions $WorkflowRuleConfiguration -Operation "ANY"

$WorkflowTransitionLinks = Initialize-WorkflowTransitionLinks -FromPort 0 -FromStatusReference "MyFromStatusReference" -ToPort 0
$WorkflowTrigger = Initialize-WorkflowTrigger -Id "MyId" -Parameters @{ key_example = "MyInner" } -RuleKey "MyRuleKey"
$TransitionUpdateDTO = Initialize-TransitionUpdateDTO -Actions $WorkflowRuleConfiguration -Conditions $ConditionGroupUpdate -CustomIssueEventId "MyCustomIssueEventId" -Description "MyDescription" -Id "MyId" -Links $WorkflowTransitionLinks -Name "MyName" -Properties @{ key_example = "MyInner" } -ToStatusReference "MyToStatusReference" -TransitionScreen $WorkflowRuleConfiguration -Triggers $WorkflowTrigger -Type "INITIAL" -Validators $WorkflowRuleConfiguration

$DocumentVersion = Initialize-DocumentVersion -Id "MyId" -VersionNumber 0
$WorkflowUpdate = Initialize-WorkflowUpdate -DefaultStatusMappings $StatusMigration -Description "MyDescription" -Id "MyId" -LoopedTransitionContainerLayout $WorkflowLayout -StartPointLayout $WorkflowLayout -StatusMappings $StatusMappingDTO -Statuses $StatusLayoutUpdate -Transitions $TransitionUpdateDTO -Version $DocumentVersion

$WorkflowUpdateRequest = Initialize-WorkflowUpdateRequest -Statuses $WorkflowStatusUpdate -Workflows $WorkflowUpdate # WorkflowUpdateRequest | 

# Bulk update workflows
try {
    $Result = Update-Workflows -WorkflowUpdateRequest $WorkflowUpdateRequest
} catch {
    Write-Host ("Exception occurred when calling Update-Workflows: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowUpdateRequest** | [**WorkflowUpdateRequest**](WorkflowUpdateRequest.md)|  | 

### Return type

[**WorkflowUpdateResponse**](WorkflowUpdateResponse.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Confirm-CreateWorkflows"></a>
# **Confirm-CreateWorkflows**
> WorkflowValidationErrorList Confirm-CreateWorkflows<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowCreateValidateRequest] <PSCustomObject><br>

Validate create workflows

Validate the payload for bulk create workflows.  **[Permissions](#permissions) required:**   *  *Administer Jira* project permission to create all, including global-scoped, workflows  *  *Administer projects* project permissions to create project-scoped workflows

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
$WorkflowScope = Initialize-WorkflowScope -Project $ProjectId -Type "PROJECT"

$WorkflowStatusUpdate = Initialize-WorkflowStatusUpdate -Description "MyDescription" -Id "MyId" -Name "MyName" -StatusCategory "TODO" -StatusReference "MyStatusReference"

$WorkflowLayout = Initialize-WorkflowLayout -X 0 -Y 0

"assignee"$ApprovalConfiguration = Initialize-ApprovalConfiguration -Active "true" -ConditionType "number" -ConditionValue "MyConditionValue" -Exclude "assignee" -FieldId "MyFieldId" -PrePopulatedFieldId "MyPrePopulatedFieldId" -TransitionApproved "MyTransitionApproved" -TransitionRejected "MyTransitionRejected"
$StatusLayoutUpdate = Initialize-StatusLayoutUpdate -ApprovalConfiguration $ApprovalConfiguration -Layout $WorkflowLayout -Properties @{ key_example = "MyInner" } -StatusReference "MyStatusReference"

$WorkflowRuleConfiguration = Initialize-WorkflowRuleConfiguration -Id "MyId" -Parameters @{ key_example = "MyInner" } -RuleKey "MyRuleKey"

$ConditionGroupUpdate = Initialize-ConditionGroupUpdate -ConditionGroups $ConditionGroupUpdate -Conditions $WorkflowRuleConfiguration -Operation "ANY"

$WorkflowTransitionLinks = Initialize-WorkflowTransitionLinks -FromPort 0 -FromStatusReference "MyFromStatusReference" -ToPort 0
$WorkflowTrigger = Initialize-WorkflowTrigger -Id "MyId" -Parameters @{ key_example = "MyInner" } -RuleKey "MyRuleKey"
$TransitionUpdateDTO = Initialize-TransitionUpdateDTO -Actions $WorkflowRuleConfiguration -Conditions $ConditionGroupUpdate -CustomIssueEventId "MyCustomIssueEventId" -Description "MyDescription" -Id "MyId" -Links $WorkflowTransitionLinks -Name "MyName" -Properties @{ key_example = "MyInner" } -ToStatusReference "MyToStatusReference" -TransitionScreen $WorkflowRuleConfiguration -Triggers $WorkflowTrigger -Type "INITIAL" -Validators $WorkflowRuleConfiguration

$WorkflowCreate = Initialize-WorkflowCreate -Description "MyDescription" -LoopedTransitionContainerLayout $WorkflowLayout -Name "MyName" -StartPointLayout $WorkflowLayout -Statuses $StatusLayoutUpdate -Transitions $TransitionUpdateDTO

$WorkflowCreateRequest = Initialize-WorkflowCreateRequest -Scope $WorkflowScope -Statuses $WorkflowStatusUpdate -Workflows $WorkflowCreate

"WARNING"$ValidationOptionsForCreate = Initialize-ValidationOptionsForCreate -Levels "WARNING"
$WorkflowCreateValidateRequest = Initialize-WorkflowCreateValidateRequest -Payload $WorkflowCreateRequest -ValidationOptions $ValidationOptionsForCreate # WorkflowCreateValidateRequest | 

# Validate create workflows
try {
    $Result = Confirm-CreateWorkflows -WorkflowCreateValidateRequest $WorkflowCreateValidateRequest
} catch {
    Write-Host ("Exception occurred when calling Confirm-CreateWorkflows: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowCreateValidateRequest** | [**WorkflowCreateValidateRequest**](WorkflowCreateValidateRequest.md)|  | 

### Return type

[**WorkflowValidationErrorList**](WorkflowValidationErrorList.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Confirm-UpdateWorkflows"></a>
# **Confirm-UpdateWorkflows**
> WorkflowValidationErrorList Confirm-UpdateWorkflows<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowUpdateValidateRequestBean] <PSCustomObject><br>

Validate update workflows

Validate the payload for bulk update workflows.  **[Permissions](#permissions) required:**   *  *Administer Jira* project permission to create all, including global-scoped, workflows  *  *Administer projects* project permissions to create project-scoped workflows

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorkflowStatusUpdate = Initialize-WorkflowStatusUpdate -Description "MyDescription" -Id "MyId" -Name "MyName" -StatusCategory "TODO" -StatusReference "MyStatusReference"

$StatusMigration = Initialize-StatusMigration -NewStatusReference "MyNewStatusReference" -OldStatusReference "MyOldStatusReference"
$WorkflowLayout = Initialize-WorkflowLayout -X 0 -Y 0

$StatusMappingDTO = Initialize-StatusMappingDTO -IssueTypeId "MyIssueTypeId" -ProjectId "MyProjectId" -StatusMigrations $StatusMigration

"assignee"$ApprovalConfiguration = Initialize-ApprovalConfiguration -Active "true" -ConditionType "number" -ConditionValue "MyConditionValue" -Exclude "assignee" -FieldId "MyFieldId" -PrePopulatedFieldId "MyPrePopulatedFieldId" -TransitionApproved "MyTransitionApproved" -TransitionRejected "MyTransitionRejected"
$StatusLayoutUpdate = Initialize-StatusLayoutUpdate -ApprovalConfiguration $ApprovalConfiguration -Layout $WorkflowLayout -Properties @{ key_example = "MyInner" } -StatusReference "MyStatusReference"

$WorkflowRuleConfiguration = Initialize-WorkflowRuleConfiguration -Id "MyId" -Parameters @{ key_example = "MyInner" } -RuleKey "MyRuleKey"

$ConditionGroupUpdate = Initialize-ConditionGroupUpdate -ConditionGroups $ConditionGroupUpdate -Conditions $WorkflowRuleConfiguration -Operation "ANY"

$WorkflowTransitionLinks = Initialize-WorkflowTransitionLinks -FromPort 0 -FromStatusReference "MyFromStatusReference" -ToPort 0
$WorkflowTrigger = Initialize-WorkflowTrigger -Id "MyId" -Parameters @{ key_example = "MyInner" } -RuleKey "MyRuleKey"
$TransitionUpdateDTO = Initialize-TransitionUpdateDTO -Actions $WorkflowRuleConfiguration -Conditions $ConditionGroupUpdate -CustomIssueEventId "MyCustomIssueEventId" -Description "MyDescription" -Id "MyId" -Links $WorkflowTransitionLinks -Name "MyName" -Properties @{ key_example = "MyInner" } -ToStatusReference "MyToStatusReference" -TransitionScreen $WorkflowRuleConfiguration -Triggers $WorkflowTrigger -Type "INITIAL" -Validators $WorkflowRuleConfiguration

$DocumentVersion = Initialize-DocumentVersion -Id "MyId" -VersionNumber 0
$WorkflowUpdate = Initialize-WorkflowUpdate -DefaultStatusMappings $StatusMigration -Description "MyDescription" -Id "MyId" -LoopedTransitionContainerLayout $WorkflowLayout -StartPointLayout $WorkflowLayout -StatusMappings $StatusMappingDTO -Statuses $StatusLayoutUpdate -Transitions $TransitionUpdateDTO -Version $DocumentVersion

$WorkflowUpdateRequest = Initialize-WorkflowUpdateRequest -Statuses $WorkflowStatusUpdate -Workflows $WorkflowUpdate

"WARNING"$ValidationOptionsForUpdate = Initialize-ValidationOptionsForUpdate -Levels "WARNING"
$WorkflowUpdateValidateRequestBean = Initialize-WorkflowUpdateValidateRequestBean -Payload $WorkflowUpdateRequest -ValidationOptions $ValidationOptionsForUpdate # WorkflowUpdateValidateRequestBean | 

# Validate update workflows
try {
    $Result = Confirm-UpdateWorkflows -WorkflowUpdateValidateRequestBean $WorkflowUpdateValidateRequestBean
} catch {
    Write-Host ("Exception occurred when calling Confirm-UpdateWorkflows: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowUpdateValidateRequestBean** | [**WorkflowUpdateValidateRequestBean**](WorkflowUpdateValidateRequestBean.md)|  | 

### Return type

[**WorkflowValidationErrorList**](WorkflowValidationErrorList.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-WorkflowCapabilities"></a>
# **Invoke-WorkflowCapabilities**
> WorkflowCapabilities Invoke-WorkflowCapabilities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkflowId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IssueTypeId] <String><br>

Get available workflow capabilities

Get the list of workflow capabilities for a specific workflow using either the workflow ID, or the project and issue type ID pair. The response includes the scope of the workflow, defined as global/project-based, and a list of project types that the workflow is scoped to. It also includes all rules organised into their broad categories (conditions, validators, actions, triggers, screens) as well as the source location (Atlassian-provided, Connect, Forge).  **[Permissions](#permissions) required:**   *  *Administer Jira* project permission to access all, including global-scoped, workflows  *  *Administer projects* project permissions to access project-scoped workflows  The current list of Atlassian-provided rules:  #### Validators ####  A validator rule that checks if a user has the required permissions to execute the transition in the workflow.  ##### Permission validator #####  A validator rule that checks if a user has the required permissions to execute the transition in the workflow.      {        ""ruleKey"": ""system:check-permission-validator"",        ""parameters"": {          ""permissionKey"": ""ADMINISTER_PROJECTS""        }      }  Parameters:   *  `permissionKey` The permission required to perform the transition. Allowed values: [built-in Jira permissions](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-permission-schemes/#built-in-permissions).  ##### Parent or child blocking validator #####  A validator to block the child issue's transition depending on the parent issue's status.      {        ""ruleKey"" : ""system:parent-or-child-blocking-validator""        ""parameters"" : {          ""blocker"" : ""PARENT""          ""statusIds"" : ""1,2,3""        }      }  Parameters:   *  `blocker` currently only supports `PARENT`.  *  `statusIds` a comma-separated list of status IDs.  ##### Previous status validator #####  A validator that checks if an issue has transitioned through specified previous status(es) before allowing the current transition to occur.      {        ""ruleKey"": ""system:previous-status-validator"",        ""parameters"": {          ""previousStatusIds"": ""10014"",          ""mostRecentStatusOnly"": ""true""        }      }  Parameters:   *  `previousStatusIds` a comma-separated list of status IDs, currently only support one ID.  *  `mostRecentStatusOnly` when `true` only considers the most recent status for the condition evaluation. Allowed values: `true`, `false`.  ##### Validate a field value #####  A validation that ensures a specific field's value meets the defined criteria before allowing an issue to transition in the workflow.  Depending on the rule type, the result will vary:  ###### Field required ######      {        ""ruleKey"": ""system:validate-field-value"",        ""parameters"": {          ""ruleType"": ""fieldRequired"",          ""fieldsRequired"": ""assignee"",          ""ignoreContext"": ""true"",          ""errorMessage"": ""An assignee must be set!""        }      }  Parameters:   *  `fieldsRequired` the ID of the field that is required. For a custom field, it would look like `customfield_123`.  *  `ignoreContext` controls the impact of context settings on field validation. When set to `true`, the validator doesn't check a required field if its context isn't configured for the current issue. When set to `false`, the validator requires a field even if its context is invalid. Allowed values: `true`, `false`.  *  `errorMessage` is the error message to display if the user does not provide a value during the transition. A default error message will be shown if you don't provide one (Optional).  ###### Field changed ######      {        ""ruleKey"": ""system:validate-field-value"",        ""parameters"": {          ""ruleType"": ""fieldChanged"",          ""groupsExemptFromValidation"": ""6862ac20-8672-4f68-896d-4854f5efb79e"",          ""fieldKey"": ""versions"",          ""errorMessage"": ""Affect versions must be modified before transition""        }      }  Parameters:   *  `groupsExemptFromValidation` a comma-separated list of group IDs to be exempt from the validation.  *  `fieldKey` the ID of the field that has changed. For a custom field, it would look like `customfield_123`.  *  `errorMessage` the error message to display if the user does not provide a value during the transition. A default error message will be shown if you don't provide one (Optional).  ###### Field has a single value ######      {        ""ruleKey"": ""system:validate-field-value"",        ""parameters"": {          ""ruleType"": ""fieldHasSingleValue"",          ""fieldKey"": ""created"",          ""excludeSubtasks"": ""true""        }      }  Parameters:   *  `fieldKey` the ID of the field to validate. For a custom field, it would look like `customfield_123`.  *  `excludeSubtasks` Option to exclude values copied from sub-tasks. Allowed values: `true`, `false`.  ###### Field matches regular expression ######      {        ""ruleKey"": ""system:validate-field-value"",        ""parameters"": {          ""ruleType"": ""fieldMatchesRegularExpression"",          ""regexp"": ""[0-9]{4}"",          ""fieldKey"": ""description""        }      }  Parameters:   *  `regexp` the regular expression used to validate the field\\u2019s content.  *  `fieldKey` the ID of the field to validate. For a custom field, it would look like `customfield_123`.  ###### Date field comparison ######      {        ""ruleKey"": ""system:validate-field-value"",        ""parameters"": {          ""ruleType"": ""dateFieldComparison"",          ""date1FieldKey"": ""duedate"",          ""date2FieldKey"": ""customfield_10054"",          ""includeTime"": ""true"",          ""conditionSelected"": "">=""        }      }  Parameters:   *  `date1FieldKey` the ID of the first field to compare. For a custom field, it would look like `customfield_123`.  *  `date2FieldKey` the ID of the second field to compare. For a custom field, it would look like `customfield_123`.  *  `includeTime` if `true`, compares both date and time. Allowed values: `true`, `false`.  *  `conditionSelected` the condition to compare with. Allowed values: `>`, `>=`, `=`, `<=`, `<`, `!=`.  ###### Date range comparison ######      {        ""ruleKey"": ""system:validate-field-value"",        ""parameters"": {          ""ruleType"": ""windowDateComparison"",          ""date1FieldKey"": ""customfield_10009"",          ""date2FieldKey"": ""customfield_10054"",          ""numberOfDays"": ""3""        }      }  Parameters:   *  `date1FieldKey` the ID of the first field to compare. For a custom field, it would look like `customfield_123`.  *  `date2FieldKey` the ID of the second field to compare. For a custom field, it would look like `customfield_123`.  *  `numberOfDays` maximum number of days past the reference date (`date2FieldKey`) to pass validation.  This rule is composed by aggregating the following legacy rules:   *  FieldRequiredValidator  *  FieldChangedValidator  *  FieldHasSingleValueValidator  *  RegexpFieldValidator  *  DateFieldValidator  *  WindowsDateValidator  ##### Pro forma: Forms attached validator #####  Validates that one or more forms are attached to the issue.      {        ""ruleKey"" : ""system:proforma-forms-attached""        ""parameters"" : {}      }  ##### Proforma: Forms submitted validator #####  Validates that all forms attached to the issue have been submitted.      {        ""ruleKey"" : ""system:proforma-forms-submitted""        ""parameters"" : {}      }  #### Conditions ####  Conditions enable workflow rules that govern whether a transition can execute.  ##### Check field value #####  A condition rule evaluates as true if a specific field's value meets the defined criteria. This rule ensures that an issue can only transition to the next step in the workflow if the field's value matches the desired condition.      {        ""ruleKey"": ""system:check-field-value"",        ""parameters"": {          ""fieldId"": ""description"",          ""fieldValue"": ""[\""Done\""]"",          ""comparator"": ""="",          ""comparisonType"": ""STRING""        }      }  Parameters:   *  `fieldId` The ID of the field to check the value of. For non-system fields, it will look like `customfield_123`. Note: `fieldId` is used interchangeably with the idea of `fieldKey` here, they refer to the same field.  *  `fieldValue` the list of values to check against the field\\u2019s value.  *  `comparator` The comparison logic. Allowed values: `>`, `>=`, `=`, `<=`, `<`, `!=`.  *  `comparisonType` The type of data being compared. Allowed values: `STRING`, `NUMBER`, `DATE`, `DATE_WITHOUT_TIME`, `OPTIONID`.  ##### Restrict issue transition #####  This rule ensures that issue transitions are restricted based on user accounts, roles, group memberships, and permissions, maintaining control over who can transition an issue. This condition evaluates as `true` if any of the following criteria is met.      {        ""ruleKey"": ""system:restrict-issue-transition"",        ""parameters"": {          ""accountIds"": ""allow-reporter,5e68ac137d64450d01a77fa0"",          ""roleIds"": ""10002,10004"",          ""groupIds"": ""703ff44a-7dc8-4f4b-9aa6-a65bf3574fa4"",          ""permissionKeys"": ""ADMINISTER_PROJECTS"",          ""groupCustomFields"": ""customfield_10028"",          ""allowUserCustomFields"": ""customfield_10072,customfield_10144,customfield_10007"",          ""denyUserCustomFields"": ""customfield_10107""        }      }  Parameters:   *  `accountIds` a comma-separated list of the user account IDs. It also allows generic values like: `allow-assignee`, `allow-reporter`, and `accountIds` Note: This is only supported in team-managed projects  *  `roleIds` a comma-separated list of role IDs.  *  `groupIds` a comma-separated list of group IDs.  *  `permissionKeys` a comma-separated list of permission keys. Allowed values: [built-in Jira permissions](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-permission-schemes/#built-in-permissions).  *  `groupCustomFields` a comma-separated list of group custom field IDs.  *  `allowUserCustomFields` a comma-separated list of user custom field IDs to allow for issue transition.  *  `denyUserCustomFields` a comma-separated list of user custom field IDs to deny for issue transition.  This rule is composed by aggregating the following legacy rules:   *  AllowOnlyAssignee  *  AllowOnlyReporter  *  InAnyProjectRoleCondition  *  InProjectRoleCondition  *  UserInAnyGroupCondition  *  UserInGroupCondition  *  PermissionCondtion  *  InGroupCFCondition  *  UserIsInCustomFieldCondition  ##### Previous status condition #####  A condition that evaluates based on an issue's previous status(es) and specific criteria.      {        ""ruleKey"" : ""system:previous-status-condition""        ""parameters"" : {          ""previousStatusIds"" : ""10004"",          ""not"": ""true"",          ""mostRecentStatusOnly"" : ""true"",          ""includeCurrentStatus"": ""true"",          ""ignoreLoopTransitions"": ""true""        }      }  Parameters:   *  `previousStatusIds` a comma-separated list of status IDs, current only support one ID.  *  `not` indicates if the condition should be reversed. When `true` it checks that the issue has not been in the selected statuses. Allowed values: `true`, `false`.  *  `mostRecentStatusOnly` when true only considers the most recent status for the condition evaluation. Allowed values: `true`, `false`.  *  `includeCurrentStatus` includes the current status when evaluating if the issue has been through the selected statuses. Allowed values: `true`, `false`.  *  `ignoreLoopTransitions` ignore loop transitions. Allowed values: `true`, `false`.  ##### Parent or child blocking condition #####  A condition to block the parent\\u2019s issue transition depending on the child\\u2019s issue status.      {        ""ruleKey"" : ""system:parent-or-child-blocking-condition""        ""parameters"" : {          ""blocker"" : ""CHILD"",          ""statusIds"" : ""1,2,3""        }      }  Parameters:   *  `blocker` currently only supports `CHILD`.  *  `statusIds` a comma-separated list of status IDs.  ##### Separation of duties #####  A condition preventing the user from performing, if the user has already performed a transition on the issue.      {        ""ruleKey"": ""system:separation-of-duties"",        ""parameters"": {          ""fromStatusId"": ""10161"",          ""toStatusId"": ""10160""        }      }  Parameters:   *  `fromStatusId` represents the status ID from which the issue is transitioning. It ensures that the user performing the current transition has not performed any actions when the issue was in the specified status.  *  `toStatusId` represents the status ID to which the issue is transitioning. It ensures that the user performing the current transition is not the same user who has previously transitioned the issue.  ##### Restrict transitions #####  A condition preventing all users from transitioning the issue can also optionally include APIs as well.      {        ""ruleKey"": ""system:restrict-from-all-users"",        ""parameters"": {          ""restrictMode"": ""users""        }      }  Parameters:   *  `restrictMode` restricts the issue transition including/excluding APIs. Allowed values: `""users""`, `""usersAndAPI""`.  ##### Jira Service Management block until approved #####  Block an issue transition until approval. Note: This is only supported in team-managed projects.      {        ""ruleKey"": ""system:jsd-approvals-block-until-approved"",        ""parameters"": {          ""approvalConfigurationJson"": ""{""statusExternalUuid...}""        }      }  Parameters:   *  `approvalConfigurationJson` a stringified JSON holding the Jira Service Management approval configuration.  ##### Jira Service Management block until rejected #####  Block an issue transition until rejected. Note: This is only supported in team-managed projects.      {        ""ruleKey"": ""system:jsd-approvals-block-until-rejected"",        ""parameters"": {          ""approvalConfigurationJson"": ""{""statusExternalUuid...}""        }      }  Parameters:   *  `approvalConfigurationJson` a stringified JSON holding the Jira Service Management approval configuration.  ##### Block in progress approval #####  Condition to block issue transition if there is pending approval. Note: This is only supported in company-managed projects.      {        ""ruleKey"": ""system:block-in-progress-approval"",        ""parameters"": {}      }  #### Post functions ####  Post functions carry out any additional processing required after a workflow transition is executed.  ##### Change assignee #####  A post function rule that changes the assignee of an issue after a transition.      {        ""ruleKey"": ""system:change-assignee"",        ""parameters"": {          ""type"": ""to-selected-user"",          ""accountId"": ""example-account-id""        }      }  Parameters:   *  `type` the parameter used to determine the new assignee. Allowed values: `to-selected-user`, `to-unassigned`, `to-current-user`, `to-current-user`, `to-default-user`, `to-default-user`  *  `accountId` the account ID of the user to assign the issue to. This parameter is required only when the type is `""to-selected-user""`.  ##### Copy field value #####  A post function that automates the process of copying values between fields during a specific transition, ensuring data consistency and reducing manual effort.      {        ""ruleKey"": ""system:copy-value-from-other-field"",        ""parameters"": {          ""sourceFieldKey"": ""description"",          ""targetFieldKey"": ""components"",          ""issueSource"": ""SAME""        }      }  Parameters:   *  `sourceFieldKey` the field key to copy from. For a custom field, it would look like `customfield_123`  *  `targetFieldKey` the field key to copy to. For a custom field, it would look like `customfield_123`  *  `issueSource` `SAME` or `PARENT`. Defaults to `SAME` if no value is provided.  ##### Update field #####  A post function that updates or appends a specific field with the given value.      {        ""ruleKey"": ""system:update-field"",        ""parameters"": {          ""field"": ""customfield_10056"",          ""value"": ""asdf"",          ""mode"": ""append""        }      }  Parameters:   *  `field` the ID of the field to update. For a custom field, it would look like `customfield_123`  *  `value` the value to update the field with.  *  `mode` `append` or `replace`. Determines if a value will be appended to the current value, or if the current value will be replaced.  ##### Trigger webhook #####  A post function that automatically triggers a predefined webhook when a transition occurs in the workflow.      {        ""ruleKey"": ""system:trigger-webhook"",        ""parameters"": {          ""webhookId"": ""1""        }      }  Parameters:   *  `webhookId` the ID of the webhook.  ##### Trigger agent #####  A post function that triggers a Jira AI agent for the issue after the transition runs, using the configured agent and an optional prompt. The agent run is asynchronous: it is scheduled after the transition finishes and does not block the transition.      {        ""ruleKey"": ""system:trigger-agent"",        ""parameters"": {          ""agentId"": ""712020:3c6d3f05-331a-4488-932e-37c34b704720"",          ""promptValue"": """"        }      }  Parameters:   *  `agentId` the identifier of the agent to trigger (the Atlassian account ID of the agent).  *  `promptValue` optional text passed to the agent as a user prompt after the transition runs; use an empty string if no extra prompt is needed.  #### Screen ####  ##### Remind people to update fields #####  A screen rule that prompts users to update a specific field when they interact with an issue screen during a transition. This rule is useful for ensuring that users provide or modify necessary information before moving an issue to the next step in the workflow.      {        ""ruleKey"": ""system:remind-people-to-update-fields"",        ""params"": {          ""remindingFieldIds"": ""assignee,customfield_10025"",          ""remindingMessage"": ""The message"",          ""remindingAlwaysAsk"": ""true""        }      }  Parameters:   *  `remindingFieldIds` a comma-separated list of field IDs. Note: `fieldId` is used interchangeably with the idea of `fieldKey` here, they refer to the same field.  *  `remindingMessage` the message to display when prompting the users to update the fields.  *  `remindingAlwaysAsk` always remind to update fields. Allowed values: `true`, `false`.  ##### Shared transition screen #####  A common screen that is shared between transitions in a workflow.      {        ""ruleKey"": ""system:transition-screen"",        ""params"": {          ""screenId"": ""3""        }      }  Parameters:   *  `screenId` the ID of the screen.  #### Connect & Forge ####  ##### Connect rules #####  Validator/Condition/Post function for Connect app.      {        ""ruleKey"": ""connect:expression-validator"",        ""parameters"": {          ""appKey"": ""com.atlassian.app"",          ""config"": """",          ""id"": ""90ce590f-e90c-4cd3-8281-165ce41f2ac3"",          ""disabled"": ""false"",          ""tag"": """"        }      }  Parameters:   *  `ruleKey` Validator: `connect:expression-validator`, Condition: `connect:expression-condition`, and Post function: `connect:remote-workflow-function`  *  `appKey` the reference to the Connect app  *  `config` a JSON payload string describing the configuration  *  `id` the ID of the rule  *  `disabled` determine if the Connect app is disabled. Allowed values: `true`, `false`.  *  `tag` additional tags for the Connect app  ##### Forge rules #####  Validator/Condition/Post function for Forge app.      {        ""ruleKey"": ""forge:expression-validator"",        ""parameters"": {          ""key"": ""ari:cloud:ecosystem::extension/{appId}/{environmentId}/static/{moduleKey}"",          ""config"": ""{""searchString"":""workflow validator""}"",          ""id"": ""a865ddf6-bb3f-4a7b-9540-c2f8b3f9f6c2"",          ""disabled"": ""false"",          ""tag"": """"        }      }  Parameters:   *  `ruleKey` Validator: `forge:expression-validator`, Condition: `forge:expression-condition`, and Post function: `forge:workflow-post-function`  *  `key` the identifier for the Forge app  *  `config` the persistent stringified JSON configuration for the Forge rule  *  `id` the ID of the Forge rule  *  `disabled` determine if the Forge app is disabled. Allowed values: `true`, `false`.  *  `tag` additional tags for the Forge app

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: OAuth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure HTTP basic authorization: basicAuth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$WorkflowId = "MyWorkflowId" # String |  (optional)
$ProjectId = "MyProjectId" # String |  (optional)
$IssueTypeId = "MyIssueTypeId" # String |  (optional)

# Get available workflow capabilities
try {
    $Result = Invoke-WorkflowCapabilities -WorkflowId $WorkflowId -ProjectId $ProjectId -IssueTypeId $IssueTypeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-WorkflowCapabilities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkflowId** | **String**|  | [optional] 
 **ProjectId** | **String**|  | [optional] 
 **IssueTypeId** | **String**|  | [optional] 

### Return type

[**WorkflowCapabilities**](WorkflowCapabilities.md) (PSCustomObject)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

