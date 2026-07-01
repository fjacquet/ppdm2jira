# PpdmApiReference.PpdmApiReference\Api.HypervisorSettingsApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-HypervisorSettings**](HypervisorSettingsApi.md#Get-HypervisorSettings) | **GET** /api/v2/common-settings/HYPERVISOR_SETTINGS | Get hypervisor settings
[**Update-HypervisorSettings**](HypervisorSettingsApi.md#Update-HypervisorSettings) | **PUT** /api/v2/common-settings/HYPERVISOR_SETTINGS | Update hypervisor settings


<a id="Get-HypervisorSettings"></a>
# **Get-HypervisorSettings**
> CommonSetting Get-HypervisorSettings<br>

Get hypervisor settings

Retrieves the properties of the hypervisor settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get hypervisor settings
try {
    $Result = Get-HypervisorSettings
} catch {
    Write-Host ("Exception occurred when calling Get-HypervisorSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-HypervisorSettings"></a>
# **Update-HypervisorSettings**
> CommonSetting Update-HypervisorSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommonSetting] <PSCustomObject><br>

Update hypervisor settings

Updates the current hypervisor settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CommonSettingProperty = Initialize-CommonSettingProperty -MaxValue "MyMaxValue" -MinValue "MyMinValue" -Name "MyName" -Type "MyType" -Value "MyValue"
$CommonSetting = Initialize-CommonSetting -Id "MyId" -Properties $CommonSettingProperty # CommonSetting |  (optional)

# Update hypervisor settings
try {
    $Result = Update-HypervisorSettings -CommonSetting $CommonSetting
} catch {
    Write-Host ("Exception occurred when calling Update-HypervisorSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

