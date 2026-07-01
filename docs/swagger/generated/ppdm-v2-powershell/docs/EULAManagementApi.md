# PpdmApiReference.PpdmApiReference\Api.EULAManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Receive-DataManagerEULA**](EULAManagementApi.md#Receive-DataManagerEULA) | **PATCH** /api/v2/eulas/data-manager | Accept PowerProtect Data Manager EULA
[**Receive-PPDMEULA**](EULAManagementApi.md#Receive-PPDMEULA) | **PATCH** /api/v2/eulas/PPDM | Accept PowerProtect Data Manager EULA
[**Get-DataManagerEULA**](EULAManagementApi.md#Get-DataManagerEULA) | **GET** /api/v2/eulas/data-manager | Get PowerProtect Data Manager EULA
[**Get-PPDMEULA**](EULAManagementApi.md#Get-PPDMEULA) | **GET** /api/v2/eulas/PPDM | Get PowerProtect Data Manager EULA


<a id="Receive-DataManagerEULA"></a>
# **Receive-DataManagerEULA**
> DataManagerEULA Receive-DataManagerEULA<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AcceptDataManagerEULA] <PSCustomObject><br>

Accept PowerProtect Data Manager EULA

Accepts PowerProtect Data Manager end user license agreement (EULA). Only the accepted status can be changed, and the value can only be set to true. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
$AcceptDataManagerEULA = Initialize-AcceptDataManagerEULA -Accepted $false # AcceptDataManagerEULA |  (optional)

# Accept PowerProtect Data Manager EULA
try {
    $Result = Receive-DataManagerEULA -AcceptDataManagerEULA $AcceptDataManagerEULA
} catch {
    Write-Host ("Exception occurred when calling Receive-DataManagerEULA: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AcceptDataManagerEULA** | [**AcceptDataManagerEULA**](AcceptDataManagerEULA.md)|  | [optional] 

### Return type

[**DataManagerEULA**](DataManagerEULA.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Receive-PPDMEULA"></a>
# **Receive-PPDMEULA**
> PPDMEULA Receive-PPDMEULA<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AcceptPPDMEULA] <PSCustomObject><br>

Accept PowerProtect Data Manager EULA

Accepts PowerProtect Data Manager end user license agreement (EULA). Only the accepted status can be changed, and the value can only be set to true. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
$AcceptPPDMEULA = Initialize-AcceptPPDMEULA -Accepted $false # AcceptPPDMEULA |  (optional)

# Accept PowerProtect Data Manager EULA
try {
    $Result = Receive-PPDMEULA -AcceptPPDMEULA $AcceptPPDMEULA
} catch {
    Write-Host ("Exception occurred when calling Receive-PPDMEULA: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AcceptPPDMEULA** | [**AcceptPPDMEULA**](AcceptPPDMEULA.md)|  | [optional] 

### Return type

[**PPDMEULA**](PPDMEULA.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DataManagerEULA"></a>
# **Get-DataManagerEULA**
> DataManagerEULA Get-DataManagerEULA<br>

Get PowerProtect Data Manager EULA

Retrieves the current PowerProtect Data Manager end user license agreement (EULA). The EULA information includes the EULA link, accepted status, and accepted time. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell

# Get PowerProtect Data Manager EULA
try {
    $Result = Get-DataManagerEULA
} catch {
    Write-Host ("Exception occurred when calling Get-DataManagerEULA: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DataManagerEULA**](DataManagerEULA.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PPDMEULA"></a>
# **Get-PPDMEULA**
> PPDMEULA Get-PPDMEULA<br>

Get PowerProtect Data Manager EULA

Retrieves the current PowerProtect Data Manager end user license agreement (EULA). The EULA information includes the EULA link, accepted status, and accepted time. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell

# Get PowerProtect Data Manager EULA
try {
    $Result = Get-PPDMEULA
} catch {
    Write-Host ("Exception occurred when calling Get-PPDMEULA: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PPDMEULA**](PPDMEULA.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

