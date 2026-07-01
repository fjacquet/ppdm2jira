# PpdmApiReference.PpdmApiReference\Api.JobCreatorApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-JobInterventionSettings**](JobCreatorApi.md#Get-JobInterventionSettings) | **GET** /api/v2/common-settings/JOB_INTERVENTION_SETTING | Get the job intervention settings
[**Update-JobInterventionSetting**](JobCreatorApi.md#Update-JobInterventionSetting) | **PUT** /api/v2/common-settings/JOB_INTERVENTION_SETTING | Update the job intervention setting


<a id="Get-JobInterventionSettings"></a>
# **Get-JobInterventionSettings**
> CommonSetting Get-JobInterventionSettings<br>

Get the job intervention settings

Retrieves the properties of the job intervention settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get the job intervention settings
try {
    $Result = Get-JobInterventionSettings
} catch {
    Write-Host ("Exception occurred when calling Get-JobInterventionSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-JobInterventionSetting"></a>
# **Update-JobInterventionSetting**
> CommonSetting Update-JobInterventionSetting<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-View] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommonSetting] <PSCustomObject><br>

Update the job intervention setting

Update the job intervention settings. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$View = "internal" # String | This parameter ensures that the external users can only modify specific settings, while internal users have the capability to update all settings. (optional) (default to "external")
$CommonSettingProperty = Initialize-CommonSettingProperty -MaxValue "MyMaxValue" -MinValue "MyMinValue" -Name "MyName" -Type "MyType" -Value "MyValue"
$CommonSetting = Initialize-CommonSetting -Id "MyId" -Properties $CommonSettingProperty # CommonSetting |  (optional)

# Update the job intervention setting
try {
    $Result = Update-JobInterventionSetting -View $View -CommonSetting $CommonSetting
} catch {
    Write-Host ("Exception occurred when calling Update-JobInterventionSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **View** | **String**| This parameter ensures that the external users can only modify specific settings, while internal users have the capability to update all settings. | [optional] [default to &quot;external&quot;]
 **CommonSetting** | [**CommonSetting**](CommonSetting.md)|  | [optional] 

### Return type

[**CommonSetting**](CommonSetting.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

