# PpdmApiReference.PpdmApiReference\Api.WhitelistManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Whitelist**](WhitelistManagementApi.md#New-Whitelist) | **POST** /api/v2/whitelist | Create a whitelist entry
[**Invoke-DeleteWhitelist**](WhitelistManagementApi.md#Invoke-DeleteWhitelist) | **DELETE** /api/v2/whitelist/{id} | Delete a whitelist entry
[**Enable-AutomaticWhitelist**](WhitelistManagementApi.md#Enable-AutomaticWhitelist) | **POST** /api/v2/whitelist/automatic | Enable automatic whitelist
[**Get-AutomaticWhitelist**](WhitelistManagementApi.md#Get-AutomaticWhitelist) | **GET** /api/v2/whitelist/automatic | Get automatic whitelist
[**Get-Whitelist**](WhitelistManagementApi.md#Get-Whitelist) | **GET** /api/v2/whitelist/{id} | Get a whitelist entry
[**Get-Whitelists**](WhitelistManagementApi.md#Get-Whitelists) | **GET** /api/v2/whitelist | Get all the whitelist entries
[**Invoke-PatchWhitelist**](WhitelistManagementApi.md#Invoke-PatchWhitelist) | **PATCH** /api/v2/whitelist/{id} | Patch a whitelist entry
[**Update-Whitelist**](WhitelistManagementApi.md#Update-Whitelist) | **PUT** /api/v2/whitelist/{id} | Update a whitelist entry


<a id="New-Whitelist"></a>
# **New-Whitelist**
> Whitelist New-Whitelist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Whitelist] <PSCustomObject><br>

Create a whitelist entry

Creates a whitelist entry. The whitelist defines which hosts are either pending, approved, or rejected for application agent registration. Approved hosts can be approved for a user-defined period. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Whitelist = Initialize-Whitelist -CreatedTime (Get-Date) -ExpiresAt (Get-Date) -Id "MyId" -Internal $false -Ip "MyIp" -RoleId "MyRoleId" -State "APPROVED" # Whitelist |  (optional)

# Create a whitelist entry
try {
    $Result = New-Whitelist -Whitelist $Whitelist
} catch {
    Write-Host ("Exception occurred when calling New-Whitelist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Whitelist** | [**Whitelist**](Whitelist.md)|  | [optional] 

### Return type

[**Whitelist**](Whitelist.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteWhitelist"></a>
# **Invoke-DeleteWhitelist**
> void Invoke-DeleteWhitelist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a whitelist entry

Deletes a whitelist entry by the specified ID. The whitelist defines which hosts are either pending, approved, or rejected for application agent registration. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Whitelist ID.

# Delete a whitelist entry
try {
    $Result = Invoke-DeleteWhitelist -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteWhitelist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Whitelist ID. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Enable-AutomaticWhitelist"></a>
# **Enable-AutomaticWhitelist**
> Whitelist Enable-AutomaticWhitelist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Whitelist] <PSCustomObject><br>

Enable automatic whitelist

Enables automatic whitelist by creating whitelist entry. IP address must be set to 0.0.0.0 and state must be set to AUTOMATIC in the payload. The expiresAt property specifies when the automatic whitelist should expire. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Whitelist = Initialize-Whitelist -CreatedTime (Get-Date) -ExpiresAt (Get-Date) -Id "MyId" -Internal $false -Ip "MyIp" -RoleId "MyRoleId" -State "APPROVED" # Whitelist |  (optional)

# Enable automatic whitelist
try {
    $Result = Enable-AutomaticWhitelist -Whitelist $Whitelist
} catch {
    Write-Host ("Exception occurred when calling Enable-AutomaticWhitelist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Whitelist** | [**Whitelist**](Whitelist.md)|  | [optional] 

### Return type

[**Whitelist**](Whitelist.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AutomaticWhitelist"></a>
# **Get-AutomaticWhitelist**
> Whitelist Get-AutomaticWhitelist<br>

Get automatic whitelist

Retrieves the automatic whitelist element, if available. If the automatic whitelist is not set, HTTP 404 is returned. If the automatic whitelist is set, HTTP 200 is returned with the corresponding automatic whitelist element. The ID of the automatic whitelist element is always the same. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get automatic whitelist
try {
    $Result = Get-AutomaticWhitelist
} catch {
    Write-Host ("Exception occurred when calling Get-AutomaticWhitelist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Whitelist**](Whitelist.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Whitelist"></a>
# **Get-Whitelist**
> Whitelist Get-Whitelist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a whitelist entry

Retrieves a whitelist entry by the specified ID. The whitelist defines which hosts are either pending, approved, or rejected for application agent registration. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Whitelist ID.

# Get a whitelist entry
try {
    $Result = Get-Whitelist -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Whitelist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Whitelist ID. | 

### Return type

[**Whitelist**](Whitelist.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Whitelists"></a>
# **Get-Whitelists**
> Whitelists Get-Whitelists<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all the whitelist entries

Retrieves all whitelist entries. The whitelist defines which hosts are either pending, approved, or rejected for application agent registration. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Security Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all the whitelist entries
try {
    $Result = Get-Whitelists -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Whitelists: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Whitelists**](Whitelists.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PatchWhitelist"></a>
# **Invoke-PatchWhitelist**
> Whitelist Invoke-PatchWhitelist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Whitelist] <PSCustomObject><br>

Patch a whitelist entry

Updates specific properties in the whitelist by the specified ID. The whitelist defines which hosts are either pending, approved, or rejected for application agent registration. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Whitelist ID.
$Whitelist = Initialize-Whitelist -CreatedTime (Get-Date) -ExpiresAt (Get-Date) -Id "MyId" -Internal $false -Ip "MyIp" -RoleId "MyRoleId" -State "APPROVED" # Whitelist |  (optional)

# Patch a whitelist entry
try {
    $Result = Invoke-PatchWhitelist -Id $Id -Whitelist $Whitelist
} catch {
    Write-Host ("Exception occurred when calling Invoke-PatchWhitelist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Whitelist ID. | 
 **Whitelist** | [**Whitelist**](Whitelist.md)|  | [optional] 

### Return type

[**Whitelist**](Whitelist.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Whitelist"></a>
# **Update-Whitelist**
> Whitelist Update-Whitelist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Whitelist] <PSCustomObject><br>

Update a whitelist entry

Updates a whitelist entry by the specified ID. The whitelist defines which hosts are either pending, approved, or rejected for application agent registration. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | Whitelist ID.
$Whitelist = Initialize-Whitelist -CreatedTime (Get-Date) -ExpiresAt (Get-Date) -Id "MyId" -Internal $false -Ip "MyIp" -RoleId "MyRoleId" -State "APPROVED" # Whitelist |  (optional)

# Update a whitelist entry
try {
    $Result = Update-Whitelist -Id $Id -Whitelist $Whitelist
} catch {
    Write-Host ("Exception occurred when calling Update-Whitelist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Whitelist ID. | 
 **Whitelist** | [**Whitelist**](Whitelist.md)|  | [optional] 

### Return type

[**Whitelist**](Whitelist.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

