# PpdmApiReference.PpdmApiReference\Api.DiscoveryApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Discovery**](DiscoveryApi.md#New-Discovery) | **POST** /api/v2/discoveries | Request a discovery
[**Invoke-DeleteDiscovery**](DiscoveryApi.md#Invoke-DeleteDiscovery) | **DELETE** /api/v2/discoveries/{id} | Delete a discovery by ID
[**Get-AllDiscoveries**](DiscoveryApi.md#Get-AllDiscoveries) | **GET** /api/v2/discoveries | Get all discoveries
[**Update-Discovery**](DiscoveryApi.md#Update-Discovery) | **PUT** /api/v2/discoveries/{id} | Update a discovery by ID


<a id="New-Discovery"></a>
# **New-Discovery**
> Discovery New-Discovery<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Discovery] <PSCustomObject><br>

Request a discovery

Runs a discovery that is identified by a specified **start** value. If the discovery that is identified by the specified **start** value is already running, the API returns an error with HTTP status code 409 (CONFLICT). If the discovery starts successfully, the API returns the HTTP status code 202 (ACCEPTED). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$DiscoverySchedule = Initialize-DiscoverySchedule -Enabled $false -EndHour 0 -EndMinute 0 -HourlyFrequency 0 -MinutesFrequency 0 -StartHour 0 -StartMinute 0 -Type "DAILY"
$Discovery = Initialize-Discovery -Description "MyDescription" -ExecutionPlanId "MyExecutionPlanId" -Id "MyId" -InternalRequest $false -Level "ManagementInterface" -Name "MyName" -Schedule $DiscoverySchedule -Start "MyStart" -TaskId "MyTaskId" -WorkflowTaskId "MyWorkflowTaskId" # Discovery |  (optional)

# Request a discovery
try {
    $Result = New-Discovery -Discovery $Discovery
} catch {
    Write-Host ("Exception occurred when calling New-Discovery: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Discovery** | [**Discovery**](Discovery.md)|  | [optional] 

### Return type

[**Discovery**](Discovery.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteDiscovery"></a>
# **Invoke-DeleteDiscovery**
> void Invoke-DeleteDiscovery<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a discovery by ID

Deletes a discovery that is identified by a specified ID. If the discovery that is identified by the specified ID is already running, the API returns an error with HTTP status code 409 (CONFLICT). If the discovery is deleted successfully, this API returns the HTTP status code 204 (NO CONTENT). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the internal discovery model stored in Elasticsearch.

# Delete a discovery by ID
try {
    $Result = Invoke-DeleteDiscovery -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteDiscovery: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the internal discovery model stored in Elasticsearch. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AllDiscoveries"></a>
# **Get-AllDiscoveries**
> Discoveries Get-AllDiscoveries<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all discoveries

Retrieves a paginated list of discoveries. You can specify the page number and the page size by using **page** and **pageSize** query parameters respectively. By default, a list of all discovery objects is returned. This API also supports a **filter** query parameter that returns discovery objects that match a specified set of conditions. This API supports an **orderby** query parameter to specify how the returned list of discovery objects is sorted. When successful, the API returns the HTTP status code 200 (OK).  Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator  > This endpoint supports pagination with types: random 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all discoveries
try {
    $Result = Get-AllDiscoveries -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-AllDiscoveries: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**Discoveries**](Discoveries.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Discovery"></a>
# **Update-Discovery**
> Discovery Update-Discovery<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Discovery] <PSCustomObject><br>

Update a discovery by ID

Updates a discovery that is identified by a specified ID. Use this API to update the scheduled start time (hour and minute) when a discovery re-runs each day or set whether that scheduled discovery is enabled. If the server is in the quiesce state before a backup, the API returns the HTTP status code 503 (SERVICE UNAVAILABLE). If the discovery is updated successfully, the API returns the HTTP status code 200 (OK). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The UUID of the internal discovery model stored in Elasticsearch.
$DiscoverySchedule = Initialize-DiscoverySchedule -Enabled $false -EndHour 0 -EndMinute 0 -HourlyFrequency 0 -MinutesFrequency 0 -StartHour 0 -StartMinute 0 -Type "DAILY"
$Discovery = Initialize-Discovery -Description "MyDescription" -ExecutionPlanId "MyExecutionPlanId" -Id "MyId" -InternalRequest $false -Level "ManagementInterface" -Name "MyName" -Schedule $DiscoverySchedule -Start "MyStart" -TaskId "MyTaskId" -WorkflowTaskId "MyWorkflowTaskId" # Discovery |  (optional)

# Update a discovery by ID
try {
    $Result = Update-Discovery -Id $Id -Discovery $Discovery
} catch {
    Write-Host ("Exception occurred when calling Update-Discovery: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The UUID of the internal discovery model stored in Elasticsearch. | 
 **Discovery** | [**Discovery**](Discovery.md)|  | [optional] 

### Return type

[**Discovery**](Discovery.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

