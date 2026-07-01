# PpdmApiReference.PpdmApiReference\Api.VCenterConnectionManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-Vcenter**](VCenterConnectionManagementApi.md#Add-Vcenter) | **POST** /api/v2/vmwareservice/vcenters | Add vCenter to vCenter map


<a id="Add-Vcenter"></a>
# **Add-Vcenter**
> VcenterResponse Add-Vcenter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VcenterRequest] <PSCustomObject><br>

Add vCenter to vCenter map

Add the specified vCenter to the VMware Service vCenter map to manage connections to the vCenter.  This call must be executed first so that a connection to the vCenter can be established before executing any VMware Service operation. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$VcenterRequest = Initialize-VcenterRequest -ConnectionType "MyConnectionType" -Id "MyId" -IsHost $false -Name "MyName" -Password "MyPassword" -Port 0 -Url "MyUrl" -UserName "MyUserName" # VcenterRequest | 

# Add vCenter to vCenter map
try {
    $Result = Add-Vcenter -VcenterRequest $VcenterRequest
} catch {
    Write-Host ("Exception occurred when calling Add-Vcenter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VcenterRequest** | [**VcenterRequest**](VcenterRequest.md)|  | 

### Return type

[**VcenterResponse**](VcenterResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

