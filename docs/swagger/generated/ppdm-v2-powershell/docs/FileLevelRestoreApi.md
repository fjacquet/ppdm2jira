# PpdmApiReference.PpdmApiReference\Api.FileLevelRestoreApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Session**](FileLevelRestoreApi.md#New-Session) | **POST** /api/v2/flr-sessions | Create a new FLR Session
[**Invoke-DeleteSession**](FileLevelRestoreApi.md#Invoke-DeleteSession) | **DELETE** /api/v2/flr-sessions/{flrSessionId} | Delete the specified FLR session
[**Invoke-FileLevelRestoreBatch**](FileLevelRestoreApi.md#Invoke-FileLevelRestoreBatch) | **POST** /api/v2/flr-sessions-batch | Submit multiple File Level Restore requests in batch
[**Get-Session**](FileLevelRestoreApi.md#Get-Session) | **GET** /api/v2/flr-sessions/{flrSessionId} | Get FLR session state
[**Invoke-ListFiles**](FileLevelRestoreApi.md#Invoke-ListFiles) | **GET** /api/v2/flr-sessions/{flrSessionId}/files | Get the directory file list
[**Restore-Files**](FileLevelRestoreApi.md#Restore-Files) | **POST** /api/v2/flr-sessions/{flrSessionId}/tasks | Restore files picked during the browse
[**Update-Session**](FileLevelRestoreApi.md#Update-Session) | **PUT** /api/v2/flr-sessions/{flrSessionId} | Update FLR session


<a id="New-Session"></a>
# **New-Session**
> MountResponse New-Session<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MountParams] <PSCustomObject><br>

Create a new FLR Session

Establishes a File-Level-Restore (FLR) session. An FLR session is used to restore individual files or directories as opposed to performing an Image-Level-Restore (that is, restoring entire VMs).  Calling this API mounts the disks of a copy to a target VM. The ID of the copy and the ID of the target Virtual Machine (VM) are acquired by browsing the PowerProtect Data Manager inventory. The mount operation will make the files present on the mounted disk available for selection to be restored. Once the disks are mounted onto the target VM, the disk file system (or systems) may be browsed directory-by-directory. The caller may select files within each directory to be restored.  The mounting of the disk from the copy is an asynchronous operation, so the response from this API contains a PowerProtect Data Manager task ID and a hyperlink. The task API can be called to monitor the progress of of the operation. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$MountParams = Initialize-MountParams -CopyId "MyCopyId" -ElevateUser $false -NoMount $false -Passcode "MyPasscode" -RemoveAgent $false -TargetPassword "MyTargetPassword" -TargetUser "MyTargetUser" -TargetVmAssetId "MyTargetVmAssetId" -Timeout 0 # MountParams |  (optional)

# Create a new FLR Session
try {
    $Result = New-Session -MountParams $MountParams
} catch {
    Write-Host ("Exception occurred when calling New-Session: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MountParams** | [**MountParams**](MountParams.md)|  | [optional] 

### Return type

[**MountResponse**](MountResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteSession"></a>
# **Invoke-DeleteSession**
> MountResponse Invoke-DeleteSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FlrSessionId] <String><br>

Delete the specified FLR session

Unmounts the disks from the target VM and deletes the FLR session resource. A prerequisite is that an flrSessionId be created by creating a new FLR session (POST /api/v2/flr-sessions).  The usual workflow is to browse the directories after creating the session, and collect a list (on the client side) of the file paths to be restored.  The final step of the restore files API is to automatically delete the FLR session. Calling this API after the restore files API is called is not necessary.  Deleting the FLR session is typically the last (cleanup) step of the workflow, which will release the resources allocated to maintain the FLR browse session.  Unmounting the disks from the target VM is an asynchronous operation. The response from this API contains a PowerProtect Data Manager task API reference. The task API can be called to determine the progress of this operation. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$FlrSessionId = "MyFlrSessionId" # String | Restored files ID.

# Delete the specified FLR session
try {
    $Result = Invoke-DeleteSession -FlrSessionId $FlrSessionId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FlrSessionId** | **String**| Restored files ID. | 

### Return type

[**MountResponse**](MountResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-FileLevelRestoreBatch"></a>
# **Invoke-FileLevelRestoreBatch**
> RestoredFilesBatchResponses Invoke-FileLevelRestoreBatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RestoredFilesBatchRequests] <PSCustomObject><br>

Submit multiple File Level Restore requests in batch

Submit multiple File Level Restore requests in a batch operation.  Each request is submitted as a separate FLR session and results in a separate Job in a JobGroup.  Each Copy is mounted on the TargetVM and the selected files are restored, then the Copy is unmounted.  Jobs may run sequentially or in parallel, depending on the details of the request and available resources. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$RestoredFilesBatchRequestBody = Initialize-RestoredFilesBatchRequestBody -CopyId "MyCopyId" -ElevateUser $false -NoMount $false -Passcode "MyPasscode" -RemoveAgent $false -TargetPassword "MyTargetPassword" -TargetUser "MyTargetUser" -TargetVmAssetId "MyTargetVmAssetId" -Timeout 0 -FilePaths "MyFilePaths" -OverwriteExisting $false -RestoreToOriginalPath $false -TargetDirectory "MyTargetDirectory"
$RestoredFilesBatchRequest = Initialize-RestoredFilesBatchRequest -Body $RestoredFilesBatchRequestBody -Id "MyId"

$RestoredFilesBatchRequests = Initialize-RestoredFilesBatchRequests -Requests $RestoredFilesBatchRequest # RestoredFilesBatchRequests |  (optional)

# Submit multiple File Level Restore requests in batch
try {
    $Result = Invoke-FileLevelRestoreBatch -RestoredFilesBatchRequests $RestoredFilesBatchRequests
} catch {
    Write-Host ("Exception occurred when calling Invoke-FileLevelRestoreBatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RestoredFilesBatchRequests** | [**RestoredFilesBatchRequests**](RestoredFilesBatchRequests.md)|  | [optional] 

### Return type

[**RestoredFilesBatchResponses**](RestoredFilesBatchResponses.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Session"></a>
# **Get-Session**
> UpdateBrowseRequest Get-Session<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FlrSessionId] <String><br>

Get FLR session state

Returns the current settings (the UpdateBrowseRequest) for the specified FLR Session ID.  A prerequisite is that an flrSessionId be created by creating a new FLR session (POST /api/v2/flr-sessions). The usual workflow is to browse the directories after creating the session, and collect a list (on the client side) of the file paths to be restored (and browsing would be done, in part, by this API). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$FlrSessionId = "MyFlrSessionId" # String | Restored files ID.

# Get FLR session state
try {
    $Result = Get-Session -FlrSessionId $FlrSessionId
} catch {
    Write-Host ("Exception occurred when calling Get-Session: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FlrSessionId** | **String**| Restored files ID. | 

### Return type

[**UpdateBrowseRequest**](UpdateBrowseRequest.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ListFiles"></a>
# **Invoke-ListFiles**
> DirectoryFileList Invoke-ListFiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FlrSessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get the directory file list

Retrieves the directory file list for the specified FLR session ID. The file list can be filtered based on the optional filter and paging query parameters.  A prerequisite is that an flrSessionId be created by creating a new FLR session (POST /api/v2/flr-sessions). The usual workflow is to browse the directories after creating the session, and collect a list (on the client side) of the file paths to be restored.  This API call allows the caller to retrieve the file list corresponding to the current directory in the FLR browse session. Finally, the caller calls the flr-sessions/{flrSessionId}/tasks API with the desired file list to restore those files on the target VM. The FLR session is automatically closed down when the restore task API is called. Otherwise, the session is be terminated by calling the DELETE API. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$FlrSessionId = "MyFlrSessionId" # String | Restored files ID.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get the directory file list
try {
    $Result = Invoke-ListFiles -FlrSessionId $FlrSessionId -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListFiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FlrSessionId** | **String**| Restored files ID. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**DirectoryFileList**](DirectoryFileList.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Restore-Files"></a>
# **Restore-Files**
> RestoreFilesResponse Restore-Files<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FlrSessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RestoreFilesRequest] <PSCustomObject><br>

Restore files picked during the browse

Restores the files specified in the request body. Once the files are restored, the FLR session is deleted. It is not necessary to call the DELETE API after calling this API.  A prerequisite is that an flrSessionId be created by creating a new FLR session (POST /api/v2/flr-sessions).  The usual workflow is to then browse the directories after creating the session, and collect a list (on the client side) of the file paths to be restored, and then call this API to restore the files.  Restoring the files is an asynchronous operation. The response from this API contains a PowerProtect Data Manager task ID and API reference. The task API can be called to determine the progress of this operation.  Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$FlrSessionId = "MyFlrSessionId" # String | Restored files ID.
$RestoreFilesRequest = Initialize-RestoreFilesRequest -FilePaths "MyFilePaths" -OverwriteExisting $false -RestoreToOriginalPath $false -TargetDirectory "MyTargetDirectory" # RestoreFilesRequest |  (optional)

# Restore files picked during the browse
try {
    $Result = Restore-Files -FlrSessionId $FlrSessionId -RestoreFilesRequest $RestoreFilesRequest
} catch {
    Write-Host ("Exception occurred when calling Restore-Files: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FlrSessionId** | **String**| Restored files ID. | 
 **RestoreFilesRequest** | [**RestoreFilesRequest**](RestoreFilesRequest.md)|  | [optional] 

### Return type

[**RestoreFilesResponse**](RestoreFilesResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Session"></a>
# **Update-Session**
> UpdateBrowseRequest Update-Session<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FlrSessionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateBrowseRequest] <PSCustomObject><br>

Update FLR session

Changes the directories on the target or in the backup for the specified FLR session ID.  A prerequisite is that an flrSessionId be created by creating a new FLR session (POST /api/v2/flr-sessions).  The usual workflow is to browse the directories after creating the session (where changing directories is part of the browsing, and would be achieved by calling this API). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$FlrSessionId = "MyFlrSessionId" # String | Restored files ID.
$UpdateBrowseRequest = Initialize-UpdateBrowseRequest -BrowseDest $false -Directory "MyDirectory" # UpdateBrowseRequest |  (optional)

# Update FLR session
try {
    $Result = Update-Session -FlrSessionId $FlrSessionId -UpdateBrowseRequest $UpdateBrowseRequest
} catch {
    Write-Host ("Exception occurred when calling Update-Session: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FlrSessionId** | **String**| Restored files ID. | 
 **UpdateBrowseRequest** | [**UpdateBrowseRequest**](UpdateBrowseRequest.md)|  | [optional] 

### Return type

[**UpdateBrowseRequest**](UpdateBrowseRequest.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

