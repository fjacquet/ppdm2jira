# PpdmApiReference.PpdmApiReference\Api.NetworkManagementApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-Network**](NetworkManagementApi.md#Add-Network) | **POST** /api/v2/networks | Create a network
[**Invoke-DeleteNetwork**](NetworkManagementApi.md#Invoke-DeleteNetwork) | **DELETE** /api/v2/networks/{id} | Delete a network by id
[**Get-Network**](NetworkManagementApi.md#Get-Network) | **GET** /api/v2/networks/{id} | Get a network by id
[**Get-Networks**](NetworkManagementApi.md#Get-Networks) | **GET** /api/v2/networks | Get all networks
[**Invoke-NetworkReferences**](NetworkManagementApi.md#Invoke-NetworkReferences) | **GET** /api/v2/networks/{id}/references | Get network reference information by ID
[**Invoke-NetworkRequirement**](NetworkManagementApi.md#Invoke-NetworkRequirement) | **GET** /api/v2/network-requirement | Get required IPs
[**Update-IPs**](NetworkManagementApi.md#Update-IPs) | **PATCH** /api/v2/networks/{id}/ips | Update IP Pool.
[**Update-Network**](NetworkManagementApi.md#Update-Network) | **PUT** /api/v2/networks/{id} | Update a network by id
[**Update-NetworkUsages**](NetworkManagementApi.md#Update-NetworkUsages) | **PATCH** /api/v2/networks/{id}/usages | Update IP Usages.
[**Update-Routes**](NetworkManagementApi.md#Update-Routes) | **PATCH** /api/v2/networks/{id}/routes | Update the network routes.


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

<a id="Invoke-NetworkReferences"></a>
# **Invoke-NetworkReferences**
> VLANReferenceDetailsWrapper Invoke-NetworkReferences<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get network reference information by ID

Get the network usage information that is based on the specified ID to determine whether a VLAN is in use. The network usage information includes the total number of VLANs in use, the number of VLANs used by the assets, the number of VLANs used by policies, and the network name. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 

# Get network reference information by ID
try {
    $Result = Invoke-NetworkReferences -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-NetworkReferences: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

[**VLANReferenceDetailsWrapper**](VLANReferenceDetailsWrapper.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

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

<a id="Update-IPs"></a>
# **Update-IPs**
> Network Update-IPs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ServerType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VmNetworkName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IpAddressFamily] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NetworkIps] <PSCustomObject><br>

Update IP Pool.

Expand IP pools for the specified server type. Only IP addresses can be changed. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 
$ServerType = "MyServerType" # String | The type of the server
$VmNetworkName = "MyVmNetworkName" # String | The vmNetworkName of the network (optional)
$IpAddressFamily = "MyIpAddressFamily" # String | The IP address family of proxy or search (optional)
$NetworkIps = Initialize-NetworkIps -Ips "MyIps" -Ipv6s "MyIpv6s" # NetworkIps |  (optional)

# Update IP Pool.
try {
    $Result = Update-IPs -Id $Id -ServerType $ServerType -VmNetworkName $VmNetworkName -IpAddressFamily $IpAddressFamily -NetworkIps $NetworkIps
} catch {
    Write-Host ("Exception occurred when calling Update-IPs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **ServerType** | **String**| The type of the server | 
 **VmNetworkName** | **String**| The vmNetworkName of the network | [optional] 
 **IpAddressFamily** | **String**| The IP address family of proxy or search | [optional] 
 **NetworkIps** | [**NetworkIps**](NetworkIps.md)|  | [optional] 

### Return type

[**Network**](Network.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
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

<a id="Update-NetworkUsages"></a>
# **Update-NetworkUsages**
> Network Update-NetworkUsages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Network] <PSCustomObject><br>

Update IP Usages.

Update VLAN network usages. For patch, only id and usages fields are needed. And only changed usage in usages are needed. All other fields will be ignored if passed in. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 
$NetworkRoutes = Initialize-NetworkRoutes -Destination "MyDestination" -Gateway "MyGateway" -Netmask "MyNetmask" -Prefix "MyPrefix" -Type "subnet"
$NetworkUsages = Initialize-NetworkUsages -Device "MyDevice" -InUse $false -Ip "MyIp" -Ipv6 "MyIpv6" -Ipv6InUse $false -LastUpdateAt "MyLastUpdateAt" -NetworkInterface "MyNetworkInterface" -NetworkMoref "MyNetworkMoref" -PortGroupType "VGT" -PurposeMismatch $false -ReferenceId "MyReferenceId" -ServerType "DATA_MANAGER" -Status "init" -VmNetworkName "MyVmNetworkName"
$Network = Initialize-Network -Gateway "MyGateway" -Id "MyId" -IpAddressFamily "IPv4" -Ips "MyIps" -Ipv6s "MyIpv6s" -Mtu 0 -Name "MyName" -Netmask "MyNetmask" -Prefix "MyPrefix" -Purposes "MyPurposes" -Routes $NetworkRoutes -Status "init" -Tags "MyTags" -Type "any" -Usages $NetworkUsages -VlanId 0 -VmNetworkName "MyVmNetworkName" # Network |  (optional)

# Update IP Usages.
try {
    $Result = Update-NetworkUsages -Id $Id -Network $Network
} catch {
    Write-Host ("Exception occurred when calling Update-NetworkUsages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-Routes"></a>
# **Update-Routes**
> Network Update-Routes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Network] <PSCustomObject><br>

Update the network routes.

Update VLAN routes. For patch, only id and routes fields are needed. Routes field needs to contain all routes. All other fields will be ignored if passed in. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 
$NetworkRoutes = Initialize-NetworkRoutes -Destination "MyDestination" -Gateway "MyGateway" -Netmask "MyNetmask" -Prefix "MyPrefix" -Type "subnet"
$NetworkUsages = Initialize-NetworkUsages -Device "MyDevice" -InUse $false -Ip "MyIp" -Ipv6 "MyIpv6" -Ipv6InUse $false -LastUpdateAt "MyLastUpdateAt" -NetworkInterface "MyNetworkInterface" -NetworkMoref "MyNetworkMoref" -PortGroupType "VGT" -PurposeMismatch $false -ReferenceId "MyReferenceId" -ServerType "DATA_MANAGER" -Status "init" -VmNetworkName "MyVmNetworkName"
$Network = Initialize-Network -Gateway "MyGateway" -Id "MyId" -IpAddressFamily "IPv4" -Ips "MyIps" -Ipv6s "MyIpv6s" -Mtu 0 -Name "MyName" -Netmask "MyNetmask" -Prefix "MyPrefix" -Purposes "MyPurposes" -Routes $NetworkRoutes -Status "init" -Tags "MyTags" -Type "any" -Usages $NetworkUsages -VlanId 0 -VmNetworkName "MyVmNetworkName" # Network |  (optional)

# Update the network routes.
try {
    $Result = Update-Routes -Id $Id -Network $Network
} catch {
    Write-Host ("Exception occurred when calling Update-Routes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

