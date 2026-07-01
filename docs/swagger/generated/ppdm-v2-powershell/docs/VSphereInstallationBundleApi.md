# PpdmApiReference.PpdmApiReference\Api.VSphereInstallationBundleApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ApiV2VibDetails**](VSphereInstallationBundleApi.md#Get-ApiV2VibDetails) | **GET** /api/v2/vib-details | Get all vSphere Installation Bundles
[**Submit-ApiV2VibInstallBatch**](VSphereInstallationBundleApi.md#Submit-ApiV2VibInstallBatch) | **POST** /api/v2/vib-install-batch | Install vSphere Installation Bundle
[**Submit-ApiV2VibUninstallBatch**](VSphereInstallationBundleApi.md#Submit-ApiV2VibUninstallBatch) | **POST** /api/v2/vib-uninstall-batch | Uninstall vSphere Installation Bundle
[**Submit-ApiV2VibUpgradeBatch**](VSphereInstallationBundleApi.md#Submit-ApiV2VibUpgradeBatch) | **POST** /api/v2/vib-upgrade-batch | Update the vSphere Installation Bundle (VIB)


<a id="Get-ApiV2VibDetails"></a>
# **Get-ApiV2VibDetails**
> VSphereInstallationBundles Get-ApiV2VibDetails<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ParentResourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ParentResourceType] <String><br>

Get all vSphere Installation Bundles

Returns the list of vSphere Installation Bundles and their details. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ParentResourceId = "MyParentResourceId" # String | 
$ResourceId = "MyResourceId" # String | 
$ParentResourceType = "MyParentResourceType" # String | Parent Resource Type ESX or ESX Cluster (optional)

# Get all vSphere Installation Bundles
try {
    $Result = Get-ApiV2VibDetails -ParentResourceId $ParentResourceId -ResourceId $ResourceId -ParentResourceType $ParentResourceType
} catch {
    Write-Host ("Exception occurred when calling Get-ApiV2VibDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ParentResourceId** | **String**|  | 
 **ResourceId** | **String**|  | 
 **ParentResourceType** | **String**| Parent Resource Type ESX or ESX Cluster | [optional] 

### Return type

[**VSphereInstallationBundles**](VSphereInstallationBundles.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-ApiV2VibInstallBatch"></a>
# **Submit-ApiV2VibInstallBatch**
> VibOperationBatchResponse Submit-ApiV2VibInstallBatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VibOperationBatchRequest] <PSCustomObject><br>

Install vSphere Installation Bundle

Install VIBs by selecting the ESX, ESX Cluster or vCenter as target Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$VSphereInstallationBundle = Initialize-VSphereInstallationBundle -DateInstalled "MyDateInstalled" -Name "MyName" -ResourceId "MyResourceId" -ResourceType "MyResourceType" -Status "MyStatus" -Version "MyVersion" -VersionsAvailableForUpgrade "MyVersionsAvailableForUpgrade"
$VibOperationBatchRequestRequests = Initialize-VibOperationBatchRequestRequests -Body $VSphereInstallationBundle -Id "MyId"

$VibOperationBatchRequest = Initialize-VibOperationBatchRequest -Requests $VibOperationBatchRequestRequests # VibOperationBatchRequest |  (optional)

# Install vSphere Installation Bundle
try {
    $Result = Submit-ApiV2VibInstallBatch -VibOperationBatchRequest $VibOperationBatchRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-ApiV2VibInstallBatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VibOperationBatchRequest** | [**VibOperationBatchRequest**](VibOperationBatchRequest.md)|  | [optional] 

### Return type

[**VibOperationBatchResponse**](VibOperationBatchResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-ApiV2VibUninstallBatch"></a>
# **Submit-ApiV2VibUninstallBatch**
> VibOperationBatchResponse Submit-ApiV2VibUninstallBatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VibOperationBatchRequest] <PSCustomObject><br>

Uninstall vSphere Installation Bundle

Uninstall VIBs by selecting the ESX, ESX Cluster or vCenter as target Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$VSphereInstallationBundle = Initialize-VSphereInstallationBundle -DateInstalled "MyDateInstalled" -Name "MyName" -ResourceId "MyResourceId" -ResourceType "MyResourceType" -Status "MyStatus" -Version "MyVersion" -VersionsAvailableForUpgrade "MyVersionsAvailableForUpgrade"
$VibOperationBatchRequestRequests = Initialize-VibOperationBatchRequestRequests -Body $VSphereInstallationBundle -Id "MyId"

$VibOperationBatchRequest = Initialize-VibOperationBatchRequest -Requests $VibOperationBatchRequestRequests # VibOperationBatchRequest |  (optional)

# Uninstall vSphere Installation Bundle
try {
    $Result = Submit-ApiV2VibUninstallBatch -VibOperationBatchRequest $VibOperationBatchRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-ApiV2VibUninstallBatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VibOperationBatchRequest** | [**VibOperationBatchRequest**](VibOperationBatchRequest.md)|  | [optional] 

### Return type

[**VibOperationBatchResponse**](VibOperationBatchResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-ApiV2VibUpgradeBatch"></a>
# **Submit-ApiV2VibUpgradeBatch**
> VibOperationBatchResponse Submit-ApiV2VibUpgradeBatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VibOperationBatchRequest] <PSCustomObject><br>

Update the vSphere Installation Bundle (VIB)

Updates the vSphere Installation Bundles (VIBs) by selecting the ESXi or ESXi cluster as the target. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$VSphereInstallationBundle = Initialize-VSphereInstallationBundle -DateInstalled "MyDateInstalled" -Name "MyName" -ResourceId "MyResourceId" -ResourceType "MyResourceType" -Status "MyStatus" -Version "MyVersion" -VersionsAvailableForUpgrade "MyVersionsAvailableForUpgrade"
$VibOperationBatchRequestRequests = Initialize-VibOperationBatchRequestRequests -Body $VSphereInstallationBundle -Id "MyId"

$VibOperationBatchRequest = Initialize-VibOperationBatchRequest -Requests $VibOperationBatchRequestRequests # VibOperationBatchRequest |  (optional)

# Update the vSphere Installation Bundle (VIB)
try {
    $Result = Submit-ApiV2VibUpgradeBatch -VibOperationBatchRequest $VibOperationBatchRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-ApiV2VibUpgradeBatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VibOperationBatchRequest** | [**VibOperationBatchRequest**](VibOperationBatchRequest.md)|  | [optional] 

### Return type

[**VibOperationBatchResponse**](VibOperationBatchResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

