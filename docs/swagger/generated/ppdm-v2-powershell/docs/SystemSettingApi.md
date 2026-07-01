# PpdmApiReference.PpdmApiReference\Api.SystemSettingApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-RestApiSetting**](SystemSettingApi.md#Get-RestApiSetting) | **GET** /api/v2/common-settings/REST_API_SETTING | Get strict validation setting
[**Update-RestApiSetting**](SystemSettingApi.md#Update-RestApiSetting) | **PUT** /api/v2/common-settings/REST_API_SETTING | Modify strict validation setting


<a id="Get-RestApiSetting"></a>
# **Get-RestApiSetting**
> CommonSetting Get-RestApiSetting<br>

Get strict validation setting

Retrieves the current strict REST API validation setting. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get strict validation setting
try {
    $Result = Get-RestApiSetting
} catch {
    Write-Host ("Exception occurred when calling Get-RestApiSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-RestApiSetting"></a>
# **Update-RestApiSetting**
> CommonSetting Update-RestApiSetting<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommonSetting] <PSCustomObject><br>

Modify strict validation setting

Modify the current strict REST API validation setting. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CommonSettingProperty = Initialize-CommonSettingProperty -MaxValue "MyMaxValue" -MinValue "MyMinValue" -Name "MyName" -Type "MyType" -Value "MyValue"
$CommonSetting = Initialize-CommonSetting -Id "MyId" -Properties $CommonSettingProperty # CommonSetting |  (optional)

# Modify strict validation setting
try {
    $Result = Update-RestApiSetting -CommonSetting $CommonSetting
} catch {
    Write-Host ("Exception occurred when calling Update-RestApiSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

