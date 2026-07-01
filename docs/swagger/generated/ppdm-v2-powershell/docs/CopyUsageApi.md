# PpdmApiReference.PpdmApiReference\Api.CopyUsageApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Rename-ExportedCopiesHost**](CopyUsageApi.md#Rename-ExportedCopiesHost) | **POST** /api/v2/exported-copies/{id}/host-change | Change the host of the instant access session
[**Invoke-DeleteExportedCopy**](CopyUsageApi.md#Invoke-DeleteExportedCopy) | **DELETE** /api/v2/exported-copies/{id} | Delete an exported copy by ID
[**Get-ExportedCopies**](CopyUsageApi.md#Get-ExportedCopies) | **GET** /api/v2/exported-copies | Get all exported copies
[**Get-ExportedCopy**](CopyUsageApi.md#Get-ExportedCopy) | **GET** /api/v2/exported-copies/{id} | Get an exported copy by ID
[**Get-RestoredCopies**](CopyUsageApi.md#Get-RestoredCopies) | **GET** /api/v2/restored-copies | Get all restored copies
[**Get-RestoredCopy**](CopyUsageApi.md#Get-RestoredCopy) | **GET** /api/v2/restored-copies/{id} | Get a restored copy by ID
[**Move-ExportedCopy**](CopyUsageApi.md#Move-ExportedCopy) | **POST** /api/v2/exported-copies/{id}/migrate | Migrate the instant access session to another datastore
[**Invoke-PatchExportedCopies**](CopyUsageApi.md#Invoke-PatchExportedCopies) | **PATCH** /api/v2/exported-copies/{id} | Update an exported copy by ID
[**Restore-Copy**](CopyUsageApi.md#Restore-Copy) | **POST** /api/v2/restored-copies | Create a restored copy


<a id="Rename-ExportedCopiesHost"></a>
# **Rename-ExportedCopiesHost**
> ExportedCopyHostChangeResponse Rename-ExportedCopiesHost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExportedCopyHostChangeRequest] <PSCustomObject><br>

Change the host of the instant access session

Attach new host to an exported copy or detach the host from an exported copy. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the exported copy.
$ExportedCopyHostChangeRequest = Initialize-ExportedCopyHostChangeRequest -ExternalId "MyExternalId" -Name "MyName" -OperationType "ATTACH" -Type "HOST" # ExportedCopyHostChangeRequest | 

# Change the host of the instant access session
try {
    $Result = Rename-ExportedCopiesHost -Id $Id -ExportedCopyHostChangeRequest $ExportedCopyHostChangeRequest
} catch {
    Write-Host ("Exception occurred when calling Rename-ExportedCopiesHost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the exported copy. | 
 **ExportedCopyHostChangeRequest** | [**ExportedCopyHostChangeRequest**](ExportedCopyHostChangeRequest.md)|  | 

### Return type

[**ExportedCopyHostChangeResponse**](ExportedCopyHostChangeResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteExportedCopy"></a>
# **Invoke-DeleteExportedCopy**
> ExportedCopiesDeletionResponse Invoke-DeleteExportedCopy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete an exported copy by ID

Deletes an exported copy by parameter ID. This API request defines which copy is already mounted. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of exported copy.

# Delete an exported copy by ID
try {
    $Result = Invoke-DeleteExportedCopy -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteExportedCopy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of exported copy. | 

### Return type

[**ExportedCopiesDeletionResponse**](ExportedCopiesDeletionResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ExportedCopies"></a>
# **Get-ExportedCopies**
> ExportedCopies Get-ExportedCopies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all exported copies

Retrieves all the exported copies. This API request defines which copy is already mounted. Exported copies are deleted after use. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all exported copies
try {
    $Result = Get-ExportedCopies -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-ExportedCopies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

### Return type

[**ExportedCopies**](ExportedCopies.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ExportedCopy"></a>
# **Get-ExportedCopy**
> ExportedCopy Get-ExportedCopy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get an exported copy by ID

Retrieves an exported copy by parameter ID. This API request defines which copy is already mounted. Exported copies are deleted after use. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of copy.

# Get an exported copy by ID
try {
    $Result = Get-ExportedCopy -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ExportedCopy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of copy. | 

### Return type

[**ExportedCopy**](ExportedCopy.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-RestoredCopies"></a>
# **Get-RestoredCopies**
> RestoredCopies Get-RestoredCopies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all restored copies

Retrieves all restored copies by parameters. The restored copies define which copies of an asset are already restored. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all restored copies
try {
    $Result = Get-RestoredCopies -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-RestoredCopies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

### Return type

[**RestoredCopies**](RestoredCopies.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-RestoredCopy"></a>
# **Get-RestoredCopy**
> RestoredCopy Get-RestoredCopy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a restored copy by ID

Retrieves a restored copy by the specified ID. The restored copies define which copies of an asset already are restored. Each restored asset corresponds to a restored copy. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The restored copy ID.

# Get a restored copy by ID
try {
    $Result = Get-RestoredCopy -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-RestoredCopy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The restored copy ID. | 

### Return type

[**RestoredCopy**](RestoredCopy.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Move-ExportedCopy"></a>
# **Move-ExportedCopy**
> ExportedCopyMigrateResponse Move-ExportedCopy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExportedCopyMigrateRequest] <PSCustomObject><br>

Migrate the instant access session to another datastore

Migrate an exported copy to another datastore. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the exported copy.
$ExportedCopyMigrateRequest = Initialize-ExportedCopyMigrateRequest -DatastoreId "MyDatastoreId" # ExportedCopyMigrateRequest | 

# Migrate the instant access session to another datastore
try {
    $Result = Move-ExportedCopy -Id $Id -ExportedCopyMigrateRequest $ExportedCopyMigrateRequest
} catch {
    Write-Host ("Exception occurred when calling Move-ExportedCopy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the exported copy. | 
 **ExportedCopyMigrateRequest** | [**ExportedCopyMigrateRequest**](ExportedCopyMigrateRequest.md)|  | 

### Return type

[**ExportedCopyMigrateResponse**](ExportedCopyMigrateResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PatchExportedCopies"></a>
# **Invoke-PatchExportedCopies**
> ExportedCopy Invoke-PatchExportedCopies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExportedCopyPatchModel] <PSCustomObject><br>

Update an exported copy by ID

Updates only the retention time on the exported copy. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of export copy.
$ExportedCopyPatchModel = Initialize-ExportedCopyPatchModel -ExpirationTime (Get-Date) # ExportedCopyPatchModel | 

# Update an exported copy by ID
try {
    $Result = Invoke-PatchExportedCopies -Id $Id -ExportedCopyPatchModel $ExportedCopyPatchModel
} catch {
    Write-Host ("Exception occurred when calling Invoke-PatchExportedCopies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of export copy. | 
 **ExportedCopyPatchModel** | [**ExportedCopyPatchModel**](ExportedCopyPatchModel.md)|  | 

### Return type

[**ExportedCopy**](ExportedCopy.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Restore-Copy"></a>
# **Restore-Copy**
> RestoredCopy Restore-Copy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RestoredCopy] <PSCustomObject><br>

Create a restored copy

Creates a restored copy by request body. The restored copies define which copies of an asset already are restored. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$RestoredCopyOptionsAdvanceSpFileParametersInner = Initialize-RestoredCopyOptionsAdvanceSpFileParametersInner -ParamName "MyParamName" -ParamValue "MyParamValue"

$CopyExtendedDataControlSpFileInfo = Initialize-CopyExtendedDataControlSpFileInfo -AutoBackupPath "MyAutoBackupPath" -ControlFilePath "MyControlFilePath" -SpFilePath "MySpFilePath"
$OracleControlSpFileInfoFilesInner = Initialize-OracleControlSpFileInfoFilesInner -RelativePath "MyRelativePath"
$OracleRestoredOptionsControlSpFileInfo = Initialize-OracleRestoredOptionsControlSpFileInfo -ControlSpFileInfo $CopyExtendedDataControlSpFileInfo -Files $OracleControlSpFileInfoFilesInner -HasControlFile $false -HasSpFile $false

$RestoredCopyOptionsFileRelocationOptions = Initialize-RestoredCopyOptionsFileRelocationOptions -TargetArchLogFileLocations "MyTargetArchLogFileLocations" -TargetControlFiles "MyTargetControlFiles" -TargetDataFileLocation "MyTargetDataFileLocation" -TargetFRAFileLocation "MyTargetFRAFileLocation" -TargetLogFileLocation "MyTargetLogFileLocation" -TargetRedoLogFileLocations "MyTargetRedoLogFileLocations" -TargetRootLevelFolderLocation "MyTargetRootLevelFolderLocation" -Type "ORIGINAL_LOCATION"
$RestoredCopyOptionsNetworkDetail = Initialize-RestoredCopyOptionsNetworkDetail -NetworkAdapterId "MyNetworkAdapterId" -NetworkAdapterName "MyNetworkAdapterName" -SwitchId "MySwitchId"
$RestoredCopyOptionsPitInfo = Initialize-RestoredCopyOptionsPitInfo -EndLogSeq "MyEndLogSeq" -EndScn "MyEndScn" -EndTime "MyEndTime" -StartLogSeq "MyStartLogSeq" -StartScn "MyStartScn" -StartTime "MyStartTime" -TargetLogSeq "MyTargetLogSeq" -TargetScn "MyTargetScn" -TargetTime "MyTargetTime"
$RestoredCopyOptions = Initialize-RestoredCopyOptions -AdAttributes "MyAdAttributes" -AdvanceSpFileParameters $RestoredCopyOptionsAdvanceSpFileParametersInner -AllowOverwrite "MyAllowOverwrite" -ApplyNewGuid $false -AutoGenTargetStorageResource $false -ChangeDatabaseName $false -ChangeDbId $false -ChangePasswordOnNextLogin $false -CheckAccessBackint $false -CheckAccessFileSystem $false -ClearLog $false -ControlSpFileBackupData $OracleRestoredOptionsControlSpFileInfo -ConvertToSpFile $false -CrossCheckBackup $false -DatabaseRole "NONE" -DisableUserAccount $false -DisconnectDatabaseUsers $false -EnableAutoCleanup $false -EnableCompressedRestore $false -EnableDebug $false -FileRelocationOptions $RestoredCopyOptionsFileRelocationOptions -ForceDatabaseOverwrite $false -GuestOsPassword "MyGuestOsPassword" -GuestOsUsername "MyGuestOsUsername" -IgnoreDeltaBackups $false -IncludeClusterResources $false -IncludeVirtualMachineResources $false -Iqns "MyIqns" -KeepFlrAgentInstalled $false -NetworkDetails $RestoredCopyOptionsNetworkDetail -OpenDatabase $false -OsUserNameTarget "MyOsUserNameTarget" -PerformTailLogBackup $false -PitInfo $RestoredCopyOptionsPitInfo -PowerOnVm $false -PowerState "ON" -PreferredInterface "MyPreferredInterface" -PrimaryHasDDConnection $false -RecoveryState "RECOVERY" -RequestedProxy "MyRequestedProxy" -RestoreAsClusteredVm $false -RestoreBiosUuid $false -RestoreLocation "ORIGINAL" -RestoreOriginalMachineConfig $false -RestorePFile $false -RestoreParallelism 0 -RestorePath "MyRestorePath" -RestoreSpFile $false -RestoreSubCategory "BACKUP_TIME" -RestoreTlpAcls $false -RestoreVmNotes $false -RetainFolderHierarchy $false -RunWithElevatedPrivileges $false -StopAssetBeforeRestore $false -StopAtTime "MyStopAtTime" -SuffixVmName "MySuffixVmName" -TargetArrayId "MyTargetArrayId" -TargetInstallLocation "MyTargetInstallLocation" -TargetNewDatabaseName "MyTargetNewDatabaseName" -TargetSid "MyTargetSid" -TargetStorageResourcePrefix "MyTargetStorageResourcePrefix" -TargetVmName "MyTargetVmName" -TargetVolume "MyTargetVolume" -TransLogPath "MyTransLogPath" -UpdateTimeOut 0 -UseOriginalAssetName $false -VProxyIds "MyVProxyIds" -VcenterId "MyVcenterId"

$TargetAvamarInfo = Initialize-TargetAvamarInfo -AssetId "MyAssetId" -AssetName "MyAssetName" -ConflictStrategy "OVERWRITE" -CredsId "MyCredsId" -HostId "MyHostId" -Location "MyLocation" -MountUrl "MyMountUrl" -Parallelism 0 -RestoreProtocol "BOOSTFS" -Sources "MySources"
$TargetCloudInfo = Initialize-TargetCloudInfo -DrType "MyDrType" -NetworkId "MyNetworkId" -SecurityGroupIds "MySecurityGroupIds"

$TargetDatabaseInfoRestoreOptions = Initialize-TargetDatabaseInfoRestoreOptions -AagRestoreType "RESTORE_TO_ALL"
$TargetDatabaseInfo = Initialize-TargetDatabaseInfo -ApplicationSystemId "MyApplicationSystemId" -AssetName "MyAssetName" -HostId "MyHostId" -RestoreOptions $TargetDatabaseInfoRestoreOptions

$TargetConnectionInfoFs = Initialize-TargetConnectionInfoFs -CredentialType "DATADOMAIN" -CredsId "MyCredsId"
$TargetFileSystemInfo = Initialize-TargetFileSystemInfo -ConflictStrategy "OVERWRITE" -HostId "MyHostId" -Location "MyLocation" -MountUrl "MyMountUrl" -RestoreCategory "SYSTEM_STATE_RECOVERY" -Sources "MySources" -TargetConnectionInfos $TargetConnectionInfoFs

$TargetGenericAppInfo = Initialize-TargetGenericAppInfo -AssetId "MyAssetId" -AssetName "MyAssetName" -CredsId "MyCredsId" -HostId "MyHostId" -Parallelism 0 -RestoreProtocol "BOOSTFS"
$TargetHypervVmInfo = Initialize-TargetHypervVmInfo -FlrSessionId "MyFlrSessionId" -Parallelism 0 -SourceAssetId "MySourceAssetId" -Sources "MySources" -TargetAssetId "MyTargetAssetId" -TargetHypervisorServerId "MyTargetHypervisorServerId"

$TargetK8sInfoPersistentVolumeClaims = Initialize-TargetK8sInfoPersistentVolumeClaims -AlternateStorageClass "MyAlternateStorageClass" -Name "MyName"
$TargetK8sInfo = Initialize-TargetK8sInfo -K8sVirtualMachineNames "MyK8sVirtualMachineNames" -Namespace "MyNamespace" -OverwritePersistentVolumeClaim $false -OverwriteVmConfig $false -PersistentVolumeClaims $TargetK8sInfoPersistentVolumeClaims -SkipNamespaceResources $false -TargetInventorySourceId "MyTargetInventorySourceId"

$TargetNasInfoNasServerCred = Initialize-TargetNasInfoNasServerCred -Password "MyPassword" -Username "MyUsername"
$TargetNasSource = Initialize-TargetNasSource -Path "MyPath" -PathHash "MyPathHash" -SliceSsid "MySliceSsid" -Type "FOLDER"
$TargetNasInfo = Initialize-TargetNasInfo -AssetId "MyAssetId" -NasServerCred $TargetNasInfoNasServerCred -Sources $TargetNasSource

$NativeEdgeDisks = Initialize-NativeEdgeDisks -DatastoreId "MyDatastoreId" -Uuid "MyUuid"
$NativeEdgeNetworks = Initialize-NativeEdgeNetworks -AccessModel "ACCESS" -ConnectState "CONNECTED" -NetworkAdapterId "MyNetworkAdapterId" -SubnetId "MySubnetId" -SubnetName "MySubnetName" -TrunkVlanIds 0
$TargetNativeEdgeInfo = Initialize-TargetNativeEdgeInfo -AssetId "MyAssetId" -AssetName "MyAssetName" -ClusterId "MyClusterId" -DatastoreId "MyDatastoreId" -Disks $NativeEdgeDisks -EndpointId "MyEndpointId" -InventorySourceId "MyInventorySourceId" -Networks $NativeEdgeNetworks

$NutanixDisks = Initialize-NutanixDisks -DatastoreId "MyDatastoreId" -Uuid "MyUuid"
$NutanixNetworks = Initialize-NutanixNetworks -AccessModel "ACCESS" -ConnectState "CONNECTED" -NetworkAdapterId "MyNetworkAdapterId" -SubnetId "MySubnetId" -TrunkVlanIds 0
$TargetNutanixInfo = Initialize-TargetNutanixInfo -AssetName "MyAssetName" -ClusterId "MyClusterId" -DatastoreId "MyDatastoreId" -Disks $NutanixDisks -FlrSessionId "MyFlrSessionId" -InventorySourceId "MyInventorySourceId" -Networks $NutanixNetworks -Sources "MySources" -TargetAssetId "MyTargetAssetId"

$TargetOracleDatabaseInfoNfsShare = Initialize-TargetOracleDatabaseInfoNfsShare -Name "MyName" -Version "MyVersion"

$TargetConnectionExtraInfo = Initialize-TargetConnectionExtraInfo -Name "MyName" -Value "MyValue"
$TargetConnectionInfo = Initialize-TargetConnectionInfo -ConnectionType "OS" -CredsId "MyCredsId" -ExtraInfo $TargetConnectionExtraInfo

$TargetOracleDatabaseInfo = Initialize-TargetOracleDatabaseInfo -ApplicationSystemId "MyApplicationSystemId" -AssetId "MyAssetId" -AssetName "MyAssetName" -DataTargetId "MyDataTargetId" -HostId "MyHostId" -NfsShare $TargetOracleDatabaseInfoNfsShare -Parallelism 0 -RestoreCategory "DISASTER_RECOVERY" -RestoreProtocol "BOOSTFS" -TargetConnectionInfos $TargetConnectionInfo

$TargetSapHanaDatabaseInfo = Initialize-TargetSapHanaDatabaseInfo -ApplicationSystemId "MyApplicationSystemId" -AssetId "MyAssetId" -AssetName "MyAssetName" -CredsId "MyCredsId" -HostId "MyHostId" -Parallelism 0

$TargetStorageInfoCopyMappingsInner = Initialize-TargetStorageInfoCopyMappingsInner -CopyId "MyCopyId" -TargetAssetId "MyTargetAssetId"
$TargetStorageInfo = Initialize-TargetStorageInfo -CopyMappings $TargetStorageInfoCopyMappingsInner -NaturalHostGroupId "MyNaturalHostGroupId" -NaturalHostId "MyNaturalHostId" -Parallelism 0 -TargetAssetId "MyTargetAssetId" -TargetProtectionGroupId "MyTargetProtectionGroupId"

$VirtualDiskMap = Initialize-VirtualDiskMap -Datastore "MyDatastore" -Label "MyLabel" -ProvisioningType "THICK"
$HostCredentials = Initialize-HostCredentials -HostName "MyHostName" -UserName "MyUserName" -UserPassword "MyUserPassword"
$NetworkSettings = Initialize-NetworkSettings -NetworkKey 0 -NetworkLabel "MyNetworkLabel" -NetworkMoref "MyNetworkMoref" -ReconnectNic $false
$RestoredVmAsset = Initialize-RestoredVmAsset -AssetRef "MyAssetRef" -VmRef "MyVmRef"
$TargetVmInfo = Initialize-TargetVmInfo -AssetId "MyAssetId" -ClusterMoref "MyClusterMoref" -DataCenterMoref "MyDataCenterMoref" -DataStoreMoref "MyDataStoreMoref" -DeleteBackingFile $false -Disks $VirtualDiskMap -EsxHost $HostCredentials -FolderMoref "MyFolderMoref" -HostMoref "MyHostMoref" -InventorySourceId "MyInventorySourceId" -Networks $NetworkSettings -RecoverConfig $false -ResourcePoolMoref "MyResourcePoolMoref" -RestoredVmAsset $RestoredVmAsset -SpbmRestoreDirective "OFF" -TagRestoreDirective "OFF" -VmName "MyVmName" -VmPowerOn $false -VmReconnectNic $false

$RestoredCopiesDetails = Initialize-RestoredCopiesDetails -TargetAvamarInfo $TargetAvamarInfo -TargetCloudInfo $TargetCloudInfo -TargetDatabaseInfo $TargetDatabaseInfo -TargetFileSystemInfo $TargetFileSystemInfo -TargetGenericAppInfo $TargetGenericAppInfo -TargetHypervVmInfo $TargetHypervVmInfo -TargetK8sInfo $TargetK8sInfo -TargetNasInfo $TargetNasInfo -TargetNativeEdgeInfo $TargetNativeEdgeInfo -TargetNutanixInfo $TargetNutanixInfo -TargetOracleDatabaseInfo $TargetOracleDatabaseInfo -TargetSapHanaDatabaseInfo $TargetSapHanaDatabaseInfo -TargetStorageInfo $TargetStorageInfo -TargetVmInfo $TargetVmInfo

$UserComment = Initialize-UserComment -Comment "MyComment" -Username "MyUsername"
$RestoredCopy = Initialize-RestoredCopy -ActivityId "MyActivityId" -CompletionTime (Get-Date) -CopyId "MyCopyId" -CopyIds "MyCopyIds" -Description "MyDescription" -DryRun $false -ExpirationTime (Get-Date) -Id "MyId" -Options $RestoredCopyOptions -RestoreEntireBackupTransaction $false -RestoreEntireCopyGroup $false -RestoreType "INSTANT_ACCESS" -RestoredCopiesDetails $RestoredCopiesDetails -StartTime (Get-Date) -State "WAITING" -Status "UNKNOWN" -UserComment $UserComment # RestoredCopy |  (optional)

# Create a restored copy
try {
    $Result = Restore-Copy -RestoredCopy $RestoredCopy
} catch {
    Write-Host ("Exception occurred when calling Restore-Copy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RestoredCopy** | [**RestoredCopy**](RestoredCopy.md)|  | [optional] 

### Return type

[**RestoredCopy**](RestoredCopy.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

