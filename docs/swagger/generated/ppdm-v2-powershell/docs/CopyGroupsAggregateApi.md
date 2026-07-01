# PpdmApiReference.PpdmApiReference\Api.CopyGroupsAggregateApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-QueryCopyGroupsAggregate**](CopyGroupsAggregateApi.md#Invoke-QueryCopyGroupsAggregate) | **POST** /api/v2/copy-groups-aggregate | Get copy group aggregation by copy IDs


<a id="Invoke-QueryCopyGroupsAggregate"></a>
# **Invoke-QueryCopyGroupsAggregate**
> QueryCopyGroupsAggregateResponse Invoke-QueryCopyGroupsAggregate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryCopyGroupsAggregateRequest] <PSCustomObject><br>

Get copy group aggregation by copy IDs

Get copy group aggregation from the PowerProtect Data Manager system. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$QueryCopyGroupsAggregateRequest = Initialize-QueryCopyGroupsAggregateRequest -CopyIds "MyCopyIds" # QueryCopyGroupsAggregateRequest |  (optional)

# Get copy group aggregation by copy IDs
try {
    $Result = Invoke-QueryCopyGroupsAggregate -QueryCopyGroupsAggregateRequest $QueryCopyGroupsAggregateRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-QueryCopyGroupsAggregate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **QueryCopyGroupsAggregateRequest** | [**QueryCopyGroupsAggregateRequest**](QueryCopyGroupsAggregateRequest.md)|  | [optional] 

### Return type

[**QueryCopyGroupsAggregateResponse**](QueryCopyGroupsAggregateResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

