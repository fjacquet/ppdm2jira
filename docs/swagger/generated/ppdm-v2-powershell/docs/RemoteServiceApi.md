# PpdmApiReference.PpdmApiReference\Api.RemoteServiceApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DownloadRemoteUpgradePackage**](RemoteServiceApi.md#Invoke-DownloadRemoteUpgradePackage) | **GET** /api/v2/remote-upgrade-packages/{id}/download | Download the remote upgrade package that is assigned to the product
[**Get-RemoteUpgradePackageDownloadProgress**](RemoteServiceApi.md#Get-RemoteUpgradePackageDownloadProgress) | **GET** /api/v2/remote-upgrade-packages/{id}/download-status | Get remote upgrade package download progress
[**Get-RemoteUpgradePackages**](RemoteServiceApi.md#Get-RemoteUpgradePackages) | **GET** /api/v2/remote-upgrade-packages | Get the list of available upgrade packages


<a id="Invoke-DownloadRemoteUpgradePackage"></a>
# **Invoke-DownloadRemoteUpgradePackage**
> RemoteUpgradePackageDownload Invoke-DownloadRemoteUpgradePackage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Download the remote upgrade package that is assigned to the product

Starts file download for the remote upgrade package of the specified ID. The API just trigger the downloading, it does not provide status of downloading. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the remote services gateway connection.

# Download the remote upgrade package that is assigned to the product
try {
    $Result = Invoke-DownloadRemoteUpgradePackage -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DownloadRemoteUpgradePackage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the remote services gateway connection. | 

### Return type

[**RemoteUpgradePackageDownload**](RemoteUpgradePackageDownload.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-RemoteUpgradePackageDownloadProgress"></a>
# **Get-RemoteUpgradePackageDownloadProgress**
> RemoteUpgradePackageDownloadProgress Get-RemoteUpgradePackageDownloadProgress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get remote upgrade package download progress

Retieves the download progress percentage of the remote upgrade package with the specified ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID of the remote services gateway connection.

# Get remote upgrade package download progress
try {
    $Result = Get-RemoteUpgradePackageDownloadProgress -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-RemoteUpgradePackageDownloadProgress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the remote services gateway connection. | 

### Return type

[**RemoteUpgradePackageDownloadProgress**](RemoteUpgradePackageDownloadProgress.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-RemoteUpgradePackages"></a>
# **Get-RemoteUpgradePackages**
> RemoteUpgradePackages Get-RemoteUpgradePackages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get the list of available upgrade packages

Synchronize the remote upgrade package list from Managed File Transfer (MFT) to the database. Then return the remote upgrade package list. If automatic downloading is allowed, the latest package downloads. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get the list of available upgrade packages
try {
    $Result = Get-RemoteUpgradePackages -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-RemoteUpgradePackages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**RemoteUpgradePackages**](RemoteUpgradePackages.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

