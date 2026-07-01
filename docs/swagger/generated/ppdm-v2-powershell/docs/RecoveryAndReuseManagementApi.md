# PpdmApiReference.PpdmApiReference\Api.RecoveryAndReuseManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-RecoveryContexts**](RecoveryAndReuseManagementApi.md#Get-RecoveryContexts) | **GET** /api/v2/recovery-contexts | Get all the available recovery contexts
[**Get-ServerDrReconciliationMetadata**](RecoveryAndReuseManagementApi.md#Get-ServerDrReconciliationMetadata) | **GET** /api/v2/server-disaster-recovery-backup-reconciliation | Get current server disaster recovery configurations
[**Get-ServerDrRecoveryPolicy**](RecoveryAndReuseManagementApi.md#Get-ServerDrRecoveryPolicy) | **GET** /api/v2/server-disaster-recovery-policy | Gets the current Spring application properties
[**Invoke-MarkHostAsDeleted**](RecoveryAndReuseManagementApi.md#Invoke-MarkHostAsDeleted) | **POST** /api/v2/hosts/{id}/change-status | Mark a host by ID as &#39;DELETED&#39;
[**Update-ServerDrRecoveryPolicy**](RecoveryAndReuseManagementApi.md#Update-ServerDrRecoveryPolicy) | **PATCH** /api/v2/server-disaster-recovery-policy | Updates the current Spring application properties


<a id="Get-RecoveryContexts"></a>
# **Get-RecoveryContexts**
> RecoveryContexts Get-RecoveryContexts<br>

Get all the available recovery contexts

Retrieve all the available contexts of both local and remote PowerProtect Data Manager systems when quick recovery is configured; otherwise, retrieve only the local context. If successful, it returns the HTTP response code 200 (OK). The local field determines whether the context belongs to local or remote PowerProtect Data Manager system. The systemId return null for the local context and the nodeId of the respective PowerProtect Data Manager for remote contexts. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get all the available recovery contexts
try {
    $Result = Get-RecoveryContexts
} catch {
    Write-Host ("Exception occurred when calling Get-RecoveryContexts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RecoveryContexts**](RecoveryContexts.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ServerDrReconciliationMetadata"></a>
# **Get-ServerDrReconciliationMetadata**
> SdrRecoveryReconciliationMetaData Get-ServerDrReconciliationMetadata<br>

Get current server disaster recovery configurations

Retrieves the server disaster recovery reconciliation metadata. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get current server disaster recovery configurations
try {
    $Result = Get-ServerDrReconciliationMetadata
} catch {
    Write-Host ("Exception occurred when calling Get-ServerDrReconciliationMetadata: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SdrRecoveryReconciliationMetaData**](SdrRecoveryReconciliationMetaData.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ServerDrRecoveryPolicy"></a>
# **Get-ServerDrRecoveryPolicy**
> ConfigurationObject Get-ServerDrRecoveryPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-View] <String><br>

Gets the current Spring application properties

Returns current Spring application properties that are currently in operation. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$View = "MyView" # String | SETTINGS_ONLY: Returns subset of Policy settings (optional)

# Gets the current Spring application properties
try {
    $Result = Get-ServerDrRecoveryPolicy -View $View
} catch {
    Write-Host ("Exception occurred when calling Get-ServerDrRecoveryPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **View** | **String**| SETTINGS_ONLY: Returns subset of Policy settings | [optional] 

### Return type

[**ConfigurationObject**](ConfigurationObject.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-MarkHostAsDeleted"></a>
# **Invoke-MarkHostAsDeleted**
> MarkHostAsDeletedResponse Invoke-MarkHostAsDeleted<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HostChangeStatus] <PSCustomObject><br>

Mark a host by ID as 'DELETED'

Update the status of a **Host** of type APP_HOST to ""DELETED"". Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The host ID.
$HostChangeStatus = Initialize-HostChangeStatus -Status "DELETED" # HostChangeStatus |  (optional)

# Mark a host by ID as 'DELETED'
try {
    $Result = Invoke-MarkHostAsDeleted -Id $Id -HostChangeStatus $HostChangeStatus
} catch {
    Write-Host ("Exception occurred when calling Invoke-MarkHostAsDeleted: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The host ID. | 
 **HostChangeStatus** | [**HostChangeStatus**](HostChangeStatus.md)|  | [optional] 

### Return type

[**MarkHostAsDeletedResponse**](MarkHostAsDeletedResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ServerDrRecoveryPolicy"></a>
# **Update-ServerDrRecoveryPolicy**
> void Update-ServerDrRecoveryPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationObject] <PSCustomObject><br>

Updates the current Spring application properties

Update the current Spring application properties and the records on elastic search. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ConfigurationObject = Initialize-ConfigurationObject -AdHocBackupRetentionInHours "MyAdHocBackupRetentionInHours" -BackupFrequencyInHours "MyBackupFrequencyInHours" -EventAccumulatedTimeInMinutes "MyEventAccumulatedTimeInMinutes" -EventElapsedTimeInMinutes "MyEventElapsedTimeInMinutes" -NumberOfDaysBackupsAvailable "MyNumberOfDaysBackupsAvailable" -SystemBackupRetentionInHours "MySystemBackupRetentionInHours" -ValidSpringConfiguration $false # ConfigurationObject | 

# Updates the current Spring application properties
try {
    $Result = Update-ServerDrRecoveryPolicy -ConfigurationObject $ConfigurationObject
} catch {
    Write-Host ("Exception occurred when calling Update-ServerDrRecoveryPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConfigurationObject** | [**ConfigurationObject**](ConfigurationObject.md)|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

