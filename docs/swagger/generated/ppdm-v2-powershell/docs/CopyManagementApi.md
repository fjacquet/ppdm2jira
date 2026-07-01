# PpdmApiReference.PpdmApiReference\Api.CopyManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-BatchDeleteCopies**](CopyManagementApi.md#Invoke-BatchDeleteCopies) | **POST** /api/v2/copies-deletion-batch | Delete copies in batch
[**Rename-RetentionTime**](CopyManagementApi.md#Rename-RetentionTime) | **PATCH** /api/v2/copies-batch | Change retention time for copies
[**Invoke-CloudCreateCopy**](CopyManagementApi.md#Invoke-CloudCreateCopy) | **POST** /api/v2/copies/{id}/cloud | Recall and retier a copy from cloud
[**Invoke-CloudUpdateCopy**](CopyManagementApi.md#Invoke-CloudUpdateCopy) | **PUT** /api/v2/copies/{id}/cloud | Update recall and retier a copy retier time from cloud
[**New-CloudTieredCopy**](CopyManagementApi.md#New-CloudTieredCopy) | **POST** /api/v2/cloud-tiered-copies | Creates cloud tiering process for an asset or a copy set
[**Invoke-DeleteCopy**](CopyManagementApi.md#Invoke-DeleteCopy) | **DELETE** /api/v2/copies/{id} | Delete copy by ID
[**Get-CopiesReport**](CopyManagementApi.md#Get-CopiesReport) | **GET** /api/v2/copies-report | Export deleted copies as CSV report
[**Get-Copy**](CopyManagementApi.md#Get-Copy) | **GET** /api/v2/copies/{id} | Get copy by ID
[**Get-CopyLogs**](CopyManagementApi.md#Get-CopyLogs) | **GET** /api/v2/copies/{id}/logs | Get copy logs by ID
[**Get-LatestCopies**](CopyManagementApi.md#Get-LatestCopies) | **GET** /api/v2/latest-copies | Get latest copies of specified assets
[**Submit-ApiV2VerifyCloudStorageProfileConnection**](CopyManagementApi.md#Submit-ApiV2VerifyCloudStorageProfileConnection) | **POST** /api/v2/verify-cloud-storage-profile-connection | Verify the cloud storage profile connection
[**Submit-ApiV2VerifyObjectStorageProfileConnection**](CopyManagementApi.md#Submit-ApiV2VerifyObjectStorageProfileConnection) | **POST** /api/v2/verify-object-storage-profile-connection | Verifies the connection with the cloud and HTTP proxy
[**Invoke-QueryCopies**](CopyManagementApi.md#Invoke-QueryCopies) | **POST** /api/v2/copies-query | Get copy list
[**Invoke-QueryCopyGroupsAggregate**](CopyManagementApi.md#Invoke-QueryCopyGroupsAggregate) | **POST** /api/v2/copy-groups-aggregate | Get copy group aggregation by copy IDs
[**Invoke-QueryLatestCopies**](CopyManagementApi.md#Invoke-QueryLatestCopies) | **POST** /api/v2/latest-copies-query | Get latest copies of specified assets
[**Invoke-RecallCloudCopy**](CopyManagementApi.md#Invoke-RecallCloudCopy) | **POST** /api/v2/cloud-recalled-copies | Recalls a copy from the cloud.
[**Update-CloudCopyRetierRetentionTime**](CopyManagementApi.md#Update-CloudCopyRetierRetentionTime) | **PUT** /api/v2/cloud-recalled-copies/{copySetId} | Updates a copy set retier time to the cloud.


<a id="Invoke-BatchDeleteCopies"></a>
# **Invoke-BatchDeleteCopies**
> CopyDeletionBatchResponses Invoke-BatchDeleteCopies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CascadeDelete] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RemoveConfigurationOnly] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForceRemoveLatestBackup] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForceDelete] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupDelete] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CopyDeletionBatchRequests] <PSCustomObject><br>

Delete copies in batch

Batch deletes copies from different assets and stage types. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CascadeDelete = "MyCascadeDelete" # String | For asset type without dependency, this option makes no difference. For asset type with dependency between copies: - cascadeDelete=true deletes all copies in the dependency chain. - cascadeDelete=false does not delete any copy with HTTP status code of 409 (Conflict). - By default, if cascadeDelete is not specified, it functions as if cascadeDelete is false. (optional) (default to "false")
$RemoveConfigurationOnly = "MyRemoveConfigurationOnly" # String | - removeConfigurationOnly=true only deletes metadata from PowerProtect Data Manager without physically deleting from storage or application agent. - removeConfigurationOnly=false deletes copy from storage and application agent (if any). If successfully deletes from storage and application agent, then it deletes metadata from PowerProtect Data Manager. - By default, if removeConfigurationOnly is not specified, it behaves as if removeConfigurationOnly is false. (optional) (default to "false")
$ForceRemoveLatestBackup = "MyForceRemoveLatestBackup" # String | - forceRemoveLatestBackup=true enables deleting the latest backup. It may break the later chain, or for VM CBT backup, it may break the in-progress backup. - forceRemoveLatestBackup=false, if the specified copy is the latest backup, returns 409 error. - By default is forceRemoveLatestBackup is not specified, it behaves as if removeConfigurationOnly is false. (optional) (default to "false")
$ForceDelete = "MyForceDelete" # String | - forceDelete=true enables force deleting without checking the state of the copies. - forceDelete=false if the copy with restoring/cloud tiering state, skip deleting the copy. - By default, if forceDeleteis not specified, it behaves as if forceDeleteis false. (optional) (default to "false")
$GroupDelete = $true # Boolean | - groupDelete=true deletes all the copies that are associated with the copy ID or copy-group members, provided as input. - groupDelete=false deletes only the copy ID, provided as input. - By default, if groupDelete is not specified, it behaves as if groupDelete is false. (optional)
$CopyDeletionRequest = Initialize-CopyDeletionRequest -CopyId "MyCopyId"
$CopyDeletionBatchRequest = Initialize-CopyDeletionBatchRequest -Body $CopyDeletionRequest -Id "MyId"

$CopyDeletionBatchRequests = Initialize-CopyDeletionBatchRequests -Requests $CopyDeletionBatchRequest # CopyDeletionBatchRequests |  (optional)

# Delete copies in batch
try {
    $Result = Invoke-BatchDeleteCopies -CascadeDelete $CascadeDelete -RemoveConfigurationOnly $RemoveConfigurationOnly -ForceRemoveLatestBackup $ForceRemoveLatestBackup -ForceDelete $ForceDelete -GroupDelete $GroupDelete -CopyDeletionBatchRequests $CopyDeletionBatchRequests
} catch {
    Write-Host ("Exception occurred when calling Invoke-BatchDeleteCopies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CascadeDelete** | **String**| For asset type without dependency, this option makes no difference. For asset type with dependency between copies: - cascadeDelete&#x3D;true deletes all copies in the dependency chain. - cascadeDelete&#x3D;false does not delete any copy with HTTP status code of 409 (Conflict). - By default, if cascadeDelete is not specified, it functions as if cascadeDelete is false. | [optional] [default to &quot;false&quot;]
 **RemoveConfigurationOnly** | **String**| - removeConfigurationOnly&#x3D;true only deletes metadata from PowerProtect Data Manager without physically deleting from storage or application agent. - removeConfigurationOnly&#x3D;false deletes copy from storage and application agent (if any). If successfully deletes from storage and application agent, then it deletes metadata from PowerProtect Data Manager. - By default, if removeConfigurationOnly is not specified, it behaves as if removeConfigurationOnly is false. | [optional] [default to &quot;false&quot;]
 **ForceRemoveLatestBackup** | **String**| - forceRemoveLatestBackup&#x3D;true enables deleting the latest backup. It may break the later chain, or for VM CBT backup, it may break the in-progress backup. - forceRemoveLatestBackup&#x3D;false, if the specified copy is the latest backup, returns 409 error. - By default is forceRemoveLatestBackup is not specified, it behaves as if removeConfigurationOnly is false. | [optional] [default to &quot;false&quot;]
 **ForceDelete** | **String**| - forceDelete&#x3D;true enables force deleting without checking the state of the copies. - forceDelete&#x3D;false if the copy with restoring/cloud tiering state, skip deleting the copy. - By default, if forceDeleteis not specified, it behaves as if forceDeleteis false. | [optional] [default to &quot;false&quot;]
 **GroupDelete** | **Boolean**| - groupDelete&#x3D;true deletes all the copies that are associated with the copy ID or copy-group members, provided as input. - groupDelete&#x3D;false deletes only the copy ID, provided as input. - By default, if groupDelete is not specified, it behaves as if groupDelete is false. | [optional] 
 **CopyDeletionBatchRequests** | [**CopyDeletionBatchRequests**](CopyDeletionBatchRequests.md)|  | [optional] 

### Return type

[**CopyDeletionBatchResponses**](CopyDeletionBatchResponses.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Rename-RetentionTime"></a>
# **Rename-RetentionTime**
> CopiesRetentionTimeBatchResponse Rename-RetentionTime<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CopiesRetentionTimeBatchRequests] <PSCustomObject><br>

Change retention time for copies

Changes retention time or retention lock for copies. All asset types and backup types are supported. The maximum batch size is 1000. For the whole patch request, only one type of changes can be performed at a time. The user should not simultaneously change retention time and retention lock. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CopiesRetentionTimeBatchRequestBody = Initialize-CopiesRetentionTimeBatchRequestBody -Id "MyId" -RetentionLock "ALL_COPIES_UNLOCKED" -RetentionTime (Get-Date)
$CopiesRetentionTimeBatchRequest = Initialize-CopiesRetentionTimeBatchRequest -Body $CopiesRetentionTimeBatchRequestBody -Id "MyId"

$CopiesRetentionTimeBatchRequests = Initialize-CopiesRetentionTimeBatchRequests -Requests $CopiesRetentionTimeBatchRequest # CopiesRetentionTimeBatchRequests |  (optional)

# Change retention time for copies
try {
    $Result = Rename-RetentionTime -CopiesRetentionTimeBatchRequests $CopiesRetentionTimeBatchRequests
} catch {
    Write-Host ("Exception occurred when calling Rename-RetentionTime: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CopiesRetentionTimeBatchRequests** | [**CopiesRetentionTimeBatchRequests**](CopiesRetentionTimeBatchRequests.md)|  | [optional] 

### Return type

[**CopiesRetentionTimeBatchResponse**](CopiesRetentionTimeBatchResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CloudCreateCopy"></a>
# **Invoke-CloudCreateCopy**
> RecallAndRetierCopyResponse Invoke-CloudCreateCopy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CloudCopy] <PSCustomObject><br>

Recall and retier a copy from cloud

Recall and retier a copy from cloud. The header should contain a valid authentication token. Retier and retention time is required. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the copy.
$CloudCopy = Initialize-CloudCopy -Action "RECALL" -RetierRetentionTime "MyRetierRetentionTime" # CloudCopy |  (optional)

# Recall and retier a copy from cloud
try {
    $Result = Invoke-CloudCreateCopy -Id $Id -CloudCopy $CloudCopy
} catch {
    Write-Host ("Exception occurred when calling Invoke-CloudCreateCopy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the copy. | 
 **CloudCopy** | [**CloudCopy**](CloudCopy.md)|  | [optional] 

### Return type

[**RecallAndRetierCopyResponse**](RecallAndRetierCopyResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-CloudUpdateCopy"></a>
# **Invoke-CloudUpdateCopy**
> void Invoke-CloudUpdateCopy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CloudCopy] <PSCustomObject><br>

Update recall and retier a copy retier time from cloud

Update recall and retier a copy retier time from cloud. Only retier retention time can be updated. Retier retention time is required. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the copy.
$CloudCopy = Initialize-CloudCopy -Action "RECALL" -RetierRetentionTime "MyRetierRetentionTime" # CloudCopy |  (optional)

# Update recall and retier a copy retier time from cloud
try {
    $Result = Invoke-CloudUpdateCopy -Id $Id -CloudCopy $CloudCopy
} catch {
    Write-Host ("Exception occurred when calling Invoke-CloudUpdateCopy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the copy. | 
 **CloudCopy** | [**CloudCopy**](CloudCopy.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-CloudTieredCopy"></a>
# **New-CloudTieredCopy**
> CloudResult New-CloudTieredCopy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CloudTieredCopy] <PSCustomObject><br>

Creates cloud tiering process for an asset or a copy set

Starts a process to move copies from the PowerProtect Data Domain active tier to the cloud tier/cloud unit. Copies are moved to the cloud for long-term retention. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CloudTieredCopy = Initialize-CloudTieredCopy -AssetId "MyAssetId" -CloudTierStageId "MyCloudTierStageId" -ProtectionCopySetId "MyProtectionCopySetId" -ProtectionLifeCycleId "MyProtectionLifeCycleId" -ProtectionPolicyId "MyProtectionPolicyId" -WorkflowTaskId "MyWorkflowTaskId" # CloudTieredCopy |  (optional)

# Creates cloud tiering process for an asset or a copy set
try {
    $Result = New-CloudTieredCopy -CloudTieredCopy $CloudTieredCopy
} catch {
    Write-Host ("Exception occurred when calling New-CloudTieredCopy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CloudTieredCopy** | [**CloudTieredCopy**](CloudTieredCopy.md)|  | [optional] 

### Return type

[**CloudResult**](CloudResult.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteCopy"></a>
# **Invoke-DeleteCopy**
> CopyDeletion Invoke-DeleteCopy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CascadeDelete] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RemoveConfigurationOnly] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForceRemoveLatestBackup] <String><br>

Delete copy by ID

Deletes asset copy by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the copy.
$CascadeDelete = "MyCascadeDelete" # String | For asset type without dependency, this option makes no difference. For asset type with dependency between copies: - cascadeDelete=true deletes all copies in the dependency chain. - cascadeDelete=false does not delete any copy with HTTP status code of 409 (Conflict). - By default, when cascadeDelete is not specified, it operates as if cascadeDelete is false. (optional) (default to "false")
$RemoveConfigurationOnly = "MyRemoveConfigurationOnly" # String | - removeConfigurationOnly=true only deletes metadata from PowerProtect Data Manager without physically deleting from storage or application agent. - removeConfigurationOnly=false deletes copy from storage and application agent (if any). If successfully deleted from storage and application agent, then it deletes metadata from PowerProtect Data Manager. - By default, when removeConfigurationOnly is not specified, it operates as if removeConfigurationOnly is false. (optional) (default to "false")
$ForceRemoveLatestBackup = "MyForceRemoveLatestBackup" # String | - forceRemoveLatestBackup=true enables deleting the latest backup. It may break the later chain, or for VM CBT backup, it may break the in-progress backup. - forceRemoveLatestBackup=false, if the specified copy is the latest backup, produces HTTP error 409 (Conflict). - By default, when forceRemoveLatestBackup is not specified, it operates as if removeConfigurationOnly is false. (optional) (default to "false")

# Delete copy by ID
try {
    $Result = Invoke-DeleteCopy -Id $Id -CascadeDelete $CascadeDelete -RemoveConfigurationOnly $RemoveConfigurationOnly -ForceRemoveLatestBackup $ForceRemoveLatestBackup
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCopy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the copy. | 
 **CascadeDelete** | **String**| For asset type without dependency, this option makes no difference. For asset type with dependency between copies: - cascadeDelete&#x3D;true deletes all copies in the dependency chain. - cascadeDelete&#x3D;false does not delete any copy with HTTP status code of 409 (Conflict). - By default, when cascadeDelete is not specified, it operates as if cascadeDelete is false. | [optional] [default to &quot;false&quot;]
 **RemoveConfigurationOnly** | **String**| - removeConfigurationOnly&#x3D;true only deletes metadata from PowerProtect Data Manager without physically deleting from storage or application agent. - removeConfigurationOnly&#x3D;false deletes copy from storage and application agent (if any). If successfully deleted from storage and application agent, then it deletes metadata from PowerProtect Data Manager. - By default, when removeConfigurationOnly is not specified, it operates as if removeConfigurationOnly is false. | [optional] [default to &quot;false&quot;]
 **ForceRemoveLatestBackup** | **String**| - forceRemoveLatestBackup&#x3D;true enables deleting the latest backup. It may break the later chain, or for VM CBT backup, it may break the in-progress backup. - forceRemoveLatestBackup&#x3D;false, if the specified copy is the latest backup, produces HTTP error 409 (Conflict). - By default, when forceRemoveLatestBackup is not specified, it operates as if removeConfigurationOnly is false. | [optional] [default to &quot;false&quot;]

### Return type

[**CopyDeletion**](CopyDeletion.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CopiesReport"></a>
# **Get-CopiesReport**
> SystemCollectionsHashtable Get-CopiesReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Export deleted copies as CSV report

Retrieves deleted copies based on the filter provided and exports detailed information in the report in CSV format. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)

# Export deleted copies as CSV report
try {
    $Result = Get-CopiesReport -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Get-CopiesReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Copy"></a>
# **Get-Copy**
> Copy Get-Copy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get copy by ID

Retrieves a copy by its ID. The copy defines asset backup. Each copy is assigned to an asset. A asset can correspond to many copies. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the copy.

# Get copy by ID
try {
    $Result = Get-Copy -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Copy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the copy. | 

### Return type

[**Copy**](Copy.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CopyLogs"></a>
# **Get-CopyLogs**
> CopyLogs Get-CopyLogs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get copy logs by ID

Retrieves copy logs by ID. The parameter ID is the ID of a full copy. It returns BAD_REQUEST if parameter ID is invalid. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the copy.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get copy logs by ID
try {
    $Result = Get-CopyLogs -Id $Id -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-CopyLogs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the copy. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**CopyLogs**](CopyLogs.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LatestCopies"></a>
# **Get-LatestCopies**
> Copies Get-LatestCopies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Get latest copies of specified assets

This API returns the latest copies of the assets that are specified in the filter. One copy for one asset. The filter and the assetId must be provided. Examples follow:  Get latest copies of specified assets `GET /api/v2/latest-copies?filter=assetId in (""725efee5-b9e6-40be-a86c-e42c69e71894"", ""0e11f488-63b4-4a70-860c-994e5e433b19"")`  Get latest copies that satisfy particular copy characteristics `GET /api/v2/latest-copies?filter=assetId in (""725efee5-b9e6-40be-a86c-e42c69e71894"", ""0e11f488-63b4-4a70-860c-994e5e433b19"") and copyType in (""FULL"", ""DIFFERENTIAL"", ""INCREMENTAL"") and replicatedCopy eq false and location in (""LOCAL"", ""LOCAL_RECALLED"") and storageSystemId eq ""deaedef1-986a-4a44-a475-80afa3709b1f"" and not state in (""DELETED"", ""DELETING"", ""SOFT_DELETED"", ""DELETE_FAILED"")`  Get latest copies before a time point `GET /api/v2/latest-copies?filter=assetId in (""725efee5-b9e6-40be-a86c-e42c69e71894"", ""0e11f488-63b4-4a70-860c-994e5e433b19"") and createTime lt ""2020-08-24T08:29:00Z""` Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)

# Get latest copies of specified assets
try {
    $Result = Get-LatestCopies -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Get-LatestCopies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 

### Return type

[**Copies**](Copies.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-ApiV2VerifyCloudStorageProfileConnection"></a>
# **Submit-ApiV2VerifyCloudStorageProfileConnection**
> CloudBucketVerifyResponse Submit-ApiV2VerifyCloudStorageProfileConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CloudBucketVerifyRequest] <PSCustomObject><br>

Verify the cloud storage profile connection

Verify the cloud storage profile connectivity including the cloud endpoint and optional HTTP proxy. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ConnectionAddress = Initialize-ConnectionAddress -Type "IPV4" -Value "MyValue"
$ExtraParam = Initialize-ExtraParam -Name "MyName" -Value "MyValue"
$Connection = Initialize-Connection -Addresses $ConnectionAddress -CredentialId "MyCredentialId" -ExtraParams $ExtraParam -Port 0 -Protocol "HTTP" -Secure $false -Type "CLOUD"

$CloudBucketVerifyRequest = Initialize-CloudBucketVerifyRequest -CloudPlatformType "PUBLIC" -CloudStorageProfileType "CLOUD_STORAGE_PROFILE_AWS" -ConnectionDetails $Connection -StorageRegion "MyStorageRegion" # CloudBucketVerifyRequest |  (optional)

# Verify the cloud storage profile connection
try {
    $Result = Submit-ApiV2VerifyCloudStorageProfileConnection -CloudBucketVerifyRequest $CloudBucketVerifyRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-ApiV2VerifyCloudStorageProfileConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CloudBucketVerifyRequest** | [**CloudBucketVerifyRequest**](CloudBucketVerifyRequest.md)|  | [optional] 

### Return type

[**CloudBucketVerifyResponse**](CloudBucketVerifyResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-ApiV2VerifyObjectStorageProfileConnection"></a>
# **Submit-ApiV2VerifyObjectStorageProfileConnection**
> CloudBucketVerifyResponse Submit-ApiV2VerifyObjectStorageProfileConnection<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CloudBucketVerifyRequest] <PSCustomObject><br>

Verifies the connection with the cloud and HTTP proxy

Verifies the connectivity of a cloud storage profile with its cloud endpoint and optional HTTP proxy. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ConnectionAddress = Initialize-ConnectionAddress -Type "IPV4" -Value "MyValue"
$ExtraParam = Initialize-ExtraParam -Name "MyName" -Value "MyValue"
$Connection = Initialize-Connection -Addresses $ConnectionAddress -CredentialId "MyCredentialId" -ExtraParams $ExtraParam -Port 0 -Protocol "HTTP" -Secure $false -Type "CLOUD"

$CloudBucketVerifyRequest = Initialize-CloudBucketVerifyRequest -CloudPlatformType "PUBLIC" -CloudStorageProfileType "CLOUD_STORAGE_PROFILE_AWS" -ConnectionDetails $Connection -StorageRegion "MyStorageRegion" # CloudBucketVerifyRequest |  (optional)

# Verifies the connection with the cloud and HTTP proxy
try {
    $Result = Submit-ApiV2VerifyObjectStorageProfileConnection -CloudBucketVerifyRequest $CloudBucketVerifyRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-ApiV2VerifyObjectStorageProfileConnection: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CloudBucketVerifyRequest** | [**CloudBucketVerifyRequest**](CloudBucketVerifyRequest.md)|  | [optional] 

### Return type

[**CloudBucketVerifyResponse**](CloudBucketVerifyResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-QueryCopies"></a>
# **Invoke-QueryCopies**
> Copies Invoke-QueryCopies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageNumber] <System.Nullable[Int64]><br>

Get copy list

Get copy list from the PowerProtect Data Manager system. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Filter = "MyFilter" # String |  (optional)
$Orderby = "MyOrderby" # String |  (optional)
$Page = 789 # Int64 |  (optional)
$PageNumber = 789 # Int64 |  (optional)

# Get copy list
try {
    $Result = Invoke-QueryCopies -Filter $Filter -Orderby $Orderby -Page $Page -PageNumber $PageNumber
} catch {
    Write-Host ("Exception occurred when calling Invoke-QueryCopies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**|  | [optional] 
 **Orderby** | **String**|  | [optional] 
 **Page** | **Int64**|  | [optional] 
 **PageNumber** | **Int64**|  | [optional] 

### Return type

[**Copies**](Copies.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-QueryCopyGroupsAggregate"></a>
# **Invoke-QueryCopyGroupsAggregate**
> QueryCopyGroupsAggregateResponse Invoke-QueryCopyGroupsAggregate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryCopyGroupsAggregateRequest] <PSCustomObject><br>

Get copy group aggregation by copy IDs

Get copy group aggregation from the PowerProtect Data Manager system. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$QueryCopyGroupsAggregateRequest = Initialize-QueryCopyGroupsAggregateRequest -CopyIds "MyCopyIds" # QueryCopyGroupsAggregateRequest |  (optional)

# Get copy group aggregation by copy IDs
try {
    $Result = Invoke-QueryCopyGroupsAggregate -QueryCopyGroupsAggregateRequest $QueryCopyGroupsAggregateRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-QueryCopyGroupsAggregate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **QueryCopyGroupsAggregateRequest** | [**QueryCopyGroupsAggregateRequest**](QueryCopyGroupsAggregateRequest.md)|  | [optional] 

### Return type

[**QueryCopyGroupsAggregateResponse**](QueryCopyGroupsAggregateResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-QueryLatestCopies"></a>
# **Invoke-QueryLatestCopies**
> Copies Invoke-QueryLatestCopies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Get latest copies of specified assets

This API only accept request with content type as application/x-www-form-urlencoded and returns the latest copies of the assets that are specified in the filter. One copy for one asset. The filter and the asset ID (assetId) must be provided.  Examples follow: Get latest copies of specified assets `POST /api/v2/latest-copies-query?filter=assetId in (""725efee5-b9e6-40be-a86c-e42c69e71894"", ""0e11f488-63b4-4a70-860c-994e5e433b19"")`  Get latest copies that satisfy particular copy characteristics `POST /api/v2/latest-copies-query?filter=assetId in (""725efee5-b9e6-40be-a86c-e42c69e71894"", ""0e11f488-63b4-4a70-860c-994e5e433b19"") and copyType in (""FULL"", ""DIFFERENTIAL"", ""INCREMENTAL"") and replicatedCopy eq false and location in (""LOCAL"", ""LOCAL_RECALLED"") and storageSystemId eq ""deaedef1-986a-4a44-a475-80afa3709b1f"" and not state in (""DELETED"", ""DELETING"", ""SOFT_DELETED"", ""DELETE_FAILED"")`  Get latest copies before a time point `POST /api/v2/latest-copies-query?filter=assetId in (""725efee5-b9e6-40be-a86c-e42c69e71894"", ""0e11f488-63b4-4a70-860c-994e5e433b19"") and createTime lt ""2020-08-24T08:29:00Z""` Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Filter = "MyFilter" # String |  (optional)

# Get latest copies of specified assets
try {
    $Result = Invoke-QueryLatestCopies -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Invoke-QueryLatestCopies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**|  | [optional] 

### Return type

[**Copies**](Copies.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RecallCloudCopy"></a>
# **Invoke-RecallCloudCopy**
> CloudResult Invoke-RecallCloudCopy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CloudRecalledCopy] <PSCustomObject><br>

Recalls a copy from the cloud.

Runs a process to move back a copy set from the cloud to the active tier based on the specified protection copy set ID and retier retention time. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CloudRecalledCopy = Initialize-CloudRecalledCopy -ProtectionCopySetId "MyProtectionCopySetId" -RetierRetentionTime (Get-Date) # CloudRecalledCopy |  (optional)

# Recalls a copy from the cloud.
try {
    $Result = Invoke-RecallCloudCopy -CloudRecalledCopy $CloudRecalledCopy
} catch {
    Write-Host ("Exception occurred when calling Invoke-RecallCloudCopy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CloudRecalledCopy** | [**CloudRecalledCopy**](CloudRecalledCopy.md)|  | [optional] 

### Return type

[**CloudResult**](CloudResult.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-CloudCopyRetierRetentionTime"></a>
# **Update-CloudCopyRetierRetentionTime**
> CloudResult Update-CloudCopyRetierRetentionTime<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CopySetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RetierRetentionTime] <PSCustomObject><br>

Updates a copy set retier time to the cloud.

Updates the retier retention time for a specified copy set on a PowerProtect Data Domain based on the copy set ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CopySetId = "MyCopySetId" # String | The asset ID of a copy on the PowerProtect Data Domain.
$RetierRetentionTime = Initialize-RetierRetentionTime -RetierRetentionTime (Get-Date) # RetierRetentionTime |  (optional)

# Updates a copy set retier time to the cloud.
try {
    $Result = Update-CloudCopyRetierRetentionTime -CopySetId $CopySetId -RetierRetentionTime $RetierRetentionTime
} catch {
    Write-Host ("Exception occurred when calling Update-CloudCopyRetierRetentionTime: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CopySetId** | **String**| The asset ID of a copy on the PowerProtect Data Domain. | 
 **RetierRetentionTime** | [**RetierRetentionTime**](RetierRetentionTime.md)|  | [optional] 

### Return type

[**CloudResult**](CloudResult.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

