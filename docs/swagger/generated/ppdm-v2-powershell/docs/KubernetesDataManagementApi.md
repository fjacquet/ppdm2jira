# PpdmApiReference.PpdmApiReference\Api.KubernetesDataManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-KubernetesClusters**](KubernetesDataManagementApi.md#Get-KubernetesClusters) | **GET** /api/v2/kubernetes-clusters | Get Kubernetes clusters
[**Get-StorageClassMappings**](KubernetesDataManagementApi.md#Get-StorageClassMappings) | **GET** /api/v2/kubernetes-clusters/{cluster-id}/pvc-storage-class-mappings | Get storage classes from target Kubernetes cluster


<a id="Get-KubernetesClusters"></a>
# **Get-KubernetesClusters**
> K8sClusters Get-KubernetesClusters<br>

Get Kubernetes clusters

Retrieves the list of Kubernetes clusters. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get Kubernetes clusters
try {
    $Result = Get-KubernetesClusters
} catch {
    Write-Host ("Exception occurred when calling Get-KubernetesClusters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**K8sClusters**](K8sClusters.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-StorageClassMappings"></a>
# **Get-StorageClassMappings**
> PvcStorageMappings Get-StorageClassMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClusterId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CopyId] <String><br>

Get storage classes from target Kubernetes cluster

When an alternate storage class is required for restoring to an alternate cluster, this request retrieves a list of compatible storage classes per PersistentVolumeClaim (PVC) from the specified Kubernetes cluster. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ClusterId = "MyClusterId" # String | The ID of the Kubernetes cluster.
$CopyId = "MyCopyId" # String | The ID of the copy to be restored.

# Get storage classes from target Kubernetes cluster
try {
    $Result = Get-StorageClassMappings -ClusterId $ClusterId -CopyId $CopyId
} catch {
    Write-Host ("Exception occurred when calling Get-StorageClassMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ClusterId** | **String**| The ID of the Kubernetes cluster. | 
 **CopyId** | **String**| The ID of the copy to be restored. | 

### Return type

[**PvcStorageMappings**](PvcStorageMappings.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

