# PpdmApiReference.PpdmApiReference\Api.SearchClustersApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-SearchClusterLogBundle**](SearchClustersApi.md#New-SearchClusterLogBundle) | **POST** /api/v2/search-clusters/{id}/log-bundles | Collect search cluster log bundles
[**New-SearchClusterNode**](SearchClustersApi.md#New-SearchClusterNode) | **POST** /api/v2/search-clusters/{id}/nodes | Deploy a search cluster node
[**Invoke-DeleteSearchClusterNode**](SearchClustersApi.md#Invoke-DeleteSearchClusterNode) | **DELETE** /api/v2/search-clusters/{id}/nodes/{nodeId} | Remove search cluster node by ID
[**Get-SearchCluster**](SearchClustersApi.md#Get-SearchCluster) | **GET** /api/v2/search-clusters/{id} | Get search cluster by ID
[**Get-SearchClusterNode**](SearchClustersApi.md#Get-SearchClusterNode) | **GET** /api/v2/search-clusters/{id}/nodes/{nodeId} | Get search cluster node by ID
[**Get-SearchClusterNodes**](SearchClustersApi.md#Get-SearchClusterNodes) | **GET** /api/v2/search-clusters/{id}/nodes | Get all search cluster nodes
[**Get-SearchClusters**](SearchClustersApi.md#Get-SearchClusters) | **GET** /api/v2/search-clusters | Get all search clusters
[**Invoke-ManageSearchCluster**](SearchClustersApi.md#Invoke-ManageSearchCluster) | **POST** /api/v2/search-clusters/{id}/management | Execute management request
[**Invoke-ManageSearchClusterNode**](SearchClustersApi.md#Invoke-ManageSearchClusterNode) | **POST** /api/v2/search-clusters/{id}/nodes/{nodeId}/management | Manage search cluster node
[**Update-SearchCluster**](SearchClustersApi.md#Update-SearchCluster) | **PUT** /api/v2/search-clusters/{id}/config | Update search cluster configuration


<a id="New-SearchClusterLogBundle"></a>
# **New-SearchClusterLogBundle**
> SearchClusterLogBundles New-SearchClusterLogBundle<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchClusterLogBundle] <PSCustomObject><br>

Collect search cluster log bundles

Collects search cluster log bundles. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the search cluster.
$SearchClusterLogBundleRange = Initialize-SearchClusterLogBundleRange -EndDate "MyEndDate" -StartDate "MyStartDate"
$SearchClusterLogBundleConfig = Initialize-SearchClusterLogBundleConfig -LogBundleRange $SearchClusterLogBundleRange -LogDirectory "MyLogDirectory"

$SearchClusterLogBundleStatus = Initialize-SearchClusterLogBundleStatus -LogBundlePath "MyLogBundlePath" -Progress 0 -State "Pending" -TaskId "MyTaskId"
$SearchClusterLogBundle = Initialize-SearchClusterLogBundle -Config $SearchClusterLogBundleConfig -Id "MyId" -Status $SearchClusterLogBundleStatus # SearchClusterLogBundle | 

# Collect search cluster log bundles
try {
    $Result = New-SearchClusterLogBundle -Id $Id -SearchClusterLogBundle $SearchClusterLogBundle
} catch {
    Write-Host ("Exception occurred when calling New-SearchClusterLogBundle: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the search cluster. | 
 **SearchClusterLogBundle** | [**SearchClusterLogBundle**](SearchClusterLogBundle.md)|  | 

### Return type

[**SearchClusterLogBundles**](SearchClusterLogBundles.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-SearchClusterNode"></a>
# **New-SearchClusterNode**
> SearchNode New-SearchClusterNode<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchNode] <PSCustomObject><br>

Deploy a search cluster node

Deploys a search cluster node. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the search cluster
$NodeCredentials = Initialize-NodeCredentials -Id "MyId"

$SearchNodeAdditionalVMNetworksRoutes = Initialize-SearchNodeAdditionalVMNetworksRoutes -Gateway "MyGateway" -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Netmask "MyNetmask" -Source "MySource" -Type "MyType"
$SearchNodeAdditionalVMNetworksVlans = Initialize-SearchNodeAdditionalVMNetworksVlans -Gateway "MyGateway" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Mtu 0 -Netmask "MyNetmask" -Routes $SearchNodeAdditionalVMNetworksRoutes -VlanId 0

$SearchNodeAdditionalVMNetworks = Initialize-SearchNodeAdditionalVMNetworks -Fqdn "MyFqdn" -Gateway "MyGateway" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpProtocol "IPv4" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -MacAddress "MyMacAddress" -MultiVlanEnabled $false -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref" -Vlans $SearchNodeAdditionalVMNetworksVlans

$SearchNodeDeploymentLocation = Initialize-SearchNodeDeploymentLocation -ClusterMoref "MyClusterMoref" -DatastoreMoref "MyDatastoreMoref" -FolderMoref "MyFolderMoref" -HostMoref "MyHostMoref" -ResourcePoolMoref "MyResourcePoolMoref"
$SearchNodeDeploymentConfig = Initialize-SearchNodeDeploymentConfig -AdditionalVMNetworks $SearchNodeAdditionalVMNetworks -DiskProvisioning "thin" -Dns "MyDns" -Fqdn "MyFqdn" -Gateway "MyGateway" -IpAddress "MyIpAddress" -IpProtocol "MyIpProtocol" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Location $SearchNodeDeploymentLocation -MultiVlanEnabled $false -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref" -Ovafile "MyOvafile" -TimeZone "MyTimeZone" -Vlans $SearchNodeAdditionalVMNetworksVlans -VmName "MyVmName"

$SearchNodeStatistics = Initialize-SearchNodeStatistics -DiskCapacity 0 -DiskUsage 0
$SearchNodeStatus = Initialize-SearchNodeStatus -Aliases "MyAliases" -Deployed $false -DeployedTime "MyDeployedTime" -HostedComputeResource "MyHostedComputeResource" -LastCheckedTime "MyLastCheckedTime" -NodeStats $SearchNodeStatistics -NodeStatus "Deploying" -NodeStatusDetail "MyNodeStatusDetail" -PowerState "MyPowerState" -VcenterName "MyVcenterName" -Version "MyVersion"

$SearchNode = Initialize-SearchNode -ActivityId "MyActivityId" -AdminCredentials $NodeCredentials -DeploymentConfig $SearchNodeDeploymentConfig -HostName "MyHostName" -Id "MyId" -InstanceUuid "MyInstanceUuid" -InventorySourceId "MyInventorySourceId" -NodeType "MyNodeType" -Platform "VIM" -RootCredentials $NodeCredentials -Status $SearchNodeStatus -VmMoref "MyVmMoref" # SearchNode | 

# Deploy a search cluster node
try {
    $Result = New-SearchClusterNode -Id $Id -SearchNode $SearchNode
} catch {
    Write-Host ("Exception occurred when calling New-SearchClusterNode: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the search cluster | 
 **SearchNode** | [**SearchNode**](SearchNode.md)|  | 

### Return type

[**SearchNode**](SearchNode.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteSearchClusterNode"></a>
# **Invoke-DeleteSearchClusterNode**
> SearchNode Invoke-DeleteSearchClusterNode<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NodeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Force] <System.Nullable[Boolean]><br>

Remove search cluster node by ID

Removes a search cluster node. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the search cluster.
$NodeId = "MyNodeId" # String | The ID of the search cluster node to be removed.
$Force = $true # Boolean | Indicates whether to force deleting of the search cluster node. (optional) (default to $false)

# Remove search cluster node by ID
try {
    $Result = Invoke-DeleteSearchClusterNode -Id $Id -NodeId $NodeId -Force $Force
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteSearchClusterNode: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the search cluster. | 
 **NodeId** | **String**| The ID of the search cluster node to be removed. | 
 **Force** | **Boolean**| Indicates whether to force deleting of the search cluster node. | [optional] [default to $false]

### Return type

[**SearchNode**](SearchNode.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SearchCluster"></a>
# **Get-SearchCluster**
> SearchCluster Get-SearchCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get search cluster by ID

Retrieves a search cluster by its ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the search cluster to be retrieved.

# Get search cluster by ID
try {
    $Result = Get-SearchCluster -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-SearchCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the search cluster to be retrieved. | 

### Return type

[**SearchCluster**](SearchCluster.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SearchClusterNode"></a>
# **Get-SearchClusterNode**
> SearchNode Get-SearchClusterNode<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NodeId] <String><br>

Get search cluster node by ID

Retrieves a search cluster node by its ID. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the search cluster.
$NodeId = "MyNodeId" # String | The ID of the search cluster node.

# Get search cluster node by ID
try {
    $Result = Get-SearchClusterNode -Id $Id -NodeId $NodeId
} catch {
    Write-Host ("Exception occurred when calling Get-SearchClusterNode: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the search cluster. | 
 **NodeId** | **String**| The ID of the search cluster node. | 

### Return type

[**SearchNode**](SearchNode.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SearchClusterNodes"></a>
# **Get-SearchClusterNodes**
> SearchNodes Get-SearchClusterNodes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all search cluster nodes

Retrieves all search cluster nodes. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the search cluster.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all search cluster nodes
try {
    $Result = Get-SearchClusterNodes -Id $Id -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-SearchClusterNodes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the search cluster. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**SearchNodes**](SearchNodes.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-SearchClusters"></a>
# **Get-SearchClusters**
> SearchClusters Get-SearchClusters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all search clusters

Retrieves the available search clusters. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all search clusters
try {
    $Result = Get-SearchClusters -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-SearchClusters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**SearchClusters**](SearchClusters.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ManageSearchCluster"></a>
# **Invoke-ManageSearchCluster**
> SearchClusterManagement Invoke-ManageSearchCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchClusterManagement] <PSCustomObject><br>

Execute management request

Runs search cluster management request. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the search cluster to be managed.
$OfflineIndexConfig = Initialize-OfflineIndexConfig -BackupLimit 0 -Interval 0 -StartHour 0 -StartMinute 0 -StartSecond 0 -Window 0
$SearchClusterManagement = Initialize-SearchClusterManagement -ActivityId "MyActivityId" -ClusterId "MyClusterId" -OfflineIndexConfig $OfflineIndexConfig -Operation "ENABLE" # SearchClusterManagement | 

# Execute management request
try {
    $Result = Invoke-ManageSearchCluster -Id $Id -SearchClusterManagement $SearchClusterManagement
} catch {
    Write-Host ("Exception occurred when calling Invoke-ManageSearchCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the search cluster to be managed. | 
 **SearchClusterManagement** | [**SearchClusterManagement**](SearchClusterManagement.md)|  | 

### Return type

[**SearchClusterManagement**](SearchClusterManagement.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ManageSearchClusterNode"></a>
# **Invoke-ManageSearchClusterNode**
> SearchNodeManagement Invoke-ManageSearchClusterNode<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NodeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchNodeManagement] <PSCustomObject><br>

Manage search cluster node

Manages the search cluster node. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the search cluster.
$NodeId = "MyNodeId" # String | The ID of the search cluster node to be managed.
$SearchNodeManagement = Initialize-SearchNodeManagement -ActivityId "MyActivityId" -NodeId "MyNodeId" -Operation "REDEPLOY" # SearchNodeManagement | 

# Manage search cluster node
try {
    $Result = Invoke-ManageSearchClusterNode -Id $Id -NodeId $NodeId -SearchNodeManagement $SearchNodeManagement
} catch {
    Write-Host ("Exception occurred when calling Invoke-ManageSearchClusterNode: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the search cluster. | 
 **NodeId** | **String**| The ID of the search cluster node to be managed. | 
 **SearchNodeManagement** | [**SearchNodeManagement**](SearchNodeManagement.md)|  | 

### Return type

[**SearchNodeManagement**](SearchNodeManagement.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-SearchCluster"></a>
# **Update-SearchCluster**
> SearchClusterConfig Update-SearchCluster<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchClusterConfig] <PSCustomObject><br>

Update search cluster configuration

Updates the search cluster configuration. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the search cluster to be updated.
$SearchClusterConfig = Initialize-SearchClusterConfig -ActivityId "MyActivityId" -IndexRetentionDays 0 # SearchClusterConfig | 

# Update search cluster configuration
try {
    $Result = Update-SearchCluster -Id $Id -SearchClusterConfig $SearchClusterConfig
} catch {
    Write-Host ("Exception occurred when calling Update-SearchCluster: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the search cluster to be updated. | 
 **SearchClusterConfig** | [**SearchClusterConfig**](SearchClusterConfig.md)|  | 

### Return type

[**SearchClusterConfig**](SearchClusterConfig.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

