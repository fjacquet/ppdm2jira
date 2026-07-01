# PpdmApiReference.PpdmApiReference\Api.MonitoringApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Confirm-Alert**](MonitoringApi.md#Confirm-Alert) | **PUT** /api/v2/alerts/{id}/acknowledgement | Update alert acknowledgement by ID
[**Confirm-Alerts**](MonitoringApi.md#Confirm-Alerts) | **POST** /api/v2/alerts/acknowledgements | Update message acknowledgements by ID
[**Stop-Activity**](MonitoringApi.md#Stop-Activity) | **POST** /api/v2/activities/{id}/cancel | Cancel a running activity
[**New-ExternalNotification**](MonitoringApi.md#New-ExternalNotification) | **POST** /api/v2/external-notifications | Create an external notification
[**Invoke-DeleteExternalNotification**](MonitoringApi.md#Invoke-DeleteExternalNotification) | **DELETE** /api/v2/external-notifications/{id} | Delete an external notification by ID
[**Get-Activities**](MonitoringApi.md#Get-Activities) | **GET** /api/v2/activities | Get all activities
[**Get-Activity**](MonitoringApi.md#Get-Activity) | **GET** /api/v2/activities/{id} | Get an activity by ID
[**Get-ActivityMetrics**](MonitoringApi.md#Get-ActivityMetrics) | **GET** /api/v2/activity-metrics | Get aggregation of state counts for activities
[**Get-Alert**](MonitoringApi.md#Get-Alert) | **GET** /api/v2/alerts/{id} | Get an alert message by ID
[**Get-AlertMetrics**](MonitoringApi.md#Get-AlertMetrics) | **GET** /api/v2/alert-metrics | Get all Alert metrics
[**Get-Alerts**](MonitoringApi.md#Get-Alerts) | **GET** /api/v2/alerts | Get all alerts
[**Get-AuditLog**](MonitoringApi.md#Get-AuditLog) | **GET** /api/v2/audit-logs/{id} | Get an audit log resource by ID
[**Get-AuditLogs**](MonitoringApi.md#Get-AuditLogs) | **GET** /api/v2/audit-logs | Get all audit log resources
[**Get-ExternalNotification**](MonitoringApi.md#Get-ExternalNotification) | **GET** /api/v2/external-notifications/{id} | Get an external notification by ID
[**Get-ExternalNotifications**](MonitoringApi.md#Get-ExternalNotifications) | **GET** /api/v2/external-notifications | Get all configured external notifications
[**Get-GroupedActivities**](MonitoringApi.md#Get-GroupedActivities) | **GET** /api/v2/grouped-activities | Get all activities for a group-by entity
[**Get-ProtectionDetails**](MonitoringApi.md#Get-ProtectionDetails) | **GET** /api/v2/protection-details | Get a list of protection details
[**Get-SystemHealthIssues**](MonitoringApi.md#Get-SystemHealthIssues) | **GET** /api/v2/system-health-issues | Get system health issues
[**Get-SystemHealthMetrics**](MonitoringApi.md#Get-SystemHealthMetrics) | **GET** /api/v2/system-health-metrics | Get system health metrics
[**Get-SystemScoreCategories**](MonitoringApi.md#Get-SystemScoreCategories) | **GET** /api/v2/system-health-score-categories | Get system health score categories
[**Invoke-RetryActivity**](MonitoringApi.md#Invoke-RetryActivity) | **POST** /api/v2/activities/{id}/retry | Retry a failed activity
[**Update-Alert**](MonitoringApi.md#Update-Alert) | **PATCH** /api/v2/alerts/{id} | Update message acknowledgement or user note by ID
[**Update-AuditLogNotes**](MonitoringApi.md#Update-AuditLogNotes) | **PUT** /api/v2/audit-logs/{id}/notes | Update the AuditLog resource by ID
[**Update-ExternalNotification**](MonitoringApi.md#Update-ExternalNotification) | **PUT** /api/v2/external-notifications/{id} | Update external notification by ID


<a id="Confirm-Alert"></a>
# **Confirm-Alert**
> PutAlertAcknowledgement Confirm-Alert<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PutAlertAcknowledgement] <PSCustomObject><br>

Update alert acknowledgement by ID

Updates acknowledgement object of the specified alert. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the alerts resource.
$AlertAcknowledgement = Initialize-AlertAcknowledgement -AcknowledgeBy "MyAcknowledgeBy" -AcknowledgeState "ACKNOWLEDGED" -AcknowledgeTime (Get-Date)
$PutAlertAcknowledgement = Initialize-PutAlertAcknowledgement -Acknowledgement $AlertAcknowledgement -Id "MyId" # PutAlertAcknowledgement |  (optional)

# Update alert acknowledgement by ID
try {
    $Result = Confirm-Alert -Id $Id -PutAlertAcknowledgement $PutAlertAcknowledgement
} catch {
    Write-Host ("Exception occurred when calling Confirm-Alert: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the alerts resource. | 
 **PutAlertAcknowledgement** | [**PutAlertAcknowledgement**](PutAlertAcknowledgement.md)|  | [optional] 

### Return type

[**PutAlertAcknowledgement**](PutAlertAcknowledgement.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Confirm-Alerts"></a>
# **Confirm-Alerts**
> MessageBulk Confirm-Alerts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MessageBulk] <PSCustomObject><br>

Update message acknowledgements by ID

Updates acknowledgement object of bulk messages. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$AlertAcknowledgement = Initialize-AlertAcknowledgement -AcknowledgeBy "MyAcknowledgeBy" -AcknowledgeState "ACKNOWLEDGED" -AcknowledgeTime (Get-Date)

$ErrorResponseObject = Initialize-ErrorResponseObject -Code 0 -Path "MyPath" -Reason "MyReason" -Remediation "MyRemediation" -Timestamp 0
$MessageBulkResult = Initialize-MessageBulkResult -Acknowledgement $AlertAcknowledgement -ErrorResponseObject $ErrorResponseObject -Id "MyId"

$MessageBulk = Initialize-MessageBulk -Acknowledgement $AlertAcknowledgement -AcknowledgementCount 0 -AcknowledgementReceivedCount 0 -BulkResults $MessageBulkResult -MessageIds "MyMessageIds" # MessageBulk |  (optional)

# Update message acknowledgements by ID
try {
    $Result = Confirm-Alerts -MessageBulk $MessageBulk
} catch {
    Write-Host ("Exception occurred when calling Confirm-Alerts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MessageBulk** | [**MessageBulk**](MessageBulk.md)|  | [optional] 

### Return type

[**MessageBulk**](MessageBulk.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-Activity"></a>
# **Stop-Activity**
> Activity Stop-Activity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ActivityCancelRequest] <PSCustomObject><br>

Cancel a running activity

Cancels the selected activity with the specified ID. Activities in running or queued state can be canceled. This API is deprecated since 19.21 and will be deleted after 19.21 + 4 i.e 19.25 release. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the activity resource.
$ActivityCancelRequest = Initialize-ActivityCancelRequest -CancelOption "ALL" # ActivityCancelRequest |  (optional)

# Cancel a running activity
try {
    $Result = Stop-Activity -Id $Id -ActivityCancelRequest $ActivityCancelRequest
} catch {
    Write-Host ("Exception occurred when calling Stop-Activity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the activity resource. | 
 **ActivityCancelRequest** | [**ActivityCancelRequest**](ActivityCancelRequest.md)|  | [optional] 

### Return type

[**Activity**](Activity.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-ExternalNotification"></a>
# **New-ExternalNotification**
> ExternalNotification New-ExternalNotification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Test] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExternalNotification] <PSCustomObject><br>

Create an external notification

Create a new notification configuration. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Test = $true # Boolean | Indicates whether to send a test email. (optional)
$Source = Initialize-Source -Type "DATA_MANAGER"
$ExternalNotification = Initialize-ExternalNotification -CategoryList "MyCategoryList" -Disabled $false -Emails "MyEmails" -Id "MyId" -LastAlertMatchTime (Get-Date) -LastNotificationTime (Get-Date) -MessageIdList "MyMessageIdList" -Name "MyName" -NotificationWindow 0 -Protocol "SMTP" -SeverityList "MySeverityList" -Source $Source -SubjectOverride "MySubjectOverride" # ExternalNotification |  (optional)

# Create an external notification
try {
    $Result = New-ExternalNotification -Test $Test -ExternalNotification $ExternalNotification
} catch {
    Write-Host ("Exception occurred when calling New-ExternalNotification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Test** | **Boolean**| Indicates whether to send a test email. | [optional] 
 **ExternalNotification** | [**ExternalNotification**](ExternalNotification.md)|  | [optional] 

### Return type

[**ExternalNotification**](ExternalNotification.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteExternalNotification"></a>
# **Invoke-DeleteExternalNotification**
> void Invoke-DeleteExternalNotification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete an external notification by ID

Deletes an existing notification configuration by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the external notification resource.

# Delete an external notification by ID
try {
    $Result = Invoke-DeleteExternalNotification -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteExternalNotification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the external notification resource. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Activities"></a>
# **Get-Activities**
> Activities Get-Activities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryState] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupByValue] <String><br>

Get all activities

Retrieves a list of all activities. This API is deprecated since 19.21 and will be deleted after 19.21 + 4 i.e 19.25 release. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator  > This endpoint supports pagination with types: random,serial 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$QueryState = "MyQueryState" # String | Token string to retrieve the next page of a result. The initial search request with queryState must be queryState=BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. (optional)
$Q = "MyQ" # String | A general search text. For example: q=VM_1 where the following fields will be searched for VM_1.  The following fields are searched:      name     result.summaries     result.error.reason     result.error.remediation     logInfo.logText     asset.name     asset.type     copy.name     copy.type     dataTarget.name     host.name     protectionPolicy.name     sourceDataTarget.name     owner.name     lastUpdateTime     createdTime or createTime  (optional)
$GroupBy = "MyGroupBy" # String | Entity type to group asset-level activities by. (optional)
$GroupByValue = "MyGroupByValue" # String | Value of entity of type specified in groupBy parameter. (optional)

# Get all activities
try {
    $Result = Get-Activities -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -QueryState $QueryState -Q $Q -GroupBy $GroupBy -GroupByValue $GroupByValue
} catch {
    Write-Host ("Exception occurred when calling Get-Activities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **QueryState** | **String**| Token string to retrieve the next page of a result. The initial search request with queryState must be queryState&#x3D;BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. | [optional] 
 **Q** | **String**| A general search text. For example: q&#x3D;VM_1 where the following fields will be searched for VM_1.  The following fields are searched:      name     result.summaries     result.error.reason     result.error.remediation     logInfo.logText     asset.name     asset.type     copy.name     copy.type     dataTarget.name     host.name     protectionPolicy.name     sourceDataTarget.name     owner.name     lastUpdateTime     createdTime or createTime  | [optional] 
 **GroupBy** | **String**| Entity type to group asset-level activities by. | [optional] 
 **GroupByValue** | **String**| Value of entity of type specified in groupBy parameter. | [optional] 

### Return type

[**Activities**](Activities.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Activity"></a>
# **Get-Activity**
> Activity Get-Activity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get an activity by ID

Retrieves an activity resource with matching ID. This API is deprecated since 19.21 and will be deleted after 19.21 + 4 i.e 19.25 release. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the activity resource.

# Get an activity by ID
try {
    $Result = Get-Activity -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Activity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the activity resource. | 

### Return type

[**Activity**](Activity.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ActivityMetrics"></a>
# **Get-ActivityMetrics**
> ActivityMetrics Get-ActivityMetrics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Get aggregation of state counts for activities

Retrieves aggregation metrics for job and job groups in different states. This API is deprecated since 19.21 and will be deleted after 19.21 + 4 i.e 19.25 release. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)

# Get aggregation of state counts for activities
try {
    $Result = Get-ActivityMetrics -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Get-ActivityMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 

### Return type

[**ActivityMetrics**](ActivityMetrics.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Alert"></a>
# **Get-Alert**
> Alert Get-Alert<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get an alert message by ID

Retrieves an alert message with the specified ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the alerts resource.

# Get an alert message by ID
try {
    $Result = Get-Alert -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Alert: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the alerts resource. | 

### Return type

[**Alert**](Alert.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AlertMetrics"></a>
# **Get-AlertMetrics**
> AlertMetrics Get-AlertMetrics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Get all Alert metrics

Retrieves all alert metrics posted within a given time interval and includes the number of unacknowledged critical, warning, and informational alerts. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)

# Get all Alert metrics
try {
    $Result = Get-AlertMetrics -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Get-AlertMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 

### Return type

[**AlertMetrics**](AlertMetrics.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Alerts"></a>
# **Get-Alerts**
> Alerts Get-Alerts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryState] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>

Get all alerts

Retrieves a list of alerts. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator  > This endpoint supports pagination with types: random,serial 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$QueryState = "MyQueryState" # String | Token string to retrieve the next page of a result. The initial search request with queryState must be queryState=BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. (optional)
$Q = "MyQ" # String | The general search text. For example q=VM_1 (optional)

# Get all alerts
try {
    $Result = Get-Alerts -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -QueryState $QueryState -Q $Q
} catch {
    Write-Host ("Exception occurred when calling Get-Alerts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **QueryState** | **String**| Token string to retrieve the next page of a result. The initial search request with queryState must be queryState&#x3D;BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. | [optional] 
 **Q** | **String**| The general search text. For example q&#x3D;VM_1 | [optional] 

### Return type

[**Alerts**](Alerts.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AuditLog"></a>
# **Get-AuditLog**
> AuditLog Get-AuditLog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get an audit log resource by ID

Retrieves the audit log resource that matches the given ID.  Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the audit log resource.

# Get an audit log resource by ID
try {
    $Result = Get-AuditLog -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-AuditLog: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the audit log resource. | 

### Return type

[**AuditLog**](AuditLog.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AuditLogs"></a>
# **Get-AuditLogs**
> AuditLogs Get-AuditLogs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryState] <String><br>

Get all audit log resources

Retrieves all the audit log resources.  Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator  > This endpoint supports pagination with types: random,serial 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$QueryState = "MyQueryState" # String | Token string to retrieve the next page of a result. The initial search request with queryState must be queryState=BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. (optional)

# Get all audit log resources
try {
    $Result = Get-AuditLogs -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -QueryState $QueryState
} catch {
    Write-Host ("Exception occurred when calling Get-AuditLogs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **QueryState** | **String**| Token string to retrieve the next page of a result. The initial search request with queryState must be queryState&#x3D;BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. | [optional] 

### Return type

[**AuditLogs**](AuditLogs.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ExternalNotification"></a>
# **Get-ExternalNotification**
> ExternalNotification Get-ExternalNotification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get an external notification by ID

Retrieves an external notification by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the external notification resource.

# Get an external notification by ID
try {
    $Result = Get-ExternalNotification -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ExternalNotification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the external notification resource. | 

### Return type

[**ExternalNotification**](ExternalNotification.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ExternalNotifications"></a>
# **Get-ExternalNotifications**
> ExternalNotifications Get-ExternalNotifications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryState] <String><br>

Get all configured external notifications

Retrieves all configured external notifications. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator  > This endpoint supports pagination with types: random,serial 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$QueryState = "MyQueryState" # String | Token string to retrieve the next page of a result. The initial search request with queryState must be queryState=BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. (optional)

# Get all configured external notifications
try {
    $Result = Get-ExternalNotifications -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -QueryState $QueryState
} catch {
    Write-Host ("Exception occurred when calling Get-ExternalNotifications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **QueryState** | **String**| Token string to retrieve the next page of a result. The initial search request with queryState must be queryState&#x3D;BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. | [optional] 

### Return type

[**ExternalNotifications**](ExternalNotifications.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroupedActivities"></a>
# **Get-GroupedActivities**
> Activities Get-GroupedActivities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryState] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupBy] <String><br>

Get all activities for a group-by entity

Retrieves a list of all activities for a group-by entity. This API is deprecated since 19.21 and will be deleted after 19.21 + 4 i.e 19.25 release. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator  > This endpoint supports pagination with types: random,serial 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$QueryState = "MyQueryState" # String | Token string to retrieve the next page of a result. The initial search request with queryState must be queryState=BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. (optional)
$Q = "MyQ" # String | A general search text. For example: q=VM_1 where the following fields will be searched for VM_1.  The following fields are searched:      name     result.summaries     result.error.reason     result.error.remediation     logInfo.logText     asset.name     asset.type     copy.name     copy.type     dataTarget.name     host.name     protectionPolicy.name     sourceDataTarget.name     owner.name     lastUpdateTime     createdTime or createTime  (optional)
$GroupBy = "MyGroupBy" # String | Entity type to group asset-level activities by. (optional)

# Get all activities for a group-by entity
try {
    $Result = Get-GroupedActivities -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -QueryState $QueryState -Q $Q -GroupBy $GroupBy
} catch {
    Write-Host ("Exception occurred when calling Get-GroupedActivities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **QueryState** | **String**| Token string to retrieve the next page of a result. The initial search request with queryState must be queryState&#x3D;BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. | [optional] 
 **Q** | **String**| A general search text. For example: q&#x3D;VM_1 where the following fields will be searched for VM_1.  The following fields are searched:      name     result.summaries     result.error.reason     result.error.remediation     logInfo.logText     asset.name     asset.type     copy.name     copy.type     dataTarget.name     host.name     protectionPolicy.name     sourceDataTarget.name     owner.name     lastUpdateTime     createdTime or createTime  | [optional] 
 **GroupBy** | **String**| Entity type to group asset-level activities by. | [optional] 

### Return type

[**Activities**](Activities.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionDetails"></a>
# **Get-ProtectionDetails**
> ProtectionDetails Get-ProtectionDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryState] <String><br>

Get a list of protection details

Retrieves a list of existing protections such as backups and replications. If there are too many results, this API request returns the HTTP response code 416 (REQUEST RANGE NOT SATISFIABLE). If successful, the API request returns the HTTP response code 200 (OK). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User  > This endpoint supports pagination with types: random,serial 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$QueryState = "MyQueryState" # String | Token string to retrieve the next page of a result. The initial search request with queryState must be queryState=BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. (optional)

# Get a list of protection details
try {
    $Result = Get-ProtectionDetails -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -QueryState $QueryState
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **QueryState** | **String**| Token string to retrieve the next page of a result. The initial search request with queryState must be queryState&#x3D;BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. | [optional] 

### Return type

[**ProtectionDetails**](ProtectionDetails.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SystemHealthIssues"></a>
# **Get-SystemHealthIssues**
> SystemHealthIssues Get-SystemHealthIssues<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryState] <String><br>

Get system health issues

Get all system health issues. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$QueryState = "MyQueryState" # String | Token string to retrieve the next page of a result. The initial search request with queryState must be queryState=BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. (optional)

# Get system health issues
try {
    $Result = Get-SystemHealthIssues -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -QueryState $QueryState
} catch {
    Write-Host ("Exception occurred when calling Get-SystemHealthIssues: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **QueryState** | **String**| Token string to retrieve the next page of a result. The initial search request with queryState must be queryState&#x3D;BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. | [optional] 

### Return type

[**SystemHealthIssues**](SystemHealthIssues.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SystemHealthMetrics"></a>
# **Get-SystemHealthMetrics**
> SystemComponentsHealthMetric Get-SystemHealthMetrics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryState] <String><br>

Get system health metrics

Retrieves the system health metrics. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$QueryState = "MyQueryState" # String | Token string to retrieve the next page of a result. The initial search request with queryState must be queryState=BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. (optional)

# Get system health metrics
try {
    $Result = Get-SystemHealthMetrics -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -QueryState $QueryState
} catch {
    Write-Host ("Exception occurred when calling Get-SystemHealthMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 
 **QueryState** | **String**| Token string to retrieve the next page of a result. The initial search request with queryState must be queryState&#x3D;BEGIN and a pageSize. After a search begins, subsequent responses include a token string to pass as a parameter for the next page retrieval. When the query state in the response that is returned from the previous search is END, no further results can be retrieved from this query. For more details, under Tasks, see Page the result. | [optional] 

### Return type

[**SystemComponentsHealthMetric**](SystemComponentsHealthMetric.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SystemScoreCategories"></a>
# **Get-SystemScoreCategories**
> SystemHealthScoreCategories Get-SystemScoreCategories<br>

Get system health score categories

Retrieve system health score categories Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get system health score categories
try {
    $Result = Get-SystemScoreCategories
} catch {
    Write-Host ("Exception occurred when calling Get-SystemScoreCategories: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemHealthScoreCategories**](SystemHealthScoreCategories.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RetryActivity"></a>
# **Invoke-RetryActivity**
> ActivityRetryBulkResponse Invoke-RetryActivity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ActivityRetryBulkRequest] <PSCustomObject><br>

Retry a failed activity

Retries one or more failed jobs within a job group for the specified ID. This API is deprecated since 19.21 and will be deleted after 19.21 + 4 i.e 19.25 release. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the activity resource.
$ActivityRetryBulkRequest = Initialize-ActivityRetryBulkRequest -RetryJobIds "MyRetryJobIds" # ActivityRetryBulkRequest |  (optional)

# Retry a failed activity
try {
    $Result = Invoke-RetryActivity -Id $Id -ActivityRetryBulkRequest $ActivityRetryBulkRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-RetryActivity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the activity resource. | 
 **ActivityRetryBulkRequest** | [**ActivityRetryBulkRequest**](ActivityRetryBulkRequest.md)|  | [optional] 

### Return type

[**ActivityRetryBulkResponse**](ActivityRetryBulkResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Alert"></a>
# **Update-Alert**
> Alert Update-Alert<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Alert] <PSCustomObject><br>

Update message acknowledgement or user note by ID

Updates acknowledgement object of a message. Adds or updates userNote object of a message. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the alerts resource.
$AlertAcknowledgement = Initialize-AlertAcknowledgement -AcknowledgeBy "MyAcknowledgeBy" -AcknowledgeState "ACKNOWLEDGED" -AcknowledgeTime (Get-Date)
"ACKNOWLEDGE"$NameValuePairString = Initialize-NameValuePairString -Name "MyName" -Value "MyValue"
$AlertDetailSummary = Initialize-AlertDetailSummary -Summary "MySummary" -TaskId "MyTaskId"

$PartIdentifier = Initialize-PartIdentifier -PartIdType "MyPartIdType" -PartValue "MyPartValue"
$HardwareInfo = Initialize-HardwareInfo -ChassisId "MyChassisId" -ChassisPosition "MyChassisPosition" -PartIdentifiers $PartIdentifier -PartModel "MyPartModel" -PartName "MyPartName" -PartRev "MyPartRev" -PartType "MyPartType"

$EntityMessageResource = Initialize-EntityMessageResource -Id "MyId" -Name "MyName" -Type "COPY" -Url "MyUrl"
$MessageSource = Initialize-MessageSource -Description "MyDescription" -Id "MyId" -Type "DATA_MANAGER"
$UserNote = Initialize-UserNote -Note "MyNote" -UpdatedTime (Get-Date) -Username "MyUsername"
$Alert = Initialize-Alert -Acknowledgement $AlertAcknowledgement -ActivitiesCount 0 -BlockedActions 
$AlertAcknowledgement = Initialize-AlertAcknowledgement -AcknowledgeBy "MyAcknowledgeBy" -AcknowledgeState "ACKNOWLEDGED" -AcknowledgeTime (Get-Date)
"ACKNOWLEDGE" -Category "AGENT" -CustomDetails $NameValuePairString -DetailSummaries $AlertDetailSummary -DetailedDescription "MyDetailedDescription" -Email $false -Esrs $false -Excluded $false -ExternalId "MyExternalId" -HardwareInfo $HardwareInfo -Id "MyId" -JobId "MyJobId" -LastOccurrenceTime (Get-Date) -Message "MyMessage" -MessageArgs "MyMessageArgs" -MessageID "MyMessageID" -PostedTime (Get-Date) -Resource $EntityMessageResource -ResponseAction "MyResponseAction" -Severity "CRITICAL" -Source $MessageSource -Subcategory "AUTHENTICATION" -SupportDetails "MySupportDetails" -TaskId "MyTaskId" -UserNote $UserNote -Visibility $false # Alert |  (optional)

# Update message acknowledgement or user note by ID
try {
    $Result = Update-Alert -Id $Id -Alert $Alert
} catch {
    Write-Host ("Exception occurred when calling Update-Alert: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the alerts resource. | 
 **Alert** | [**Alert**](Alert.md)|  | [optional] 

### Return type

[**Alert**](Alert.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-AuditLogNotes"></a>
# **Update-AuditLogNotes**
> AuditLog Update-AuditLogNotes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuditLog] <PSCustomObject><br>

Update the AuditLog resource by ID

Updates the audit log resource with the given ID.  Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the audit log resource.
$AuditLogChangedBy = Initialize-AuditLogChangedBy -Id "MyId" -Username "MyUsername"
$AuditLogChangedObject = Initialize-AuditLogChangedObject -Id "MyId" -ResourceName "MyResourceName" -ResourceType "MyResourceType"
$AuditLogSource = Initialize-AuditLogSource -Description "MyDescription" -Id "MyId" -Type "DATA_MANAGER"
$UserNote = Initialize-UserNote -Note "MyNote" -UpdatedTime (Get-Date) -Username "MyUsername"
$AuditLog = Initialize-AuditLog -After "MyAfter" -AuditType "APP_HOST_CONFIGURATION" -Before "MyBefore" -ChangeDescription "MyChangeDescription" -ChangedBy $AuditLogChangedBy -ChangedObject $AuditLogChangedObject -ChangedTime (Get-Date) -CreatedAt (Get-Date) -ExternalId "MyExternalId" -Id "MyId" -MessageArgs "MyMessageArgs" -MessageID "MyMessageID" -Source $AuditLogSource -UserNote $UserNote # AuditLog |  (optional)

# Update the AuditLog resource by ID
try {
    $Result = Update-AuditLogNotes -Id $Id -AuditLog $AuditLog
} catch {
    Write-Host ("Exception occurred when calling Update-AuditLogNotes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the audit log resource. | 
 **AuditLog** | [**AuditLog**](AuditLog.md)|  | [optional] 

### Return type

[**AuditLog**](AuditLog.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ExternalNotification"></a>
# **Update-ExternalNotification**
> ExternalNotification Update-ExternalNotification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExternalNotification] <PSCustomObject><br>

Update external notification by ID

Updates an external notification by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the external notification resource.
$Source = Initialize-Source -Type "DATA_MANAGER"
$ExternalNotification = Initialize-ExternalNotification -CategoryList "MyCategoryList" -Disabled $false -Emails "MyEmails" -Id "MyId" -LastAlertMatchTime (Get-Date) -LastNotificationTime (Get-Date) -MessageIdList "MyMessageIdList" -Name "MyName" -NotificationWindow 0 -Protocol "SMTP" -SeverityList "MySeverityList" -Source $Source -SubjectOverride "MySubjectOverride" # ExternalNotification |  (optional)

# Update external notification by ID
try {
    $Result = Update-ExternalNotification -Id $Id -ExternalNotification $ExternalNotification
} catch {
    Write-Host ("Exception occurred when calling Update-ExternalNotification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the external notification resource. | 
 **ExternalNotification** | [**ExternalNotification**](ExternalNotification.md)|  | [optional] 

### Return type

[**ExternalNotification**](ExternalNotification.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

