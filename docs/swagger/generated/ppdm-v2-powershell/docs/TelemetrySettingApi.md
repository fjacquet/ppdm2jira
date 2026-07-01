# PpdmApiReference.PpdmApiReference\Api.TelemetrySettingApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Receive-TelemetryEULA**](TelemetrySettingApi.md#Receive-TelemetryEULA) | **PATCH** /api/v2/eulas/TELEMETRY | Accept telemetry EULA
[**Get-TelemetryEULA**](TelemetrySettingApi.md#Get-TelemetryEULA) | **GET** /api/v2/eulas/TELEMETRY | Get telemetry EULA
[**Get-TelemetrySetting**](TelemetrySettingApi.md#Get-TelemetrySetting) | **GET** /api/v2/common-settings/TELEMETRY_SETTING | Get telemetry settings
[**Update-TelemetrySetting**](TelemetrySettingApi.md#Update-TelemetrySetting) | **PUT** /api/v2/common-settings/TELEMETRY_SETTING | Update telemetry settings


<a id="Receive-TelemetryEULA"></a>
# **Receive-TelemetryEULA**
> TelemetryEULA Receive-TelemetryEULA<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AcceptTelemetryEULA] <PSCustomObject><br>

Accept telemetry EULA

Accepts telemetry end user license agreement (EULA). Once the telemetry EULA is accepted, it cannot be declined. Also, there is no need to accept the telemetry EULA again if it has already been accepted. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$AcceptTelemetryEULA = Initialize-AcceptTelemetryEULA -Accepted $false # AcceptTelemetryEULA |  (optional)

# Accept telemetry EULA
try {
    $Result = Receive-TelemetryEULA -AcceptTelemetryEULA $AcceptTelemetryEULA
} catch {
    Write-Host ("Exception occurred when calling Receive-TelemetryEULA: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AcceptTelemetryEULA** | [**AcceptTelemetryEULA**](AcceptTelemetryEULA.md)|  | [optional] 

### Return type

[**TelemetryEULA**](TelemetryEULA.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TelemetryEULA"></a>
# **Get-TelemetryEULA**
> TelemetryEULA Get-TelemetryEULA<br>

Get telemetry EULA

Retrieves the current telemetry end user license agreement (EULA) which includes link, accepted and accepted time fields. By default, the telemetry EULA is not accepted. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get telemetry EULA
try {
    $Result = Get-TelemetryEULA
} catch {
    Write-Host ("Exception occurred when calling Get-TelemetryEULA: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TelemetryEULA**](TelemetryEULA.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TelemetrySetting"></a>
# **Get-TelemetrySetting**
> CommonSetting Get-TelemetrySetting<br>

Get telemetry settings

Retrieves the current telemetry settings which includes CloudIQ incremental reporting frequency in minutes, CloudIQ daily full syncup enabled, transport type and CloudIQ protection metrics enabled fields. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get telemetry settings
try {
    $Result = Get-TelemetrySetting
} catch {
    Write-Host ("Exception occurred when calling Get-TelemetrySetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-TelemetrySetting"></a>
# **Update-TelemetrySetting**
> CommonSetting Update-TelemetrySetting<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommonSetting] <PSCustomObject><br>

Update telemetry settings

Updates the current telemetry settings which includes CloudIQ incremental reporting frequency in minutes, CloudIQ daily full syncup enabled, transport type and CloudIQ protection metrics enabled fields. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$CommonSettingProperty = Initialize-CommonSettingProperty -MaxValue "MyMaxValue" -MinValue "MyMinValue" -Name "MyName" -Type "MyType" -Value "MyValue"
$CommonSetting = Initialize-CommonSetting -Id "MyId" -Properties $CommonSettingProperty # CommonSetting |  (optional)

# Update telemetry settings
try {
    $Result = Update-TelemetrySetting -CommonSetting $CommonSetting
} catch {
    Write-Host ("Exception occurred when calling Update-TelemetrySetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

