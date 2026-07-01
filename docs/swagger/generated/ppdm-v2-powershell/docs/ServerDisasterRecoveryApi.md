# PpdmApiReference.PpdmApiReference\Api.ServerDisasterRecoveryApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-ServerDisasterRecoveryEvent**](ServerDisasterRecoveryApi.md#New-ServerDisasterRecoveryEvent) | **POST** /api/v2/server-disaster-recovery-events | Create server disaster recovery event notification
[**New-ServerDrBackup**](ServerDisasterRecoveryApi.md#New-ServerDrBackup) | **POST** /api/v2/server-disaster-recovery-backups | Create server disaster recovery backup
[**Invoke-DeleteServerDrBackup**](ServerDisasterRecoveryApi.md#Invoke-DeleteServerDrBackup) | **DELETE** /api/v2/server-disaster-recovery-backups/{id} | Delete server disaster recovery backup by ID
[**Get-ServerDrBackup**](ServerDisasterRecoveryApi.md#Get-ServerDrBackup) | **GET** /api/v2/server-disaster-recovery-backups/{id} | Get server disaster recovery backup by ID
[**Get-ServerDrBackups**](ServerDisasterRecoveryApi.md#Get-ServerDrBackups) | **GET** /api/v2/server-disaster-recovery-backups | Get all server disaster recovery backups
[**Get-ServerDrConfiguration**](ServerDisasterRecoveryApi.md#Get-ServerDrConfiguration) | **GET** /api/v2/server-disaster-recovery-configurations/{id} | Get server disaster recovery configuration by ID
[**Get-ServerDrConfigurations**](ServerDisasterRecoveryApi.md#Get-ServerDrConfigurations) | **GET** /api/v2/server-disaster-recovery-configurations | Get all server disaster recovery configurations
[**Get-ServerDrHosts**](ServerDisasterRecoveryApi.md#Get-ServerDrHosts) | **GET** /api/v2/server-disaster-recovery-hosts | Get all server disaster recovery hosts
[**Get-ServerDrReconciliationMetadata**](ServerDisasterRecoveryApi.md#Get-ServerDrReconciliationMetadata) | **GET** /api/v2/server-disaster-recovery-backup-reconciliation | Get current server disaster recovery configurations
[**Get-ServerDrStatus**](ServerDisasterRecoveryApi.md#Get-ServerDrStatus) | **GET** /api/v2/server-disaster-recovery-status | Get status of server disaster recovery restore
[**Invoke-ServerDisasterRecoveryBackupReconciliation**](ServerDisasterRecoveryApi.md#Invoke-ServerDisasterRecoveryBackupReconciliation) | **POST** /api/v2/server-disaster-recovery-backup-reconciliation | Reconciliation of Backup metadata
[**Update-ServerDrBackup**](ServerDisasterRecoveryApi.md#Update-ServerDrBackup) | **PUT** /api/v2/server-disaster-recovery-backups/{id} | Update server disaster recovery backup by ID
[**Update-ServerDrConfiguration**](ServerDisasterRecoveryApi.md#Update-ServerDrConfiguration) | **PUT** /api/v2/server-disaster-recovery-configurations/{id} | Update server disaster recovery configuration by ID


<a id="New-ServerDisasterRecoveryEvent"></a>
# **New-ServerDisasterRecoveryEvent**
> void New-ServerDisasterRecoveryEvent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SdrEventNotification] <PSCustomObject><br>

Create server disaster recovery event notification

Create an event notification to initiate a disaster recovery backup. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$SdrEventNotification = Initialize-SdrEventNotification -ComponentName "MyComponentName" -Reason "MyReason" -Type "BACKUP_NOTIFY" # SdrEventNotification |  (optional)

# Create server disaster recovery event notification
try {
    $Result = New-ServerDisasterRecoveryEvent -SdrEventNotification $SdrEventNotification
} catch {
    Write-Host ("Exception occurred when calling New-ServerDisasterRecoveryEvent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SdrEventNotification** | [**SdrEventNotification**](SdrEventNotification.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-ServerDrBackup"></a>
# **New-ServerDrBackup**
> SdrBackupPostResponse New-ServerDrBackup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SdrBackup] <PSCustomObject><br>

Create server disaster recovery backup

Creates the server disaster recovery backup. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Name = "MyName" # String | Name of the component requesting a backup. (optional)
$ComponentVersion = Initialize-ComponentVersion -EntityName "MyEntityName" -Version "MyVersion"
$SdrComponent = Initialize-SdrComponent -BackupPath "MyBackupPath" -BackupStatus "MyBackupStatus" -BackupsEnabled $false -Id "MyId" -IsComponentInternal $false -LastActivityId "MyLastActivityId" -Name "MyName" -Version "MyVersion"

$NetworkInterfaceReplacement = Initialize-NetworkInterfaceReplacement -NewAddress "MyNewAddress" -OldAddress "MyOldAddress"
$ReplacementDataDomain = Initialize-ReplacementDataDomain -Address "MyAddress" -Name "MyName" -NetworkInterfaces $NetworkInterfaceReplacement -OriginalName "MyOriginalName" -Password $false -Port 0 -RecoveredStorageUnits "MyRecoveredStorageUnits" -Username "MyUsername"

$RecoverOptions = Initialize-RecoverOptions -InvalidRootCARiskAccepted $false -ReplacementDataDomain $ReplacementDataDomain -RestoreApplianceOnStandalone $false -VaultRecovery $false

$SdrBackup = Initialize-SdrBackup -EventTriggerSource "MyEventTriggerSource" -BackupConsistencyType "MyBackupConsistencyType" -BackupTriggerSource "MyBackupTriggerSource" -Checksum "MyChecksum" -ComponentVersions $ComponentVersion -Components $SdrComponent -ConfigType "MyConfigType" -Consistency "MyConsistency" -CreationTime (Get-Date) -DeployedPlatform "MyDeployedPlatform" -ElapsedSeconds 0 -VarError "MyVarError" -Hostname "MyHostname" -Id "MyId" -LockboxPassphrase "MyLockboxPassphrase" -MfrManifestId "MyMfrManifestId" -MfrReplicationId "MyMfrReplicationId" -Name "MyName" -NoScheduledStorageAccess $false -NodeId "MyNodeId" -Recover $false -RecoverOptions $RecoverOptions -SequenceNumber 0 -SizeInBytes 0 -Solution "MySolution" -State "MyState" -ValidRootCA $false -Version "MyVersion" -WorkflowTaskId "MyWorkflowTaskId" # SdrBackup |  (optional)

# Create server disaster recovery backup
try {
    $Result = New-ServerDrBackup -Name $Name -SdrBackup $SdrBackup
} catch {
    Write-Host ("Exception occurred when calling New-ServerDrBackup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the component requesting a backup. | [optional] 
 **SdrBackup** | [**SdrBackup**](SdrBackup.md)|  | [optional] 

### Return type

[**SdrBackupPostResponse**](SdrBackupPostResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteServerDrBackup"></a>
# **Invoke-DeleteServerDrBackup**
> void Invoke-DeleteServerDrBackup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete server disaster recovery backup by ID

Deletes the server disaster recovery backup based on the specified ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Server backup ID sent in request.

# Delete server disaster recovery backup by ID
try {
    $Result = Invoke-DeleteServerDrBackup -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteServerDrBackup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Server backup ID sent in request. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ServerDrBackup"></a>
# **Get-ServerDrBackup**
> SdrBackup Get-ServerDrBackup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get server disaster recovery backup by ID

Retrieves the server disaster recovery backup by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Server disaster recovery backup ID sent in request.

# Get server disaster recovery backup by ID
try {
    $Result = Get-ServerDrBackup -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ServerDrBackup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Server disaster recovery backup ID sent in request. | 

### Return type

[**SdrBackup**](SdrBackup.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ServerDrBackups"></a>
# **Get-ServerDrBackups**
> SdrBackups Get-ServerDrBackups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Full] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-View] <String><br>

Get all server disaster recovery backups

Retrieves a list of server disaster recovery backups. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Full = $true # Boolean | The default is false. If it is true, it  returns all backups, including failures. (optional)
$Size = 56 # Int32 | The number of records to return. (optional)
$View = "MyView" # String | The parameter to drive the type of get backups. (optional)

# Get all server disaster recovery backups
try {
    $Result = Get-ServerDrBackups -Page $Page -PageSize $PageSize -Filter $Filter -Full $Full -Size $Size -View $View
} catch {
    Write-Host ("Exception occurred when calling Get-ServerDrBackups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Full** | **Boolean**| The default is false. If it is true, it  returns all backups, including failures. | [optional] 
 **Size** | **Int32**| The number of records to return. | [optional] 
 **View** | **String**| The parameter to drive the type of get backups. | [optional] 

### Return type

[**SdrBackups**](SdrBackups.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ServerDrConfiguration"></a>
# **Get-ServerDrConfiguration**
> SdrConfiguration Get-ServerDrConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get server disaster recovery configuration by ID

Retrieves the server disaster recovery configuration by its ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | If you specify the ID as ""current"", you get the current Integrated Storage configuration.

# Get server disaster recovery configuration by ID
try {
    $Result = Get-ServerDrConfiguration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ServerDrConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| If you specify the ID as &quot;&quot;current&quot;&quot;, you get the current Integrated Storage configuration. | 

### Return type

[**SdrConfiguration**](SdrConfiguration.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ServerDrConfigurations"></a>
# **Get-ServerDrConfigurations**
> SdrConfigurations Get-ServerDrConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>

Get all server disaster recovery configurations

Retrieves all server disaster recovery configurations. The configurations detail includes the repository filesystem (NFS or Data Domain Boost), repository host, repository path, Data Domain Boost credential ID, type, and backupsEnabled flag. The configurations contain the server disaster recovery type, which specifies the PowerProtect Data Domain or integrated storage system supports that are currently in the server disaster recovery backup.  The GET /api/v2/server-disaster-recovery-configurations query produces new output that is collected from the data model. The output includes some of the defined fields that toggle the ability for a component to generate backups. The ability to disable a component's backup is exposed by the UI, and the user can optionally change the value. A change of the element that is bound to the enable/disable backup for the specific component triggers a PUT /api/v2/server-disaster-recovery-configurations call to update the field in the data model. The change is reflected in the ES index_data_component. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)

# Get all server disaster recovery configurations
try {
    $Result = Get-ServerDrConfigurations -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-ServerDrConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]

### Return type

[**SdrConfigurations**](SdrConfigurations.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ServerDrHosts"></a>
# **Get-ServerDrHosts**
> SdrHosts Get-ServerDrHosts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

Get all server disaster recovery hosts

Retrieves a list of all the server disaster recovery hosts. The host info includes id, nodeID, host name, and version. The nodeID is used to prepare the system for recovery. This API provides a list of available servers with disaster recovery backups. There could be more than one server. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)

# Get all server disaster recovery hosts
try {
    $Result = Get-ServerDrHosts -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Get-ServerDrHosts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 

### Return type

[**SdrHosts**](SdrHosts.md) (PSCustomObject)

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

<a id="Get-ServerDrStatus"></a>
# **Get-ServerDrStatus**
> SdrAction Get-ServerDrStatus<br>

Get status of server disaster recovery restore

Retrieves the restore server disaster recovery status. The status includes action status like starting time, elapsed seconds, state, error, and so on. The API is used by the UI to poll and check if restore is complete. Once the status is not active, the user is redirected to the login page.  Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get status of server disaster recovery restore
try {
    $Result = Get-ServerDrStatus
} catch {
    Write-Host ("Exception occurred when calling Get-ServerDrStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SdrAction**](SdrAction.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ServerDisasterRecoveryBackupReconciliation"></a>
# **Invoke-ServerDisasterRecoveryBackupReconciliation**
> void Invoke-ServerDisasterRecoveryBackupReconciliation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SdrBackupReconciliation] <PSCustomObject><br>

Reconciliation of Backup metadata

Server Disaster Recovery recreates the metadata for all the backups after a successful restore. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$SdrBackupReconciliation = Initialize-SdrBackupReconciliation -DiscoveryStartTime "MyDiscoveryStartTime" -WorkflowTaskId "MyWorkflowTaskId" # SdrBackupReconciliation |  (optional)

# Reconciliation of Backup metadata
try {
    $Result = Invoke-ServerDisasterRecoveryBackupReconciliation -SdrBackupReconciliation $SdrBackupReconciliation
} catch {
    Write-Host ("Exception occurred when calling Invoke-ServerDisasterRecoveryBackupReconciliation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SdrBackupReconciliation** | [**SdrBackupReconciliation**](SdrBackupReconciliation.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ServerDrBackup"></a>
# **Update-ServerDrBackup**
> void Update-ServerDrBackup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SdrBackup] <PSCustomObject><br>

Update server disaster recovery backup by ID

Updates the server disaster recovery backup by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Server disaster recovery backup ID sent in request.
$ComponentVersion = Initialize-ComponentVersion -EntityName "MyEntityName" -Version "MyVersion"
$SdrComponent = Initialize-SdrComponent -BackupPath "MyBackupPath" -BackupStatus "MyBackupStatus" -BackupsEnabled $false -Id "MyId" -IsComponentInternal $false -LastActivityId "MyLastActivityId" -Name "MyName" -Version "MyVersion"

$NetworkInterfaceReplacement = Initialize-NetworkInterfaceReplacement -NewAddress "MyNewAddress" -OldAddress "MyOldAddress"
$ReplacementDataDomain = Initialize-ReplacementDataDomain -Address "MyAddress" -Name "MyName" -NetworkInterfaces $NetworkInterfaceReplacement -OriginalName "MyOriginalName" -Password $false -Port 0 -RecoveredStorageUnits "MyRecoveredStorageUnits" -Username "MyUsername"

$RecoverOptions = Initialize-RecoverOptions -InvalidRootCARiskAccepted $false -ReplacementDataDomain $ReplacementDataDomain -RestoreApplianceOnStandalone $false -VaultRecovery $false

$SdrBackup = Initialize-SdrBackup -EventTriggerSource "MyEventTriggerSource" -BackupConsistencyType "MyBackupConsistencyType" -BackupTriggerSource "MyBackupTriggerSource" -Checksum "MyChecksum" -ComponentVersions $ComponentVersion -Components $SdrComponent -ConfigType "MyConfigType" -Consistency "MyConsistency" -CreationTime (Get-Date) -DeployedPlatform "MyDeployedPlatform" -ElapsedSeconds 0 -VarError "MyVarError" -Hostname "MyHostname" -Id "MyId" -LockboxPassphrase "MyLockboxPassphrase" -MfrManifestId "MyMfrManifestId" -MfrReplicationId "MyMfrReplicationId" -Name "MyName" -NoScheduledStorageAccess $false -NodeId "MyNodeId" -Recover $false -RecoverOptions $RecoverOptions -SequenceNumber 0 -SizeInBytes 0 -Solution "MySolution" -State "MyState" -ValidRootCA $false -Version "MyVersion" -WorkflowTaskId "MyWorkflowTaskId" # SdrBackup |  (optional)

# Update server disaster recovery backup by ID
try {
    $Result = Update-ServerDrBackup -Id $Id -SdrBackup $SdrBackup
} catch {
    Write-Host ("Exception occurred when calling Update-ServerDrBackup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Server disaster recovery backup ID sent in request. | 
 **SdrBackup** | [**SdrBackup**](SdrBackup.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ServerDrConfiguration"></a>
# **Update-ServerDrConfiguration**
> void Update-ServerDrConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SdrConfiguration] <PSCustomObject><br>

Update server disaster recovery configuration by ID

Updates the server disaster recovery configuration by its ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Server disaster recovery Configuration ID sent in request.
$SdrReplicationTarget = Initialize-SdrReplicationTarget -CredentialId "MyCredentialId" -DataTargetId "MyDataTargetId" -LastActivityId "MyLastActivityId" -StorageSystemId "MyStorageSystemId" -Type "DATA_DOMAIN_SYSTEM"
$SdrConfiguration = Initialize-SdrConfiguration -ActivityId "MyActivityId" -BackupsEnabled $false -CredentialId "MyCredentialId" -CredentialPassword "MyCredentialPassword" -CredentialType "MyCredentialType" -CredentialUsername "MyCredentialUsername" -Id "MyId" -PrimaryDataTargetId "MyPrimaryDataTargetId" -ReplicationTargets $SdrReplicationTarget -RepositoryFilesystem "MyRepositoryFilesystem" -RepositoryHost "MyRepositoryHost" -RepositoryPath "MyRepositoryPath" -RetentionLockEnabled $false -Type "MyType" # SdrConfiguration |  (optional)

# Update server disaster recovery configuration by ID
try {
    $Result = Update-ServerDrConfiguration -Id $Id -SdrConfiguration $SdrConfiguration
} catch {
    Write-Host ("Exception occurred when calling Update-ServerDrConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Server disaster recovery Configuration ID sent in request. | 
 **SdrConfiguration** | [**SdrConfiguration**](SdrConfiguration.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

