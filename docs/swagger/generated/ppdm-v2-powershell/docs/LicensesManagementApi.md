# PpdmApiReference.PpdmApiReference\Api.LicensesManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-License**](LicensesManagementApi.md#New-License) | **POST** /api/v2/licenses | Create a new license
[**Get-License**](LicensesManagementApi.md#Get-License) | **GET** /api/v2/licenses/{id} | Get a license by ID
[**Get-Licenses**](LicensesManagementApi.md#Get-Licenses) | **GET** /api/v2/licenses | Get all licenses
[**Update-License**](LicensesManagementApi.md#Update-License) | **PUT** /api/v2/licenses/{id} | Update a license by ID.


<a id="New-License"></a>
# **New-License**
> License New-License<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-License] <PSCustomObject><br>

Create a new license

Creates a new license. A license xml file is passed in a key field. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$LicenseKey = Initialize-LicenseKey -EndDate "MyEndDate" -FeatureCode "MyFeatureCode" -FeatureName "MyFeatureName" -FrontendCapacityInTB 0 -GracePeriod "MyGracePeriod" -LicenseType "MyLicenseType" -NumberOfSockets 0 -Plc "MyPlc" -ProductLine "MyProductLine" -StartDate "MyStartDate" -UomCode "MyUomCode" -UomName "MyUomName"
$License = Initialize-License -ActivationDate "MyActivationDate" -DaysLeftForExpiry 0 -Id "MyId" -Key "MyKey" -LicenseKeys $LicenseKey -Status "VALID" -Swid "MySwid" -Type "TRIAL" # License | 

# Create a new license
try {
    $Result = New-License -License $License
} catch {
    Write-Host ("Exception occurred when calling New-License: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **License** | [**License**](License.md)|  | 

### Return type

[**License**](License.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-License"></a>
# **Get-License**
> License Get-License<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a license by ID

Retrieves the license associated with the specified ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | License ID sent in request.

# Get a license by ID
try {
    $Result = Get-License -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-License: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| License ID sent in request. | 

### Return type

[**License**](License.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Licenses"></a>
# **Get-Licenses**
> Licenses Get-Licenses<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all licenses

Retrieves licenses that are available on the system. PowerProtect Data Manager licenses include status details such as capacity usage, license Type, license status. Type can be CAPACITY, SOCKET, APPLIANCE. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all licenses
try {
    $Result = Get-Licenses -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Licenses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Licenses**](Licenses.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-License"></a>
# **Update-License**
> License Update-License<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-License] <PSCustomObject><br>

Update a license by ID.

Updates the license associated with the specified ID. A license xml file is passed in a key field in the REST API body. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | License ID sent in request.
$LicenseKey = Initialize-LicenseKey -EndDate "MyEndDate" -FeatureCode "MyFeatureCode" -FeatureName "MyFeatureName" -FrontendCapacityInTB 0 -GracePeriod "MyGracePeriod" -LicenseType "MyLicenseType" -NumberOfSockets 0 -Plc "MyPlc" -ProductLine "MyProductLine" -StartDate "MyStartDate" -UomCode "MyUomCode" -UomName "MyUomName"
$License = Initialize-License -ActivationDate "MyActivationDate" -DaysLeftForExpiry 0 -Id "MyId" -Key "MyKey" -LicenseKeys $LicenseKey -Status "VALID" -Swid "MySwid" -Type "TRIAL" # License | 

# Update a license by ID.
try {
    $Result = Update-License -Id $Id -License $License
} catch {
    Write-Host ("Exception occurred when calling Update-License: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| License ID sent in request. | 
 **License** | [**License**](License.md)|  | 

### Return type

[**License**](License.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

