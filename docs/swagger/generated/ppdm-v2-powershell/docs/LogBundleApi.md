# PpdmApiReference.PpdmApiReference\Api.LogBundleApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-LogBundle**](LogBundleApi.md#New-LogBundle) | **POST** /api/v2/log-bundles | Create a new log bundle
[**Invoke-DeleteLogBundle**](LogBundleApi.md#Invoke-DeleteLogBundle) | **DELETE** /api/v2/log-bundles/{id} | Deletes a log bundle
[**Get-LogBundle**](LogBundleApi.md#Get-LogBundle) | **GET** /api/v2/log-bundles/{id} | Get a log bundle by ID
[**Get-LogBundleFiles**](LogBundleApi.md#Get-LogBundleFiles) | **GET** /api/v2/log-bundles/{logBundleId}/files/{id} | Get the physical log bundle file
[**Get-LogBundles**](LogBundleApi.md#Get-LogBundles) | **GET** /api/v2/log-bundles | Get all existing log bundles in the system


<a id="New-LogBundle"></a>
# **New-LogBundle**
> LogBundleCreateResponse New-LogBundle<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LogBundle] <PSCustomObject><br>

Create a new log bundle

Creates a new log bundle and returns the log bundle with its ID and a status of BUILDING. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$LogBundleFile = Initialize-LogBundleFile -FileName "MyFileName" -SourceSystems "MySourceSystems" -Url "MyUrl"

$Link = Initialize-Link -Href "MyHref" -Rel "MyRel"
$IdLink = Initialize-IdLink -Id "MyId" -Link $Link

$LogBundleFormula = Initialize-LogBundleFormula -CreatedDate "MyCreatedDate" -Description "MyDescription" -Duration "MyDuration" -Id "MyId" -IncludeAllLogCategories $false -IncludeAllLogSources $false -LogCategoryList $IdLink -LogSourceList $IdLink -Name "MyName"

$LogBundle = Initialize-LogBundle -BundleStartDate "MyBundleStartDate" -Filename "MyFilename" -GenerationEndDateTime (Get-Date) -GenerationStartDateTime (Get-Date) -HypervisorServerIds "MyHypervisorServerIds" -Id "MyId" -LogBundleFiles $LogBundleFile -LogBundleFormula $LogBundleFormula -PercentComplete 0 -Platform "STANDALONE" -SizeOnDiskInBytes 0 -SourceSystems "MySourceSystems" -Status "MyStatus" # LogBundle | 

# Create a new log bundle
try {
    $Result = New-LogBundle -LogBundle $LogBundle
} catch {
    Write-Host ("Exception occurred when calling New-LogBundle: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LogBundle** | [**LogBundle**](LogBundle.md)|  | 

### Return type

[**LogBundleCreateResponse**](LogBundleCreateResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteLogBundle"></a>
# **Invoke-DeleteLogBundle**
> LogBundleDeleteResponse Invoke-DeleteLogBundle<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Deletes a log bundle

Deletes a completed, cancelled, or failed log bundle.  A building log bundle cannot be deleted. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID for the log bundle.

# Deletes a log bundle
try {
    $Result = Invoke-DeleteLogBundle -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteLogBundle: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID for the log bundle. | 

### Return type

[**LogBundleDeleteResponse**](LogBundleDeleteResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LogBundle"></a>
# **Get-LogBundle**
> LogBundle Get-LogBundle<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a log bundle by ID

Retrieves the log bundle with the specified ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | ID for the log bundle.

# Get a log bundle by ID
try {
    $Result = Get-LogBundle -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-LogBundle: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID for the log bundle. | 

### Return type

[**LogBundle**](LogBundle.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LogBundleFiles"></a>
# **Get-LogBundleFiles**
> void Get-LogBundleFiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LogBundleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.Nullable[SystemCollectionsHashtable]><br>

Get the physical log bundle file

Retrieves the physical log bundle file. The log bundle file name is specified in the content-disposition header. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$LogBundleId = "MyLogBundleId" # String | ID for the log bundle.
$Id = "MyId" # String | ID for the file.
$Body = @{ key_example = ... } # SystemCollectionsHashtable |  (optional)

# Get the physical log bundle file
try {
    $Result = Get-LogBundleFiles -LogBundleId $LogBundleId -Id $Id -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Get-LogBundleFiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LogBundleId** | **String**| ID for the log bundle. | 
 **Id** | **String**| ID for the file. | 
 **Body** | **SystemCollectionsHashtable**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LogBundles"></a>
# **Get-LogBundles**
> LogBundles Get-LogBundles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Refresh] <System.Nullable[Boolean]><br>

Get all existing log bundles in the system

Retrieves all existing log bundles in the system. Supports filtering. The status case is ignored. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$Refresh = $true # Boolean | Query should return the latest results. (optional)

# Get all existing log bundles in the system
try {
    $Result = Get-LogBundles -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -Refresh $Refresh
} catch {
    Write-Host ("Exception occurred when calling Get-LogBundles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Refresh** | **Boolean**| Query should return the latest results. | [optional] 

### Return type

[**LogBundles**](LogBundles.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

