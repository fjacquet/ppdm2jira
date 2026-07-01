# PpdmApiReference.PpdmApiReference\Api.AgentUpdateSessionApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DeletePushUpdateSession**](AgentUpdateSessionApi.md#Invoke-DeletePushUpdateSession) | **DELETE** /api/v2/agents-update-sessions/{id} | Delete the push update session for the specified ID
[**Get-ByFilter**](AgentUpdateSessionApi.md#Get-ByFilter) | **GET** /api/v2/agents-update-sessions/filter | Get push update sessions
[**Get-PushUpdate**](AgentUpdateSessionApi.md#Get-PushUpdate) | **GET** /api/v2/agents-update-sessions | Get push update sessions
[**Get-PushUpdateSession**](AgentUpdateSessionApi.md#Get-PushUpdateSession) | **GET** /api/v2/agents-update-sessions/{id} | Get push update session for the provided ID
[**Invoke-PatchPushUpdateSession**](AgentUpdateSessionApi.md#Invoke-PatchPushUpdateSession) | **PATCH** /api/v2/agents-update-sessions/{id} | Patch the push update session for the specified ID
[**Submit-PushUpdateSession**](AgentUpdateSessionApi.md#Submit-PushUpdateSession) | **POST** /api/v2/agents-update-sessions | Post the push update session


<a id="Invoke-DeletePushUpdateSession"></a>
# **Invoke-DeletePushUpdateSession**
> void Invoke-DeletePushUpdateSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete the push update session for the specified ID

Delete push update session for provided ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | Agent update session ID.

# Delete the push update session for the specified ID
try {
    $Result = Invoke-DeletePushUpdateSession -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeletePushUpdateSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Agent update session ID. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ByFilter"></a>
# **Get-ByFilter**
> AgentsUpdateSessionList Get-ByFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-State] <String><br>

Get push update sessions

Get all push update sessions based on the specified parameters i.e. filter, state, page, pagesize and orderby. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)
$State = "MyState" # String | state - State [IN_PROGRESS, SCHEDULED, COMPLETED] (optional)

# Get push update sessions
try {
    $Result = Get-ByFilter -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby -State $State
} catch {
    Write-Host ("Exception occurred when calling Get-ByFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **State** | **String**| state - State [IN_PROGRESS, SCHEDULED, COMPLETED] | [optional] 

### Return type

[**AgentsUpdateSessionList**](AgentsUpdateSessionList.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PushUpdate"></a>
# **Get-PushUpdate**
> AgentsUpdateSessionList Get-PushUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get push update sessions

Retrieve all the push update sessions if no parameter is supplied or retrieve the push update sessions based on the parameters provided. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get push update sessions
try {
    $Result = Get-PushUpdate -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-PushUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**AgentsUpdateSessionList**](AgentsUpdateSessionList.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PushUpdateSession"></a>
# **Get-PushUpdateSession**
> AgentsUpdateSessionResponse Get-PushUpdateSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get push update session for the provided ID

Get push update session for provided ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | Agent update session ID.

# Get push update session for the provided ID
try {
    $Result = Get-PushUpdateSession -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-PushUpdateSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Agent update session ID. | 

### Return type

[**AgentsUpdateSessionResponse**](AgentsUpdateSessionResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PatchPushUpdateSession"></a>
# **Invoke-PatchPushUpdateSession**
> AgentsUpdateSessionResponse Invoke-PatchPushUpdateSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AgentsUpdateSessionRequest] <PSCustomObject><br>

Patch the push update session for the specified ID

Patch the push update session for provided ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$Id = "MyId" # String | Agent update session ID.
$AgentsUpdateSessionRequestHostsInner = Initialize-AgentsUpdateSessionRequestHostsInner -AppServerTypes "MyAppServerTypes" -Id "MyId" -Privileged $false
$AgentsUpdateSessionRequest = Initialize-AgentsUpdateSessionRequest -Hosts $AgentsUpdateSessionRequestHostsInner -Name "MyName" -PrecheckOnly $false -ScheduledAt (Get-Date) # AgentsUpdateSessionRequest |  (optional)

# Patch the push update session for the specified ID
try {
    $Result = Invoke-PatchPushUpdateSession -Id $Id -AgentsUpdateSessionRequest $AgentsUpdateSessionRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-PatchPushUpdateSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Agent update session ID. | 
 **AgentsUpdateSessionRequest** | [**AgentsUpdateSessionRequest**](AgentsUpdateSessionRequest.md)|  | [optional] 

### Return type

[**AgentsUpdateSessionResponse**](AgentsUpdateSessionResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-PushUpdateSession"></a>
# **Submit-PushUpdateSession**
> AgentsUpdateSessionResponse Submit-PushUpdateSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AgentsUpdateSessionRequest] <PSCustomObject><br>

Post the push update session

Post adhoc or scheduled agent push update session for the input request for the host IDs and App server types. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$AgentsUpdateSessionRequestHostsInner = Initialize-AgentsUpdateSessionRequestHostsInner -AppServerTypes "MyAppServerTypes" -Id "MyId" -Privileged $false
$AgentsUpdateSessionRequest = Initialize-AgentsUpdateSessionRequest -Hosts $AgentsUpdateSessionRequestHostsInner -Name "MyName" -PrecheckOnly $false -ScheduledAt (Get-Date) # AgentsUpdateSessionRequest | 

# Post the push update session
try {
    $Result = Submit-PushUpdateSession -AgentsUpdateSessionRequest $AgentsUpdateSessionRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-PushUpdateSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AgentsUpdateSessionRequest** | [**AgentsUpdateSessionRequest**](AgentsUpdateSessionRequest.md)|  | 

### Return type

[**AgentsUpdateSessionResponse**](AgentsUpdateSessionResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

