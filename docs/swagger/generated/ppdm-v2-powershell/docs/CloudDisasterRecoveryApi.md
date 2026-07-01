# PpdmApiReference.PpdmApiReference\Api.CloudDisasterRecoveryApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-CloudDrAccount**](CloudDisasterRecoveryApi.md#New-CloudDrAccount) | **POST** /api/v2/cloud-dr-accounts | Create Cloud DR account
[**New-CloudDrDataTarget**](CloudDisasterRecoveryApi.md#New-CloudDrDataTarget) | **POST** /api/v2/cloud-dr-accounts/{id}/cloud-dr-data-targets | Create a Cloud DR target
[**Invoke-DeleteCloudDrDataTarget**](CloudDisasterRecoveryApi.md#Invoke-DeleteCloudDrDataTarget) | **DELETE** /api/v2/cloud-dr-accounts/{id}/cloud-dr-data-targets/{tdId} | Delete a Cloud DR target
[**Invoke-DeleteCloudDrProxy**](CloudDisasterRecoveryApi.md#Invoke-DeleteCloudDrProxy) | **DELETE** /api/v2/cloud-dr-proxy | Delete Cloud DR proxy configuration
[**Invoke-DeleteCloudDrServer**](CloudDisasterRecoveryApi.md#Invoke-DeleteCloudDrServer) | **DELETE** /api/v2/cloud-dr-server-deployment | Delete the CDRS
[**Deploy-CloudDrServer**](CloudDisasterRecoveryApi.md#Deploy-CloudDrServer) | **POST** /api/v2/cloud-dr-server-deployment | Deploy a CDRS
[**Stop-CloudDrSession**](CloudDisasterRecoveryApi.md#Stop-CloudDrSession) | **DELETE** /api/v2/cloud-dr-sessions/{drId} | End Cloud DR session
[**Get-CloudDrAccount**](CloudDisasterRecoveryApi.md#Get-CloudDrAccount) | **GET** /api/v2/cloud-dr-accounts/{id} | Get Cloud DR account by ID
[**Get-CloudDrAccounts**](CloudDisasterRecoveryApi.md#Get-CloudDrAccounts) | **GET** /api/v2/cloud-dr-accounts | Get Cloud DR accounts
[**Get-CloudDrConfiguration**](CloudDisasterRecoveryApi.md#Get-CloudDrConfiguration) | **GET** /api/v2/cloud-dr-configurations/{key} | Get Cloud DR configuration by key
[**Get-CloudDrDataTarget**](CloudDisasterRecoveryApi.md#Get-CloudDrDataTarget) | **GET** /api/v2/cloud-dr-accounts/{id}/cloud-dr-data-targets/{tdId} | Get a Cloud DR target
[**Get-CloudDrDataTargets**](CloudDisasterRecoveryApi.md#Get-CloudDrDataTargets) | **GET** /api/v2/cloud-dr-accounts/{id}/cloud-dr-data-targets | Get all Cloud DR targets
[**Get-CloudDrProxy**](CloudDisasterRecoveryApi.md#Get-CloudDrProxy) | **GET** /api/v2/cloud-dr-proxy | Get Cloud DR proxy configuration
[**Get-CloudDrRegionsNetworks**](CloudDisasterRecoveryApi.md#Get-CloudDrRegionsNetworks) | **GET** /api/v2/cloud-dr-regions/{region}/networks | Get Cloud DR target networks
[**Get-CloudDrServer**](CloudDisasterRecoveryApi.md#Get-CloudDrServer) | **GET** /api/v2/cloud-dr-server-deployment | Get the CDRS deployment state
[**Get-CloudDrServerConfiguration**](CloudDisasterRecoveryApi.md#Get-CloudDrServerConfiguration) | **GET** /api/v2/cloud-dr-server-configuration | Get CDRS properties
[**Get-CloudDrServerVersion**](CloudDisasterRecoveryApi.md#Get-CloudDrServerVersion) | **GET** /api/v2/cloud-dr-server-version | Get CDRS version
[**Get-CloudDrSessions**](CloudDisasterRecoveryApi.md#Get-CloudDrSessions) | **GET** /api/v2/cloud-dr-sessions | Get Cloud DR sessions
[**Get-CloudDrStorageContainer**](CloudDisasterRecoveryApi.md#Get-CloudDrStorageContainer) | **GET** /api/v2/cloud-dr-accounts/{id}/cloud-dr-storage-containers/{scId} | Get a Cloud DR storage container
[**Get-CloudDrStorageContainers**](CloudDisasterRecoveryApi.md#Get-CloudDrStorageContainers) | **GET** /api/v2/cloud-dr-accounts/{id}/cloud-dr-storage-containers | Get Cloud DR storage containers
[**Get-CloudDrVCenter**](CloudDisasterRecoveryApi.md#Get-CloudDrVCenter) | **GET** /api/v2/cloud-dr-vcenters | Get Cloud DR vCenters list
[**Get-CloudDrVCenterInventory**](CloudDisasterRecoveryApi.md#Get-CloudDrVCenterInventory) | **GET** /api/v2/cloud-dr-vcenters/{id}/inventory | Get vCenter inventory
[**Update-CloudDrAccount**](CloudDisasterRecoveryApi.md#Update-CloudDrAccount) | **PUT** /api/v2/cloud-dr-accounts/{id} | Update a Cloud DR account
[**Update-CloudDrConfigurations**](CloudDisasterRecoveryApi.md#Update-CloudDrConfigurations) | **PUT** /api/v2/cloud-dr-configurations | Update Cloud DR configuration
[**Update-CloudDrProxy**](CloudDisasterRecoveryApi.md#Update-CloudDrProxy) | **PUT** /api/v2/cloud-dr-proxy | Update Cloud DR proxy configuration
[**Update-CloudDrServerConfiguration**](CloudDisasterRecoveryApi.md#Update-CloudDrServerConfiguration) | **PATCH** /api/v2/cloud-dr-server-configuration | Edit CDRS connection properties
[**Update-CloudDrVCenterConfiguration**](CloudDisasterRecoveryApi.md#Update-CloudDrVCenterConfiguration) | **PUT** /api/v2/cloud-dr-vcenters/{id}/configuration | Update vCenter configuration


<a id="New-CloudDrAccount"></a>
# **New-CloudDrAccount**
> CloudAccount New-CloudDrAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CloudAccount] <PSCustomObject><br>

Create Cloud DR account

Creates a new Cloud Disaster Recovery account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ProviderParameter = Initialize-ProviderParameter -Name "MyName" -Value "MyValue"
$CloudAccount = Initialize-CloudAccount -ConnectionStatus "MyConnectionStatus" -ConnectionStatusMessage "MyConnectionStatusMessage" -Id "MyId" -ProviderAccountId "MyProviderAccountId" -ProviderName "MyProviderName" -ProviderParameters $ProviderParameter -SecretKey "MySecretKey" -UserKey "MyUserKey" -UserName "MyUserName" # CloudAccount |  (optional)

# Create Cloud DR account
try {
    $Result = New-CloudDrAccount -CloudAccount $CloudAccount
} catch {
    Write-Host ("Exception occurred when calling New-CloudDrAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CloudAccount** | [**CloudAccount**](CloudAccount.md)|  | [optional] 

### Return type

[**CloudAccount**](CloudAccount.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-CloudDrDataTarget"></a>
# **New-CloudDrDataTarget**
> CloudTarget New-CloudDrDataTarget<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CloudTarget] <PSCustomObject><br>

Create a Cloud DR target

Creates Cloud Disaster Recovery target for the specified Cloud DR account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the Cloud DR account.
$StorageContainer = Initialize-StorageContainer -CloudAccountId "MyCloudAccountId" -Id "MyId" -Location "MyLocation" -Name "MyName" -Type "MyType"
$CloudTarget = Initialize-CloudTarget -CopiesStorageContainer $StorageContainer -EncryptionMethod "MyEncryptionMethod" -Id "MyId" -Name "MyName" -State "ACTIVE" # CloudTarget |  (optional)

# Create a Cloud DR target
try {
    $Result = New-CloudDrDataTarget -Id $Id -CloudTarget $CloudTarget
} catch {
    Write-Host ("Exception occurred when calling New-CloudDrDataTarget: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Cloud DR account. | 
 **CloudTarget** | [**CloudTarget**](CloudTarget.md)|  | [optional] 

### Return type

[**CloudTarget**](CloudTarget.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteCloudDrDataTarget"></a>
# **Invoke-DeleteCloudDrDataTarget**
> void Invoke-DeleteCloudDrDataTarget<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TdId] <String><br>

Delete a Cloud DR target

Deletes Cloud Disaster Recovery target for the specified Cloud DR account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the Cloud DR account.
$TdId = "MyTdId" # String | ID of the Cloud DR target.

# Delete a Cloud DR target
try {
    $Result = Invoke-DeleteCloudDrDataTarget -Id $Id -TdId $TdId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCloudDrDataTarget: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Cloud DR account. | 
 **TdId** | **String**| ID of the Cloud DR target. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteCloudDrProxy"></a>
# **Invoke-DeleteCloudDrProxy**
> SystemCollectionsHashtable Invoke-DeleteCloudDrProxy<br>

Delete Cloud DR proxy configuration

Deletes proxy details from Cloud DR. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Delete Cloud DR proxy configuration
try {
    $Result = Invoke-DeleteCloudDrProxy
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCloudDrProxy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteCloudDrServer"></a>
# **Invoke-DeleteCloudDrServer**
> void Invoke-DeleteCloudDrServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <String><br>

Delete the CDRS

Deletes the Cloud Disaster Recovery Server (CDRS). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Body = "MyBody" # String |  (optional)

# Delete the CDRS
try {
    $Result = Invoke-DeleteCloudDrServer -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCloudDrServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Deploy-CloudDrServer"></a>
# **Deploy-CloudDrServer**
> AsyncTaskResponse Deploy-CloudDrServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeployCdrsRequest] <PSCustomObject><br>

Deploy a CDRS

Deploys a Cloud Disaster Recovery Server (CDRS). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DeployCdrsRequest = Initialize-DeployCdrsRequest -AdminPassword "MyAdminPassword" -CidrBlockIp "MyCidrBlockIp" -CloudTargetId "MyCloudTargetId" -DeleteExisting $false -Email "MyEmail" -MonitorPassword "MyMonitorPassword" -PrivateDeployment $false -SubnetId "MySubnetId" -VpcId "MyVpcId" -WorkflowTaskId "MyWorkflowTaskId" # DeployCdrsRequest |  (optional)

# Deploy a CDRS
try {
    $Result = Deploy-CloudDrServer -DeployCdrsRequest $DeployCdrsRequest
} catch {
    Write-Host ("Exception occurred when calling Deploy-CloudDrServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeployCdrsRequest** | [**DeployCdrsRequest**](DeployCdrsRequest.md)|  | [optional] 

### Return type

[**AsyncTaskResponse**](AsyncTaskResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-CloudDrSession"></a>
# **Stop-CloudDrSession**
> void Stop-CloudDrSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DrId] <String><br>

End Cloud DR session

Ends the Cloud Disaster Recovery session according to the specified session ID. You can get a list of Cloud Disaster Recovery session IDs by using GET /api/v2/cloud-dr-sessions. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DrId = "MyDrId" # String | Cloud DR session ID.

# End Cloud DR session
try {
    $Result = Stop-CloudDrSession -DrId $DrId
} catch {
    Write-Host ("Exception occurred when calling Stop-CloudDrSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DrId** | **String**| Cloud DR session ID. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrAccount"></a>
# **Get-CloudDrAccount**
> CloudAccount Get-CloudDrAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Cloud DR account by ID

Retrieves the specified Cloud Disaster Recovery account by ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Cloud DR account ID.

# Get Cloud DR account by ID
try {
    $Result = Get-CloudDrAccount -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Cloud DR account ID. | 

### Return type

[**CloudAccount**](CloudAccount.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrAccounts"></a>
# **Get-CloudDrAccounts**
> CloudAccounts Get-CloudDrAccounts<br>

Get Cloud DR accounts

Retrieves a complete listing of the Cloud Disaster Recovery (Cloud DR) accounts in the system. This listing includes the IDs for each Cloud DR account as well as other information such as the name of the provider, user name, connection status, and so on. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get Cloud DR accounts
try {
    $Result = Get-CloudDrAccounts
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CloudAccounts**](CloudAccounts.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrConfiguration"></a>
# **Get-CloudDrConfiguration**
> CdrConfiguration Get-CloudDrConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <String><br>

Get Cloud DR configuration by key

Retrieves the Cloud Disaster Recovery configuration setting for the specified key. Cloud DR configuration settings are internal and should not be modified without the supervision of Customer Support. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Key = "MyKey" # String | Key of the Cloud DR configuration setting.

# Get Cloud DR configuration by key
try {
    $Result = Get-CloudDrConfiguration -Key $Key
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Key** | **String**| Key of the Cloud DR configuration setting. | 

### Return type

[**CdrConfiguration**](CdrConfiguration.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrDataTarget"></a>
# **Get-CloudDrDataTarget**
> CloudTarget Get-CloudDrDataTarget<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TdId] <String><br>

Get a Cloud DR target

Retrieves Cloud Disaster Recovery target by its ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the Cloud DR account.
$TdId = "MyTdId" # String | ID of the Cloud DR target.

# Get a Cloud DR target
try {
    $Result = Get-CloudDrDataTarget -Id $Id -TdId $TdId
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrDataTarget: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Cloud DR account. | 
 **TdId** | **String**| ID of the Cloud DR target. | 

### Return type

[**CloudTarget**](CloudTarget.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrDataTargets"></a>
# **Get-CloudDrDataTargets**
> CloudTargets Get-CloudDrDataTargets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get all Cloud DR targets

Retrieves a list of Cloud DR targets for the specified Cloud DR account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the Cloud DR account.

# Get all Cloud DR targets
try {
    $Result = Get-CloudDrDataTargets -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrDataTargets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Cloud DR account. | 

### Return type

[**CloudTargets**](CloudTargets.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrProxy"></a>
# **Get-CloudDrProxy**
> CdrProxyConfigurationOutput[] Get-CloudDrProxy<br>

Get Cloud DR proxy configuration

Retrieves details about the Cloud DR proxy. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get Cloud DR proxy configuration
try {
    $Result = Get-CloudDrProxy
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrProxy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CdrProxyConfigurationOutput[]**](CdrProxyConfigurationOutput.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrRegionsNetworks"></a>
# **Get-CloudDrRegionsNetworks**
> CdrCloudNetworks Get-CloudDrRegionsNetworks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Region] <String><br>

Get Cloud DR target networks

Retrieves Cloud Disaster Recovery (Cloud DR) target networks for the specified region. Getting this information enables you to run a disaster recovery operation. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Region = "MyRegion" # String | Specific region.

# Get Cloud DR target networks
try {
    $Result = Get-CloudDrRegionsNetworks -Region $Region
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrRegionsNetworks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Region** | **String**| Specific region. | 

### Return type

[**CdrCloudNetworks**](CdrCloudNetworks.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrServer"></a>
# **Get-CloudDrServer**
> DeployStateProperties Get-CloudDrServer<br>

Get the CDRS deployment state

Get the Cloud Disaster Recovery Server (CDRS) deployment state. The deployment state includes job name, deployment state, and deployment stages and their status. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get the CDRS deployment state
try {
    $Result = Get-CloudDrServer
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DeployStateProperties**](DeployStateProperties.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrServerConfiguration"></a>
# **Get-CloudDrServerConfiguration**
> CdrsExtendedProperties Get-CloudDrServerConfiguration<br>

Get CDRS properties

Retrieves the Cloud Disaster Recovery Server (CDRS) properties. CDRS properties include Cloud target ID, CDRS connection IP address and connectivity state, region, whether the deployment completed or not, and so on. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get CDRS properties
try {
    $Result = Get-CloudDrServerConfiguration
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrServerConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CdrsExtendedProperties**](CdrsExtendedProperties.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrServerVersion"></a>
# **Get-CloudDrServerVersion**
> CdrVersion Get-CloudDrServerVersion<br>

Get CDRS version

Retrieves the Cloud Disaster Recovery Server (CDRS) version. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get CDRS version
try {
    $Result = Get-CloudDrServerVersion
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrServerVersion: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CdrVersion**](CdrVersion.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrSessions"></a>
# **Get-CloudDrSessions**
> CdrSessions Get-CloudDrSessions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get Cloud DR sessions

Retrieves Cloud Disaster Recovery sessions by pagination, order by, and filter. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get Cloud DR sessions
try {
    $Result = Get-CloudDrSessions -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrSessions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**CdrSessions**](CdrSessions.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrStorageContainer"></a>
# **Get-CloudDrStorageContainer**
> StorageContainer Get-CloudDrStorageContainer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScId] <String><br>

Get a Cloud DR storage container

Retrieves the specified Cloud Disaster Recovery storage container for the Cloud DR account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the Cloud DR account.
$ScId = "MyScId" # String | Storage container ID.

# Get a Cloud DR storage container
try {
    $Result = Get-CloudDrStorageContainer -Id $Id -ScId $ScId
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrStorageContainer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the Cloud DR account. | 
 **ScId** | **String**| Storage container ID. | 

### Return type

[**StorageContainer**](StorageContainer.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrStorageContainers"></a>
# **Get-CloudDrStorageContainers**
> StorageContainers Get-CloudDrStorageContainers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>

Get Cloud DR storage containers

Retrieves a list of Cloud DR storage containers for the specified Cloud DR account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of storage container. 
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)

# Get Cloud DR storage containers
try {
    $Result = Get-CloudDrStorageContainers -Id $Id -Page $Page -PageSize $PageSize
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrStorageContainers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of storage container.  | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]

### Return type

[**StorageContainers**](StorageContainers.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrVCenter"></a>
# **Get-CloudDrVCenter**
> CdrVcRemoteServers Get-CloudDrVCenter<br>

Get Cloud DR vCenters list

Retrieves a list of Cloud Disaster Recovery vCenter Servers. The list includes the vCenter Server IDs, which you can use to update the vCenter Server configuration or get the vCenter Server inventory of the specified vCenter Server. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get Cloud DR vCenters list
try {
    $Result = Get-CloudDrVCenter
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrVCenter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CdrVcRemoteServers**](CdrVcRemoteServers.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-CloudDrVCenterInventory"></a>
# **Get-CloudDrVCenterInventory**
> CdrVcInventory Get-CloudDrVCenterInventory<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get vCenter inventory

Retrieves vCenter inventory for the specified vCenter Server ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The vCenter Server ID.

# Get vCenter inventory
try {
    $Result = Get-CloudDrVCenterInventory -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-CloudDrVCenterInventory: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The vCenter Server ID. | 

### Return type

[**CdrVcInventory**](CdrVcInventory.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-CloudDrAccount"></a>
# **Update-CloudDrAccount**
> CloudAccount Update-CloudDrAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CloudAccount] <PSCustomObject><br>

Update a Cloud DR account

Updates the specified Cloud Disaster Recovery account. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The Cloud DR account ID.
$ProviderParameter = Initialize-ProviderParameter -Name "MyName" -Value "MyValue"
$CloudAccount = Initialize-CloudAccount -ConnectionStatus "MyConnectionStatus" -ConnectionStatusMessage "MyConnectionStatusMessage" -Id "MyId" -ProviderAccountId "MyProviderAccountId" -ProviderName "MyProviderName" -ProviderParameters $ProviderParameter -SecretKey "MySecretKey" -UserKey "MyUserKey" -UserName "MyUserName" # CloudAccount |  (optional)

# Update a Cloud DR account
try {
    $Result = Update-CloudDrAccount -Id $Id -CloudAccount $CloudAccount
} catch {
    Write-Host ("Exception occurred when calling Update-CloudDrAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The Cloud DR account ID. | 
 **CloudAccount** | [**CloudAccount**](CloudAccount.md)|  | [optional] 

### Return type

[**CloudAccount**](CloudAccount.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-CloudDrConfigurations"></a>
# **Update-CloudDrConfigurations**
> CdrsExtendedProperties Update-CloudDrConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CdrConfiguration] <PSCustomObject><br>

Update Cloud DR configuration

Update the Cloud Disaster Recovery configuration. Cloud DR configuration settings are internal and should not be modified without the supervision of Customer Support. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CdrConfiguration = Initialize-CdrConfiguration -Key "MyKey" -Value "MyValue" # CdrConfiguration |  (optional)

# Update Cloud DR configuration
try {
    $Result = Update-CloudDrConfigurations -CdrConfiguration $CdrConfiguration
} catch {
    Write-Host ("Exception occurred when calling Update-CloudDrConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CdrConfiguration** | [**CdrConfiguration**](CdrConfiguration.md)|  | [optional] 

### Return type

[**CdrsExtendedProperties**](CdrsExtendedProperties.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-CloudDrProxy"></a>
# **Update-CloudDrProxy**
> CdrProxyConfigurationOutputDetailed Update-CloudDrProxy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CdrProxyConfigurationInput] <PSCustomObject><br>

Update Cloud DR proxy configuration

Updates proxy details in Cloud DR. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CdrProxyConfigurationInput = Initialize-CdrProxyConfigurationInput -Enable $false -EnableAuthentication $false -VarHost "MyVarHost" -Port 0 -Username "MyUsername" -Password "MyPassword" # CdrProxyConfigurationInput |  (optional)

# Update Cloud DR proxy configuration
try {
    $Result = Update-CloudDrProxy -CdrProxyConfigurationInput $CdrProxyConfigurationInput
} catch {
    Write-Host ("Exception occurred when calling Update-CloudDrProxy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CdrProxyConfigurationInput** | [**CdrProxyConfigurationInput**](CdrProxyConfigurationInput.md)|  | [optional] 

### Return type

[**CdrProxyConfigurationOutputDetailed**](CdrProxyConfigurationOutputDetailed.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-CloudDrServerConfiguration"></a>
# **Update-CloudDrServerConfiguration**
> CdrsExtendedProperties Update-CloudDrServerConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateCdrServerConfigurationRequest] <PSCustomObject><br>

Edit CDRS connection properties

Edit the Cloud Disaster Recovery Server (CDRS) connection properties. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$UpdateCdrServerConfigurationRequest = Initialize-UpdateCdrServerConfigurationRequest -ConnectionIp "MyConnectionIp" -Password "MyPassword" # UpdateCdrServerConfigurationRequest |  (optional)

# Edit CDRS connection properties
try {
    $Result = Update-CloudDrServerConfiguration -UpdateCdrServerConfigurationRequest $UpdateCdrServerConfigurationRequest
} catch {
    Write-Host ("Exception occurred when calling Update-CloudDrServerConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UpdateCdrServerConfigurationRequest** | [**UpdateCdrServerConfigurationRequest**](UpdateCdrServerConfigurationRequest.md)|  | [optional] 

### Return type

[**CdrsExtendedProperties**](CdrsExtendedProperties.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-CloudDrVCenterConfiguration"></a>
# **Update-CloudDrVCenterConfiguration**
> SystemCollectionsHashtable Update-CloudDrVCenterConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CdrVcConfiguration] <PSCustomObject><br>

Update vCenter configuration

Updates the vCenter configuration for the specified vCenter Server. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The vCenter Server ID.
$CdrVcConfigurationMoref = Initialize-CdrVcConfigurationMoref -MorefId "MyMorefId" -Type "MyType"
$CdrVcInventoryDataStores = Initialize-CdrVcInventoryDataStores -AvailableNetworks $CdrVcConfigurationMoref -Moref $CdrVcConfigurationMoref -Name "MyName"

$CdrVcConfigurationIpRanges = Initialize-CdrVcConfigurationIpRanges -BaseIp "MyBaseIp" -Range 0
$CdrVcConfigurationNetworks = Initialize-CdrVcConfigurationNetworks -Gateway "MyGateway" -IpRanges $CdrVcConfigurationIpRanges -Moref $CdrVcConfigurationMoref -Name "MyName" -NetMask "MyNetMask" -PrimaryDns "MyPrimaryDns" -SecondaryDns "MySecondaryDns"

$CdrVcConfiguration = Initialize-CdrVcConfiguration -DataStores $CdrVcInventoryDataStores -FailoverTarget $false -Id "MyId" -Networks $CdrVcConfigurationNetworks # CdrVcConfiguration |  (optional)

# Update vCenter configuration
try {
    $Result = Update-CloudDrVCenterConfiguration -Id $Id -CdrVcConfiguration $CdrVcConfiguration
} catch {
    Write-Host ("Exception occurred when calling Update-CloudDrVCenterConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The vCenter Server ID. | 
 **CdrVcConfiguration** | [**CdrVcConfiguration**](CdrVcConfiguration.md)|  | [optional] 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

