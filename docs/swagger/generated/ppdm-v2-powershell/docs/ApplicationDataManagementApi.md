# PpdmApiReference.PpdmApiReference\Api.ApplicationDataManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-AgentAddresses**](ApplicationDataManagementApi.md#Get-AgentAddresses) | **GET** /api/v2/app-hosts/{hostId}/valid-addresses | Get valid addresses for the specified host ID
[**Get-AgentRegistrationStatus**](ApplicationDataManagementApi.md#Get-AgentRegistrationStatus) | **GET** /api/v2/agent-registration-status | Get the agent registration status
[**Get-MissingHostsGroupingThemByCluster**](ApplicationDataManagementApi.md#Get-MissingHostsGroupingThemByCluster) | **GET** /api/v2/missing-app-server-hosts | Group the hosts by cluster.
[**Get-OracleCopyControlSpFileInfo**](ApplicationDataManagementApi.md#Get-OracleCopyControlSpFileInfo) | **GET** /api/v2/oracle-control-sp-file-info/{searchFromCopyId} | Get the Oracle control and sp file info by copy ID
[**Invoke-PatchPreferredAddress**](ApplicationDataManagementApi.md#Invoke-PatchPreferredAddress) | **PATCH** /api/v2/app-hosts/{hostId}/preferred-address | Update preferred address value for the specified host ID


<a id="Get-AgentAddresses"></a>
# **Get-AgentAddresses**
> AgentAddresses Get-AgentAddresses<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HostId] <String><br>

Get valid addresses for the specified host ID

Get addresses for the specified host ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$HostId = "MyHostId" # String | The host ID for which address values need to be retrieved.

# Get valid addresses for the specified host ID
try {
    $Result = Get-AgentAddresses -HostId $HostId
} catch {
    Write-Host ("Exception occurred when calling Get-AgentAddresses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **HostId** | **String**| The host ID for which address values need to be retrieved. | 

### Return type

[**AgentAddresses**](AgentAddresses.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-AgentRegistrationStatus"></a>
# **Get-AgentRegistrationStatus**
> AgentRegistrationStatuses Get-AgentRegistrationStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get the agent registration status

Retrieves the agent registration status. You can filter and sort various fields. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get the agent registration status
try {
    $Result = Get-AgentRegistrationStatus -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-AgentRegistrationStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**AgentRegistrationStatuses**](AgentRegistrationStatuses.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-MissingHostsGroupingThemByCluster"></a>
# **Get-MissingHostsGroupingThemByCluster**
> Hosts Get-MissingHostsGroupingThemByCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HostIds] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Group the hosts by cluster.

Group hosts by cluster and get missing hosts. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$HostIds = "MyHostIds" # String | Host IDs to get missing hosts in the group. The hostsIds can be id1, id2, or id3.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Group the hosts by cluster.
try {
    $Result = Get-MissingHostsGroupingThemByCluster -HostIds $HostIds -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-MissingHostsGroupingThemByCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **HostIds** | **String**| Host IDs to get missing hosts in the group. The hostsIds can be id1, id2, or id3. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**Hosts**](Hosts.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OracleCopyControlSpFileInfo"></a>
# **Get-OracleCopyControlSpFileInfo**
> OracleControlSpFileInfo Get-OracleCopyControlSpFileInfo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchFromCopyId] <String><br>

Get the Oracle control and sp file info by copy ID

Retrieves Copy SpFile and ControlFile details for Oracle Centralized Restore support. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$SearchFromCopyId = "MySearchFromCopyId" # String | 

# Get the Oracle control and sp file info by copy ID
try {
    $Result = Get-OracleCopyControlSpFileInfo -SearchFromCopyId $SearchFromCopyId
} catch {
    Write-Host ("Exception occurred when calling Get-OracleCopyControlSpFileInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SearchFromCopyId** | **String**|  | 

### Return type

[**OracleControlSpFileInfo**](OracleControlSpFileInfo.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PatchPreferredAddress"></a>
# **Invoke-PatchPreferredAddress**
> void Invoke-PatchPreferredAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HostId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PreferredAddress] <PSCustomObject><br>

Update preferred address value for the specified host ID

Updated the preferred address for the specified host ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$HostId = "MyHostId" # String | The host ID that is to be updated with the preferred address value.
$PreferredAddress = Initialize-PreferredAddress -Type "IPV4" -Value "MyValue" # PreferredAddress |  (optional)

# Update preferred address value for the specified host ID
try {
    $Result = Invoke-PatchPreferredAddress -HostId $HostId -PreferredAddress $PreferredAddress
} catch {
    Write-Host ("Exception occurred when calling Invoke-PatchPreferredAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **HostId** | **String**| The host ID that is to be updated with the preferred address value. | 
 **PreferredAddress** | [**PreferredAddress**](PreferredAddress.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

