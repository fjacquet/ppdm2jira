# PpdmApiReference.PpdmApiReference\Api.InstallationApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Receive-DataManagerEULA**](InstallationApi.md#Receive-DataManagerEULA) | **PATCH** /api/v2/eulas/data-manager | Accept PowerProtect Data Manager EULA
[**Receive-PPDMEULA**](InstallationApi.md#Receive-PPDMEULA) | **PATCH** /api/v2/eulas/PPDM | Accept PowerProtect Data Manager EULA
[**Add-Network**](InstallationApi.md#Add-Network) | **POST** /api/v2/networks | Create a network
[**Invoke-DeleteNetwork**](InstallationApi.md#Invoke-DeleteNetwork) | **DELETE** /api/v2/networks/{id} | Delete a network by id
[**Get-DataManagerEULA**](InstallationApi.md#Get-DataManagerEULA) | **GET** /api/v2/eulas/data-manager | Get PowerProtect Data Manager EULA
[**Get-Features**](InstallationApi.md#Get-Features) | **GET** /api/v2/features | Get all features.
[**Get-Network**](InstallationApi.md#Get-Network) | **GET** /api/v2/networks/{id} | Get a network by id
[**Get-Networks**](InstallationApi.md#Get-Networks) | **GET** /api/v2/networks | Get all networks
[**Get-PPDMEULA**](InstallationApi.md#Get-PPDMEULA) | **GET** /api/v2/eulas/PPDM | Get PowerProtect Data Manager EULA
[**Invoke-NetworkRequirement**](InstallationApi.md#Invoke-NetworkRequirement) | **GET** /api/v2/network-requirement | Get required IPs
[**Update-Network**](InstallationApi.md#Update-Network) | **PUT** /api/v2/networks/{id} | Update a network by id
[**Update-OsUserPassword**](InstallationApi.md#Update-OsUserPassword) | **POST** /api/v2/os-user-password-reset | Reset OS User password


<a id="Receive-DataManagerEULA"></a>
# **Receive-DataManagerEULA**
> DataManagerEULA Receive-DataManagerEULA<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AcceptDataManagerEULA] <PSCustomObject><br>

Accept PowerProtect Data Manager EULA

Accepts PowerProtect Data Manager end user license agreement (EULA). Only the accepted status can be changed, and the value can only be set to true. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
$AcceptDataManagerEULA = Initialize-AcceptDataManagerEULA -Accepted $false # AcceptDataManagerEULA |  (optional)

# Accept PowerProtect Data Manager EULA
try {
    $Result = Receive-DataManagerEULA -AcceptDataManagerEULA $AcceptDataManagerEULA
} catch {
    Write-Host ("Exception occurred when calling Receive-DataManagerEULA: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AcceptDataManagerEULA** | [**AcceptDataManagerEULA**](AcceptDataManagerEULA.md)|  | [optional] 

### Return type

[**DataManagerEULA**](DataManagerEULA.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Receive-PPDMEULA"></a>
# **Receive-PPDMEULA**
> PPDMEULA Receive-PPDMEULA<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AcceptPPDMEULA] <PSCustomObject><br>

Accept PowerProtect Data Manager EULA

Accepts PowerProtect Data Manager end user license agreement (EULA). Only the accepted status can be changed, and the value can only be set to true. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
$AcceptPPDMEULA = Initialize-AcceptPPDMEULA -Accepted $false # AcceptPPDMEULA |  (optional)

# Accept PowerProtect Data Manager EULA
try {
    $Result = Receive-PPDMEULA -AcceptPPDMEULA $AcceptPPDMEULA
} catch {
    Write-Host ("Exception occurred when calling Receive-PPDMEULA: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AcceptPPDMEULA** | [**AcceptPPDMEULA**](AcceptPPDMEULA.md)|  | [optional] 

### Return type

[**PPDMEULA**](PPDMEULA.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Add-Network"></a>
# **Add-Network**
> Network Add-Network<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Network] <PSCustomObject><br>

Create a network

Creates a network. The operation occurs asynchronously. When successful, the request is accepted for processing. The API network requirement can be used to get the required network IP counts. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$NetworkRoutes = Initialize-NetworkRoutes -Destination "MyDestination" -Gateway "MyGateway" -Netmask "MyNetmask" -Prefix "MyPrefix" -Type "subnet"
$NetworkUsages = Initialize-NetworkUsages -Device "MyDevice" -InUse $false -Ip "MyIp" -Ipv6 "MyIpv6" -Ipv6InUse $false -LastUpdateAt "MyLastUpdateAt" -NetworkInterface "MyNetworkInterface" -NetworkMoref "MyNetworkMoref" -PortGroupType "VGT" -PurposeMismatch $false -ReferenceId "MyReferenceId" -ServerType "DATA_MANAGER" -Status "init" -VmNetworkName "MyVmNetworkName"
$Network = Initialize-Network -Gateway "MyGateway" -Id "MyId" -IpAddressFamily "IPv4" -Ips "MyIps" -Ipv6s "MyIpv6s" -Mtu 0 -Name "MyName" -Netmask "MyNetmask" -Prefix "MyPrefix" -Purposes "MyPurposes" -Routes $NetworkRoutes -Status "init" -Tags "MyTags" -Type "any" -Usages $NetworkUsages -VlanId 0 -VmNetworkName "MyVmNetworkName" # Network |  (optional)

# Create a network
try {
    $Result = Add-Network -Network $Network
} catch {
    Write-Host ("Exception occurred when calling Add-Network: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Network** | [**Network**](Network.md)|  | [optional] 

### Return type

[**Network**](Network.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteNetwork"></a>
# **Invoke-DeleteNetwork**
> void Invoke-DeleteNetwork<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a network by id

Delete network by the given ID in the PowerProtect Data Management system. The call returns an error if the network is still in use. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 

# Delete a network by id
try {
    $Result = Invoke-DeleteNetwork -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteNetwork: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DataManagerEULA"></a>
# **Get-DataManagerEULA**
> DataManagerEULA Get-DataManagerEULA<br>

Get PowerProtect Data Manager EULA

Retrieves the current PowerProtect Data Manager end user license agreement (EULA). The EULA information includes the EULA link, accepted status, and accepted time. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell

# Get PowerProtect Data Manager EULA
try {
    $Result = Get-DataManagerEULA
} catch {
    Write-Host ("Exception occurred when calling Get-DataManagerEULA: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DataManagerEULA**](DataManagerEULA.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Features"></a>
# **Get-Features**
> Features Get-Features<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all features.

Get all the available features. Returned listing includes the feature name, status, API rules, and so on. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all features.
try {
    $Result = Get-Features -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Features: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Features**](Features.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Network"></a>
# **Get-Network**
> Network Get-Network<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a network by id

Get the specific network by ID. The network information includes the network ID, name, VLAN ID, IPs, netmask, gateway, MTU, status, usages, and so on. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 

# Get a network by id
try {
    $Result = Get-Network -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Network: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

[**Network**](Network.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Networks"></a>
# **Get-Networks**
> Networks Get-Networks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all networks

Retrieves all existing networks. If no additional networks are added, the call does not return a default network . The returned listing includes the network ID, name, VLAN ID, IPs, netmask, gateway, MTU, status, usages, and so on. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all networks
try {
    $Result = Get-Networks -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-Networks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Networks**](Networks.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PPDMEULA"></a>
# **Get-PPDMEULA**
> PPDMEULA Get-PPDMEULA<br>

Get PowerProtect Data Manager EULA

Retrieves the current PowerProtect Data Manager end user license agreement (EULA). The EULA information includes the EULA link, accepted status, and accepted time. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell

# Get PowerProtect Data Manager EULA
try {
    $Result = Get-PPDMEULA
} catch {
    Write-Host ("Exception occurred when calling Get-PPDMEULA: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PPDMEULA**](PPDMEULA.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-NetworkRequirement"></a>
# **Invoke-NetworkRequirement**
> NetworkRequirement Invoke-NetworkRequirement<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ServerType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReferenceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NetwrokType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NetworkPurposes] <String><br>

Get required IPs

Retrieves the required IP count per component type (Search, Vproxy, PowerProtect Data Manager). Add them together for a total. When creating a new network or adding Search or vProxy to an existing network, call this API to calculate how many additional IP addresses are required. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$ServerType = "V_PROXY" # String | The type of server (optional)
$ReferenceId = "MyReferenceId" # String | The reference id of the server (optional)
$NetwrokType = "any" # String | The type of network. Use this parameter when you want to calculate a new VLAN IP count. (optional) (default to "any")
$NetworkPurposes = "MyNetworkPurposes" # String | The purpose of the network. Use this parameter when you want to calculate the VLAN IP count (optional)

# Get required IPs
try {
    $Result = Invoke-NetworkRequirement -ServerType $ServerType -ReferenceId $ReferenceId -NetwrokType $NetwrokType -NetworkPurposes $NetworkPurposes
} catch {
    Write-Host ("Exception occurred when calling Invoke-NetworkRequirement: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ServerType** | **String**| The type of server | [optional] 
 **ReferenceId** | **String**| The reference id of the server | [optional] 
 **NetwrokType** | **String**| The type of network. Use this parameter when you want to calculate a new VLAN IP count. | [optional] [default to &quot;any&quot;]
 **NetworkPurposes** | **String**| The purpose of the network. Use this parameter when you want to calculate the VLAN IP count | [optional] 

### Return type

[**NetworkRequirement**](NetworkRequirement.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Network"></a>
# **Update-Network**
> Network Update-Network<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Network] <PSCustomObject><br>

Update a network by id

Update the specified network by its ID. Only IPs, network name, netmask, MTU, and routes can be changed. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 
$NetworkRoutes = Initialize-NetworkRoutes -Destination "MyDestination" -Gateway "MyGateway" -Netmask "MyNetmask" -Prefix "MyPrefix" -Type "subnet"
$NetworkUsages = Initialize-NetworkUsages -Device "MyDevice" -InUse $false -Ip "MyIp" -Ipv6 "MyIpv6" -Ipv6InUse $false -LastUpdateAt "MyLastUpdateAt" -NetworkInterface "MyNetworkInterface" -NetworkMoref "MyNetworkMoref" -PortGroupType "VGT" -PurposeMismatch $false -ReferenceId "MyReferenceId" -ServerType "DATA_MANAGER" -Status "init" -VmNetworkName "MyVmNetworkName"
$Network = Initialize-Network -Gateway "MyGateway" -Id "MyId" -IpAddressFamily "IPv4" -Ips "MyIps" -Ipv6s "MyIpv6s" -Mtu 0 -Name "MyName" -Netmask "MyNetmask" -Prefix "MyPrefix" -Purposes "MyPurposes" -Routes $NetworkRoutes -Status "init" -Tags "MyTags" -Type "any" -Usages $NetworkUsages -VlanId 0 -VmNetworkName "MyVmNetworkName" # Network |  (optional)

# Update a network by id
try {
    $Result = Update-Network -Id $Id -Network $Network
} catch {
    Write-Host ("Exception occurred when calling Update-Network: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **Network** | [**Network**](Network.md)|  | [optional] 

### Return type

[**Network**](Network.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OsUserPassword"></a>
# **Update-OsUserPassword**
> SystemCollectionsHashtable Update-OsUserPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResetOsUserPasswordRequest] <PSCustomObject><br>

Reset OS User password

Reset the OS user password. The root password must be active (not expired). Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation.

### Example
```powershell
$ResetOsUserPasswordRequest = Initialize-ResetOsUserPasswordRequest -NewPassword "MyNewPassword" -UserName "MyUserName" # ResetOsUserPasswordRequest |  (optional)

# Reset OS User password
try {
    $Result = Update-OsUserPassword -ResetOsUserPasswordRequest $ResetOsUserPasswordRequest
} catch {
    Write-Host ("Exception occurred when calling Update-OsUserPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResetOsUserPasswordRequest** | [**ResetOsUserPasswordRequest**](ResetOsUserPasswordRequest.md)|  | [optional] 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

