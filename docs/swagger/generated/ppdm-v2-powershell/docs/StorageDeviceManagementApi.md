# PpdmApiReference.PpdmApiReference\Api.StorageDeviceManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-RescanHba**](StorageDeviceManagementApi.md#Invoke-RescanHba) | **POST** /api/v2/vmwareservice/vcenters/{vcId}/hosts/{hostMoref}/rescan-hba | Rescan Host Bus Adapters
[**Confirm-ScsiDevices**](StorageDeviceManagementApi.md#Confirm-ScsiDevices) | **POST** /api/v2/vmwareservice/vcenters/{vcId}/hosts/{hostMoref}/validate-scsi-devices | Validate SCSI devices


<a id="Invoke-RescanHba"></a>
# **Invoke-RescanHba**
> String[] Invoke-RescanHba<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VcId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HostMoref] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HbaType] <String><br>

Rescan Host Bus Adapters

Rescans the Host Bus Adapters (HBAs) matching the specified host type and list of World Wide Port Names (WWPNs), and then returns a list of rescanned WWPNs. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$VcId = "MyVcId" # String | The vCenter ID.
$HostMoref = "MyHostMoref" # String | The host type with the Managed Object Reference (MoRef) value.
$RequestBody = "MyRequestBody" # String[] | 
$HbaType = "MyHbaType" # String | The HBA type. (optional) (default to "HostFibreChannelHba")

# Rescan Host Bus Adapters
try {
    $Result = Invoke-RescanHba -VcId $VcId -HostMoref $HostMoref -RequestBody $RequestBody -HbaType $HbaType
} catch {
    Write-Host ("Exception occurred when calling Invoke-RescanHba: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VcId** | **String**| The vCenter ID. | 
 **HostMoref** | **String**| The host type with the Managed Object Reference (MoRef) value. | 
 **RequestBody** | [**String[]**](String.md)|  | 
 **HbaType** | **String**| The HBA type. | [optional] [default to &quot;HostFibreChannelHba&quot;]

### Return type

**String[]**

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Confirm-ScsiDevices"></a>
# **Confirm-ScsiDevices**
> String[] Confirm-ScsiDevices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VcId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HostMoref] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Validate SCSI devices

Validates SCSI devices matching the specified list of World Wide Names (WWNs) and returns the list of validated WWNs. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$VcId = "MyVcId" # String | The vCenter ID.
$HostMoref = "MyHostMoref" # String | The host type with the Managed Object Reference (MoRef) value.
$RequestBody = "MyRequestBody" # String[] | 

# Validate SCSI devices
try {
    $Result = Confirm-ScsiDevices -VcId $VcId -HostMoref $HostMoref -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Confirm-ScsiDevices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VcId** | **String**| The vCenter ID. | 
 **HostMoref** | **String**| The host type with the Managed Object Reference (MoRef) value. | 
 **RequestBody** | [**String[]**](String.md)|  | 

### Return type

**String[]**

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

