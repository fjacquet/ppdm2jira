# PpdmApiReference.PpdmApiReference\Api.GenericApplicationSettingsApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-GenericApplicationSetting**](GenericApplicationSettingsApi.md#Get-GenericApplicationSetting) | **GET** /api/v2/common-settings/GENERIC_APPLICATION_SETTINGS | Get generic application common settings
[**Set-GenericApplicationSetting**](GenericApplicationSettingsApi.md#Set-GenericApplicationSetting) | **PUT** /api/v2/common-settings/GENERIC_APPLICATION_SETTINGS | Update the generic application common settings


<a id="Get-GenericApplicationSetting"></a>
# **Get-GenericApplicationSetting**
> CommonSetting Get-GenericApplicationSetting<br>

Get generic application common settings

Retrieves the generic application common settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get generic application common settings
try {
    $Result = Get-GenericApplicationSetting
} catch {
    Write-Host ("Exception occurred when calling Get-GenericApplicationSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CommonSetting**](CommonSetting.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-GenericApplicationSetting"></a>
# **Set-GenericApplicationSetting**
> CommonSetting Set-GenericApplicationSetting<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommonSetting] <PSCustomObject><br>

Update the generic application common settings

Update the generic application common settings. Update/add new script keywords, add new ASSET_TYPES, add new backup/restore protocols. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CommonSettingProperty = Initialize-CommonSettingProperty -MaxValue "MyMaxValue" -MinValue "MyMinValue" -Name "MyName" -Type "MyType" -Value "MyValue"
$CommonSetting = Initialize-CommonSetting -Id "MyId" -Properties $CommonSettingProperty # CommonSetting |  (optional)

# Update the generic application common settings
try {
    $Result = Set-GenericApplicationSetting -CommonSetting $CommonSetting
} catch {
    Write-Host ("Exception occurred when calling Set-GenericApplicationSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CommonSetting** | [**CommonSetting**](CommonSetting.md)|  | [optional] 

### Return type

[**CommonSetting**](CommonSetting.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

