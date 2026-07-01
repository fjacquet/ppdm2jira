# PpdmApiReference.PpdmApiReference\Api.ResourceMetricsApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-AssetProtectionMetrics**](ResourceMetricsApi.md#Get-AssetProtectionMetrics) | **GET** /api/v2/asset-protection-metrics | Get asset protection metrics
[**Get-ProtectionMetrics**](ResourceMetricsApi.md#Get-ProtectionMetrics) | **GET** /api/v2/protection-metrics | Get protection metrics
[**Get-ResourceMetrics**](ResourceMetricsApi.md#Get-ResourceMetrics) | **GET** /api/v2/resource-metrics | Return the resource count by searching across multiple resource types


<a id="Get-AssetProtectionMetrics"></a>
# **Get-AssetProtectionMetrics**
> AssetProtectionMetrics Get-AssetProtectionMetrics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get asset protection metrics

Retrieves PowerProtect Data Manager asset protection metrics data. If successful, this API request returns the HTTP response code 200 (OK). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get asset protection metrics
try {
    $Result = Get-AssetProtectionMetrics -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-AssetProtectionMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**AssetProtectionMetrics**](AssetProtectionMetrics.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionMetrics"></a>
# **Get-ProtectionMetrics**
> ProtectionMetrics Get-ProtectionMetrics<br>

Get protection metrics

Retrieves PowerProtect Data Manager protection metrics data. If successful, this API request returns the HTTP response code 200 (OK). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get protection metrics
try {
    $Result = Get-ProtectionMetrics
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProtectionMetrics**](ProtectionMetrics.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ResourceMetrics"></a>
# **Get-ResourceMetrics**
> ResourceMetrics Get-ResourceMetrics<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>

Return the resource count by searching across multiple resource types

Retrieves the resource count by searching across all resource types for the *resourceType* parameter. Only those resources that match the provided *filter* and *q* parameters are included in the count. Groups the resource count based on the supplied *groupBy* parameter for each resource type and flavor. Some resource types may not have a flavor.  If the *groupBy* parameter is provided, the returned results include, at most, only the top 10 most popular groups (for a particular resource type and flavor). The value that is returned for a group is always in lowercase to support case-insensitive searches. The returned ""totalCount"" value is the number of resources that match the *filter* and *q* parameters.  ## Privileges * VIEW_TASK_ACTIVITIES - Required when the resourceType includes ACTIVITY. * MONITOR_EVENTS - Required when the resourceType includes ALERT. * VIEW_DATA_SOURCE_ASSETS - Required when the resourceType includes ASSET. * MONITOR_SECURITY_SYSTEM_AUDIT - Required when the resourceType includes AUDIT_LOG.  If the requestor does not have the privilege to view a particular type of resource, that resource type is silently removed from the *resourceType* parameter.  Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator  > This endpoint supports pagination with types: random,serial 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$GroupBy = "MyGroupBy" # String | The field name to use when grouping the count of resources. If the field name does not exist, the resources are counted but not reported in the grouped results. If no field name is supplied, only the total counts for each resource type are returned. At most, one field name may be provided. (optional)
$ResourceType = "MyResourceType" # String | The comma-separated list of resource types to be searched. If no list is provided, all supported resource types that the requestor has the permissions to view are searched. (optional)
$Q = "MyQ" # String | The general query parameter to search all the fields of the desired resource types. The *q* parameter is combined (via AND) with the *filter* parameter, if any. (optional)

# Return the resource count by searching across multiple resource types
try {
    $Result = Get-ResourceMetrics -Filter $Filter -GroupBy $GroupBy -ResourceType $ResourceType -Q $Q
} catch {
    Write-Host ("Exception occurred when calling Get-ResourceMetrics: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **GroupBy** | **String**| The field name to use when grouping the count of resources. If the field name does not exist, the resources are counted but not reported in the grouped results. If no field name is supplied, only the total counts for each resource type are returned. At most, one field name may be provided. | [optional] 
 **ResourceType** | **String**| The comma-separated list of resource types to be searched. If no list is provided, all supported resource types that the requestor has the permissions to view are searched. | [optional] 
 **Q** | **String**| The general query parameter to search all the fields of the desired resource types. The *q* parameter is combined (via AND) with the *filter* parameter, if any. | [optional] 

### Return type

[**ResourceMetrics**](ResourceMetrics.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

