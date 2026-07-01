# PpdmApiReference.PpdmApiReference\Api.LogManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-SyslogsConfiguration**](LogManagementApi.md#New-SyslogsConfiguration) | **POST** /api/v2/syslogs-configurations | Create syslogs configuration
[**Invoke-DeleteSyslogsConfiguration**](LogManagementApi.md#Invoke-DeleteSyslogsConfiguration) | **DELETE** /api/v2/syslogs-configurations/{id} | Deletes a syslogs configuration
[**Get-LogDiskInfo**](LogManagementApi.md#Get-LogDiskInfo) | **GET** /api/v2/log-disk-infos | Get the current log disk information
[**Get-SyslogsConfiguration**](LogManagementApi.md#Get-SyslogsConfiguration) | **GET** /api/v2/syslogs-configurations/{id} | Get syslogs configuration by ID
[**Get-SyslogsConfigurations**](LogManagementApi.md#Get-SyslogsConfigurations) | **GET** /api/v2/syslogs-configurations | Get all syslogs configurations
[**Update-SyslogsConfiguration**](LogManagementApi.md#Update-SyslogsConfiguration) | **PATCH** /api/v2/syslogs-configurations/{id} | Update the syslogs configuration with the specified ID


<a id="New-SyslogsConfiguration"></a>
# **New-SyslogsConfiguration**
> SyslogsConfiguration New-SyslogsConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SyslogsConfiguration] <PSCustomObject><br>

Create syslogs configuration

Creates a new syslogs configuration and returns the response containing the syslogs configuration with its ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$MessageFilter = Initialize-MessageFilter -Facility "MyFacility" -MinSeverity "EMERGENCY"
$SyslogsConfiguration = Initialize-SyslogsConfiguration -ClientCertFile "MyClientCertFile" -ClientKeyFile "MyClientKeyFile" -Enabled $false -Id "MyId" -MessageFilters $MessageFilter -NtpConfigured $false -PermittedPeers "MyPermittedPeers" -ProtocolType "TLS" -ServerAddress "MyServerAddress" -ServerCAFile "MyServerCAFile" -ServerPort 0 -Status "CONNECTED" -TlsAuthMode "anon" # SyslogsConfiguration | 

# Create syslogs configuration
try {
    $Result = New-SyslogsConfiguration -SyslogsConfiguration $SyslogsConfiguration
} catch {
    Write-Host ("Exception occurred when calling New-SyslogsConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SyslogsConfiguration** | [**SyslogsConfiguration**](SyslogsConfiguration.md)|  | 

### Return type

[**SyslogsConfiguration**](SyslogsConfiguration.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteSyslogsConfiguration"></a>
# **Invoke-DeleteSyslogsConfiguration**
> void Invoke-DeleteSyslogsConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Deletes a syslogs configuration

Deletes a syslogs configuration. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID for the syslogs configuration.

# Deletes a syslogs configuration
try {
    $Result = Invoke-DeleteSyslogsConfiguration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteSyslogsConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID for the syslogs configuration. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LogDiskInfo"></a>
# **Get-LogDiskInfo**
> LogDiskInfos Get-LogDiskInfo<br>

Get the current log disk information

Returns the disk usage information for the partition on which logging resides.The value will be used to check whether it is allowed to create new log bundle. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get the current log disk information
try {
    $Result = Get-LogDiskInfo
} catch {
    Write-Host ("Exception occurred when calling Get-LogDiskInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LogDiskInfos**](LogDiskInfos.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SyslogsConfiguration"></a>
# **Get-SyslogsConfiguration**
> SyslogsConfiguration Get-SyslogsConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get syslogs configuration by ID

Retrieves the syslogs configuration with the specified ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID for the syslogs configuration.

# Get syslogs configuration by ID
try {
    $Result = Get-SyslogsConfiguration -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-SyslogsConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID for the syslogs configuration. | 

### Return type

[**SyslogsConfiguration**](SyslogsConfiguration.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SyslogsConfigurations"></a>
# **Get-SyslogsConfigurations**
> SyslogsConfigurations Get-SyslogsConfigurations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all syslogs configurations

Retrieves all syslogs configurations. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all syslogs configurations
try {
    $Result = Get-SyslogsConfigurations -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-SyslogsConfigurations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**SyslogsConfigurations**](SyslogsConfigurations.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-SyslogsConfiguration"></a>
# **Update-SyslogsConfiguration**
> SyslogsConfiguration Update-SyslogsConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SyslogsConfiguration] <PSCustomObject><br>

Update the syslogs configuration with the specified ID

Updates the syslogs configuration. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID for the syslogs configuration.
$MessageFilter = Initialize-MessageFilter -Facility "MyFacility" -MinSeverity "EMERGENCY"
$SyslogsConfiguration = Initialize-SyslogsConfiguration -ClientCertFile "MyClientCertFile" -ClientKeyFile "MyClientKeyFile" -Enabled $false -Id "MyId" -MessageFilters $MessageFilter -NtpConfigured $false -PermittedPeers "MyPermittedPeers" -ProtocolType "TLS" -ServerAddress "MyServerAddress" -ServerCAFile "MyServerCAFile" -ServerPort 0 -Status "CONNECTED" -TlsAuthMode "anon" # SyslogsConfiguration | 

# Update the syslogs configuration with the specified ID
try {
    $Result = Update-SyslogsConfiguration -Id $Id -SyslogsConfiguration $SyslogsConfiguration
} catch {
    Write-Host ("Exception occurred when calling Update-SyslogsConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID for the syslogs configuration. | 
 **SyslogsConfiguration** | [**SyslogsConfiguration**](SyslogsConfiguration.md)|  | 

### Return type

[**SyslogsConfiguration**](SyslogsConfiguration.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

