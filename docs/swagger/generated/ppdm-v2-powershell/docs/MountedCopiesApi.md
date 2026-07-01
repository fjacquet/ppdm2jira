# PpdmApiReference.PpdmApiReference\Api.MountedCopiesApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ExtendLiveSessionExpiration**](MountedCopiesApi.md#Invoke-ExtendLiveSessionExpiration) | **POST** /api/v2/restored-copies/{id}/expiration | Extend the expiration time of the Live VM/Instant Access session.
[**Remove-VM**](MountedCopiesApi.md#Remove-VM) | **POST** /api/v2/restored-copies/{id}/remove | Unmount the NAS datastore and clean up the VM proxy restore session resource
[**Invoke-VmotionVM**](MountedCopiesApi.md#Invoke-VmotionVM) | **POST** /api/v2/restored-copies/{id}/vmotion | Vmotion a VM from an instant-access restore to permanent storage


<a id="Invoke-ExtendLiveSessionExpiration"></a>
# **Invoke-ExtendLiveSessionExpiration**
> ManageMountedCopyResponse Invoke-ExtendLiveSessionExpiration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VmExpirationRequest] <PSCustomObject><br>

Extend the expiration time of the Live VM/Instant Access session.

Extend the expiration time of a Live VM/Instant Access session. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The exported copy resource ID.
$VmExpirationRequest = Initialize-VmExpirationRequest -ExpirationTime (Get-Date) -ExtendedDay 0 # VmExpirationRequest |  (optional)

# Extend the expiration time of the Live VM/Instant Access session.
try {
    $Result = Invoke-ExtendLiveSessionExpiration -Id $Id -VmExpirationRequest $VmExpirationRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ExtendLiveSessionExpiration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The exported copy resource ID. | 
 **VmExpirationRequest** | [**VmExpirationRequest**](VmExpirationRequest.md)|  | [optional] 

### Return type

[**ManageMountedCopyResponse**](ManageMountedCopyResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-VM"></a>
# **Remove-VM**
> ManageMountedCopyResponse Remove-VM<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Unmount the NAS datastore and clean up the VM proxy restore session resource

Remove the specified Live VM/Instant Access session.  This may involve powering off and deleting the VM, unmounting the NAS datastore from the ESXi host and termination of the VProxy session. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 

# Unmount the NAS datastore and clean up the VM proxy restore session resource
try {
    $Result = Remove-VM -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-VM: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

[**ManageMountedCopyResponse**](ManageMountedCopyResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-VmotionVM"></a>
# **Invoke-VmotionVM**
> ManageMountedCopyResponse Invoke-VmotionVM<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VmotionVmConfig] <PSCustomObject><br>

Vmotion a VM from an instant-access restore to permanent storage

vMotions a VM that is deployed as an instant access restore to permanent storage. In an instant access restore, the VM is deployed to an NFS share that is attached to a specified ESX host, cluster, or resource pool. This API call migrates the VM from the temporary NFS share to permanent storage.  The VM configuration files and VMDK files can be migrated to different datastores.  Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The restored copy resource ID.
$VirtualDiskMapping = Initialize-VirtualDiskMapping -DataStoreMoref "MyDataStoreMoref" -DiskLabel "MyDiskLabel" -Key 0 -ProvisioningType "THICK_EAGER" -Uuid "MyUuid"
$VmotionVmConfig = Initialize-VmotionVmConfig -Description "MyDescription" -Disks $VirtualDiskMapping -TargetDatastoreMoref "MyTargetDatastoreMoref" -TargetFolderMoref "MyTargetFolderMoref" -TargetHostMoref "MyTargetHostMoref" -TargetResourcePoolMoref "MyTargetResourcePoolMoref" -VmMoref "MyVmMoref" # VmotionVmConfig |  (optional)

# Vmotion a VM from an instant-access restore to permanent storage
try {
    $Result = Invoke-VmotionVM -Id $Id -VmotionVmConfig $VmotionVmConfig
} catch {
    Write-Host ("Exception occurred when calling Invoke-VmotionVM: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The restored copy resource ID. | 
 **VmotionVmConfig** | [**VmotionVmConfig**](VmotionVmConfig.md)|  | [optional] 

### Return type

[**ManageMountedCopyResponse**](ManageMountedCopyResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

