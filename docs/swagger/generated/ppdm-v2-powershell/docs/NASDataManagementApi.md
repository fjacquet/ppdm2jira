# PpdmApiReference.PpdmApiReference\Api.NASDataManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-AssetConnectivityCheck**](NASDataManagementApi.md#Invoke-AssetConnectivityCheck) | **POST** /api/v2/nas-utility/asset-connectivity-check | Check asset connectivity
[**New-NasFLRSession**](NASDataManagementApi.md#New-NasFLRSession) | **POST** /api/v2/restored-files-batch | Creates FLR session
[**Invoke-DiscoverNasCopies**](NASDataManagementApi.md#Invoke-DiscoverNasCopies) | **POST** /api/v2/discover-nas-copies | Trigger NAS copy discovery
[**Submit-ApiV2CheckNasFlrSelectionConflicts**](NASDataManagementApi.md#Submit-ApiV2CheckNasFlrSelectionConflicts) | **POST** /api/v2/check-nas-flr-selection-conflicts | Check for NAS FLR selection conflicts


<a id="Invoke-AssetConnectivityCheck"></a>
# **Invoke-AssetConnectivityCheck**
> ShareResourceResponse Invoke-AssetConnectivityCheck<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ShareResourceRequest] <PSCustomObject><br>

Check asset connectivity

Checks whether the the mount point is reachable via ping operation Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator, restore_operator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ShareCredentials = Initialize-ShareCredentials -Id "MyId" -Password "MyPassword" -Username "MyUsername"
$SourceRequest = Initialize-SourceRequest -AssetId "MyAssetId" -Url "MyUrl"
$ShareResourceRequest = Initialize-ShareResourceRequest -Credentials $ShareCredentials -Source $SourceRequest # ShareResourceRequest |  (optional)

# Check asset connectivity
try {
    $Result = Invoke-AssetConnectivityCheck -ShareResourceRequest $ShareResourceRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-AssetConnectivityCheck: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ShareResourceRequest** | [**ShareResourceRequest**](ShareResourceRequest.md)|  | [optional] 

### Return type

[**ShareResourceResponse**](ShareResourceResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-NasFLRSession"></a>
# **New-NasFLRSession**
> FlrRestoreRequest New-NasFLRSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FlrRestoreRequest] <PSCustomObject><br>

Creates FLR session

Establishes a File-Level-Restore (FLR) session. An FLR session is used to restore individual files or directories as opposed to performing an Image-Level-Restore (that is, restoring entire NAS Share(s)).  Calling this API creates Job Group/Job/Task per request. A job is created per Asset and each task represents single/multiple copies the selected files/folders are part of. NAS Pillar then reserves proxy(ies) to run single/multiple restore sessions.   Since the restore operation being executed on proxy is asynchronous operation, so the response from this API contains a PowerProtect Data Manager task ID(JOB). The task API can be called to monitor the progress of the operation. Currently supported for only NAS FLR. In the future Virtual Machine (VM) FLR will use the same API. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator, restore_operator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Paths = Initialize-Paths -Path "MyPath" -PathHash "MyPathHash" -SliceSsid "MySliceSsid" -Type "FILE"
$FlrSource = Initialize-FlrSource -CopyNaturalId "MyCopyNaturalId" -Paths $Paths

$Strategy = Initialize-Strategy -OverwriteExisting $false -RestoreToOriginalPath $false -RetainFolderHierarchy $false -SourceFileCollisionHandling "MySourceFileCollisionHandling"

$NasCredential = Initialize-NasCredential -Password "MyPassword" -Username "MyUsername"
$Target = Initialize-Target -AssetId "MyAssetId" -Credential $NasCredential -Directory "MyDirectory"

$FlrBody = Initialize-FlrBody -Options "MyOptions" -Source $FlrSource -Strategy $Strategy -Target $Target

$FlrRequests = Initialize-FlrRequests -Body $FlrBody -Id "MyId"

$FlrRestoreRequest = Initialize-FlrRestoreRequest -Requests $FlrRequests # FlrRestoreRequest |  (optional)

# Creates FLR session
try {
    $Result = New-NasFLRSession -FlrRestoreRequest $FlrRestoreRequest
} catch {
    Write-Host ("Exception occurred when calling New-NasFLRSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FlrRestoreRequest** | [**FlrRestoreRequest**](FlrRestoreRequest.md)|  | [optional] 

### Return type

[**FlrRestoreRequest**](FlrRestoreRequest.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DiscoverNasCopies"></a>
# **Invoke-DiscoverNasCopies**
> AsynchronousResponse Invoke-DiscoverNasCopies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CopyDiscoveryResource] <PSCustomObject><br>

Trigger NAS copy discovery

Submits a request to NAS Pillar to discover NAS copies during Server DR. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CopyDiscoveryResource = Initialize-CopyDiscoveryResource -DiscoveryStartTime "MyDiscoveryStartTime" -PolicyIds "MyPolicyIds" -WorkflowTaskId "MyWorkflowTaskId" # CopyDiscoveryResource |  (optional)

# Trigger NAS copy discovery
try {
    $Result = Invoke-DiscoverNasCopies -CopyDiscoveryResource $CopyDiscoveryResource
} catch {
    Write-Host ("Exception occurred when calling Invoke-DiscoverNasCopies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CopyDiscoveryResource** | [**CopyDiscoveryResource**](CopyDiscoveryResource.md)|  | [optional] 

### Return type

[**AsynchronousResponse**](AsynchronousResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-ApiV2CheckNasFlrSelectionConflicts"></a>
# **Submit-ApiV2CheckNasFlrSelectionConflicts**
> FLRConflictsResponse Submit-ApiV2CheckNasFlrSelectionConflicts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FLRConflictsRequest] <PSCustomObject><br>

Check for NAS FLR selection conflicts

Filter out conflicting FLR targets for NAS. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator, restore_operator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$FLRFile = Initialize-FLRFile -Name "MyName" -Path "MyPath" -Type "FILE"
$FLRItem = Initialize-FLRItem -CopyId "MyCopyId" -File $FLRFile

$FLRConflictsRequest = Initialize-FLRConflictsRequest -CommittedTargetList $FLRItem -SelectedTargetList $FLRItem # FLRConflictsRequest |  (optional)

# Check for NAS FLR selection conflicts
try {
    $Result = Submit-ApiV2CheckNasFlrSelectionConflicts -FLRConflictsRequest $FLRConflictsRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-ApiV2CheckNasFlrSelectionConflicts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FLRConflictsRequest** | [**FLRConflictsRequest**](FLRConflictsRequest.md)|  | [optional] 

### Return type

[**FLRConflictsResponse**](FLRConflictsResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

