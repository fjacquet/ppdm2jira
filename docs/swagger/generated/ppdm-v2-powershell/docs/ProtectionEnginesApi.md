# PpdmApiReference.PpdmApiReference\Api.ProtectionEnginesApi

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-ProtectionEngineProxy**](ProtectionEnginesApi.md#New-ProtectionEngineProxy) | **POST** /api/v2/protection-engines/{id}/proxies | Add a protection engine proxy
[**New-ProtectionEngineProxyBundles**](ProtectionEnginesApi.md#New-ProtectionEngineProxyBundles) | **POST** /api/v2/protection-engines/{id}/proxy-bundles | Collect protection engine proxy bundles
[**Invoke-DeleteProtectionEngineProxy**](ProtectionEnginesApi.md#Invoke-DeleteProtectionEngineProxy) | **DELETE** /api/v2/protection-engines/{id}/proxies/{proxyId} | Delete a protection engine proxy by ID
[**Invoke-DeleteProtectionEngineProxyLogBundle**](ProtectionEnginesApi.md#Invoke-DeleteProtectionEngineProxyLogBundle) | **DELETE** /api/v2/protection-engines/{id}/proxy-bundles/{sessionId} | Delete protection engine proxy bundle session
[**Get-ProtectionEngine**](ProtectionEnginesApi.md#Get-ProtectionEngine) | **GET** /api/v2/protection-engines/{id} | Get protection engine
[**Get-ProtectionEngineProxies**](ProtectionEnginesApi.md#Get-ProtectionEngineProxies) | **GET** /api/v2/protection-engines/{id}/proxies | Get all protection engine proxies
[**Get-ProtectionEngineProxy**](ProtectionEnginesApi.md#Get-ProtectionEngineProxy) | **GET** /api/v2/protection-engines/{id}/proxies/{proxyId} | Get a protection engine proxy by ID
[**Get-ProtectionEngineProxyImages**](ProtectionEnginesApi.md#Get-ProtectionEngineProxyImages) | **GET** /api/v2/protection-engines/{id}/proxy-images | Get all protection engine proxy images
[**Get-ProtectionEngineProxyLogBundle**](ProtectionEnginesApi.md#Get-ProtectionEngineProxyLogBundle) | **GET** /api/v2/protection-engines/{id}/proxy-bundles/{sessionId} | Get protection engine proxy bundle session
[**Get-ProtectionEngineProxyLogBundles**](ProtectionEnginesApi.md#Get-ProtectionEngineProxyLogBundles) | **GET** /api/v2/protection-engines/{id}/proxy-bundles | Get all protection engine proxy log bundles
[**Get-ProtectionEngineSupportedUpgrade**](ProtectionEnginesApi.md#Get-ProtectionEngineSupportedUpgrade) | **POST** /api/v2/protection-engines/{id}/supported-upgrade | Get protection engine supported upgrade type
[**Get-ProtectionEngines**](ProtectionEnginesApi.md#Get-ProtectionEngines) | **GET** /api/v2/protection-engines | Get all protection engines
[**Invoke-ManageProtectionEngine**](ProtectionEnginesApi.md#Invoke-ManageProtectionEngine) | **POST** /api/v2/protection-engines/{id}/management | Manage protection engine
[**Invoke-RedeployProtectionEngineProxy**](ProtectionEnginesApi.md#Invoke-RedeployProtectionEngineProxy) | **PUT** /api/v2/protection-engines/{id}/proxies/{proxyId}/redeploy | Redeploy protection engine proxy
[**Register-ProtectionEngine**](ProtectionEnginesApi.md#Register-ProtectionEngine) | **POST** /api/v2/protection-engines | Register protection engine
[**Unregister-ProtectionEngine**](ProtectionEnginesApi.md#Unregister-ProtectionEngine) | **DELETE** /api/v2/protection-engines/{id} | Unregister protection engine
[**Update-ProtectionEngine**](ProtectionEnginesApi.md#Update-ProtectionEngine) | **PUT** /api/v2/protection-engines/{id} | Update protection engine
[**Update-ProtectionEngineProxy**](ProtectionEnginesApi.md#Update-ProtectionEngineProxy) | **PUT** /api/v2/protection-engines/{id}/proxies/{proxyId} | Update a protection engine proxy configuration
[**Invoke-UpgradeProxies**](ProtectionEnginesApi.md#Invoke-UpgradeProxies) | **POST** /api/v2/protection-engines/{id}/proxies-upgrade | Upgrade proxies of the selected vCenters


<a id="New-ProtectionEngineProxy"></a>
# **New-ProtectionEngineProxy**
> VPEProxy New-ProtectionEngineProxy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VPEProxy] <PSCustomObject><br>

Add a protection engine proxy

Adds a VPE proxy to the protection engine with the specified ID. The protection engine with the specified ID must already be registered with PowerProtect Data Manager. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the VPE protection engine.
$ConfigurableTransportSessions = Initialize-ConfigurableTransportSessions -Mode "HotaddPreferred" -UseSsl $false -UserDefined $false
$ProxySessionOverride = Initialize-ProxySessionOverride -CapacityPercentage 0 -ControlPercentage 0 -Datastores "MyDatastores" -TransportSessions $ConfigurableTransportSessions

$VProxyCredential = Initialize-VProxyCredential -ObjectId "MyObjectId" -Password "MyPassword" -Type "ObjectId" -UserName "MyUserName"

$CommonPrismServer = Initialize-CommonPrismServer -HostName "MyHostName" -TcpPort 0 -ThumbPrint "MyThumbPrint" -UserName "MyUserName" -UserPassword "MyUserPassword"
$VProxyPrismServerRef = Initialize-VProxyPrismServerRef -ObjectId "MyObjectId" -Prism $CommonPrismServer -Type "ObjectId"

$ProxyDeploymentConfigRoutes = Initialize-ProxyDeploymentConfigRoutes -Gateway "MyGateway" -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Netmask "MyNetmask" -Source "MySource" -Type "MyType"
$ProxyDeploymentConfigVlans = Initialize-ProxyDeploymentConfigVlans -Gateway "MyGateway" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Mtu 0 -Netmask "MyNetmask" -Routes $ProxyDeploymentConfigRoutes -VlanId 0

$VProxyDeploymentNetworkConfig = Initialize-VProxyDeploymentNetworkConfig -Fqdn "MyFqdn" -Gateway "MyGateway" -IPProtocol "IPv4" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -MacAddress "MyMacAddress" -MultiVlanEnabled $false -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref" -SubnetUuid "MySubnetUuid" -Vlans $ProxyDeploymentConfigVlans

$VmDeploymentLocation = Initialize-VmDeploymentLocation -ClusterMoref "MyClusterMoref" -DatastoreMoref "MyDatastoreMoref" -FolderMoref "MyFolderMoref" -HostMoref "MyHostMoref" -NetworkMoref "MyNetworkMoref" -ResourcePoolMoref "MyResourcePoolMoref"
$PrismVmDeploymentLocation = Initialize-PrismVmDeploymentLocation -ClusterUuid "MyClusterUuid" -HostUuid "MyHostUuid" -StorageContainerUuid "MyStorageContainerUuid"
$ProxyDeploymentConfig = Initialize-ProxyDeploymentConfig -AdditionalVMNetworks $VProxyDeploymentNetworkConfig -DiskProvisioning "thin" -Dns "MyDns" -Fqdn "MyFqdn" -Gateway "MyGateway" -IPProtocol "IPv4" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Location $VmDeploymentLocation -MacAddress "MyMacAddress" -MultiVlanEnabled $false -NTPServer "MyNTPServer" -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref" -NodeSize "SMALL" -OvaFile "MyOvaFile" -PrismLocation $PrismVmDeploymentLocation -RootCredential $VProxyCredential -SubnetUuid "MySubnetUuid" -Timezone "MyTimezone" -VMName "MyVMName" -Vlans $ProxyDeploymentConfigVlans

"VM"
$CommonVimServer = Initialize-CommonVimServer -EncryptedUserPassword $false -HostName "MyHostName" -HypervisorMode "vSphere" -TcpPort 0 -ThumbPrint "MyThumbPrint" -UserName "MyUserName" -UserPassword "MyUserPassword"
$VProxyVimServerRef = Initialize-VProxyVimServerRef -ObjectId "MyObjectId" -Type "ObjectId" -Vcenter $CommonVimServer

$VProxyConfig = Initialize-VProxyConfig -AdvancedOptions $ProxySessionOverride -ApplicationData  -AutoUpdateConfig $false -Credential $VProxyCredential -DeliveryType "VirtualAppliance" -DeployProxy $false -Disabled $false -DiscoverHostStorageAdaptersInterval 0 -HealthCheckInterval 0 -HostName "MyHostName" -InstanceUuid "MyInstanceUuid" -MORef "MyMORef" -Operation "configure" -Platform "VIM" -Port 0 -PrismServerRef $VProxyPrismServerRef -ProxyDeploymentConfig $ProxyDeploymentConfig -ProxyType "Embedded" -SkipRegistration $false -SupportedProtectionTypes 

$ConfigurableTransportSessions = Initialize-ConfigurableTransportSessions -Mode "HotaddPreferred" -UseSsl $false -UserDefined $false
$ProxySessionOverride = Initialize-ProxySessionOverride -CapacityPercentage 0 -ControlPercentage 0 -Datastores "MyDatastores" -TransportSessions $ConfigurableTransportSessions

$VProxyCredential = Initialize-VProxyCredential -ObjectId "MyObjectId" -Password "MyPassword" -Type "ObjectId" -UserName "MyUserName"

$CommonPrismServer = Initialize-CommonPrismServer -HostName "MyHostName" -TcpPort 0 -ThumbPrint "MyThumbPrint" -UserName "MyUserName" -UserPassword "MyUserPassword"
$VProxyPrismServerRef = Initialize-VProxyPrismServerRef -ObjectId "MyObjectId" -Prism $CommonPrismServer -Type "ObjectId"

$ProxyDeploymentConfigRoutes = Initialize-ProxyDeploymentConfigRoutes -Gateway "MyGateway" -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Netmask "MyNetmask" -Source "MySource" -Type "MyType"
$ProxyDeploymentConfigVlans = Initialize-ProxyDeploymentConfigVlans -Gateway "MyGateway" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Mtu 0 -Netmask "MyNetmask" -Routes $ProxyDeploymentConfigRoutes -VlanId 0

$VProxyDeploymentNetworkConfig = Initialize-VProxyDeploymentNetworkConfig -Fqdn "MyFqdn" -Gateway "MyGateway" -IPProtocol "IPv4" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -MacAddress "MyMacAddress" -MultiVlanEnabled $false -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref" -SubnetUuid "MySubnetUuid" -Vlans $ProxyDeploymentConfigVlans

$VmDeploymentLocation = Initialize-VmDeploymentLocation -ClusterMoref "MyClusterMoref" -DatastoreMoref "MyDatastoreMoref" -FolderMoref "MyFolderMoref" -HostMoref "MyHostMoref" -NetworkMoref "MyNetworkMoref" -ResourcePoolMoref "MyResourcePoolMoref"
$PrismVmDeploymentLocation = Initialize-PrismVmDeploymentLocation -ClusterUuid "MyClusterUuid" -HostUuid "MyHostUuid" -StorageContainerUuid "MyStorageContainerUuid"
$ProxyDeploymentConfig = Initialize-ProxyDeploymentConfig -AdditionalVMNetworks $VProxyDeploymentNetworkConfig -DiskProvisioning "thin" -Dns "MyDns" -Fqdn "MyFqdn" -Gateway "MyGateway" -IPProtocol "IPv4" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Location $VmDeploymentLocation -MacAddress "MyMacAddress" -MultiVlanEnabled $false -NTPServer "MyNTPServer" -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref" -NodeSize "SMALL" -OvaFile "MyOvaFile" -PrismLocation $PrismVmDeploymentLocation -RootCredential $VProxyCredential -SubnetUuid "MySubnetUuid" -Timezone "MyTimezone" -VMName "MyVMName" -Vlans $ProxyDeploymentConfigVlans

"VM" -UpdateCredentials $false -VimServerRef $VProxyVimServerRef

$ReservedBy = Initialize-ReservedBy -InterruptedSessionId "MyInterruptedSessionId" -InterruptedSessionType "MyInterruptedSessionType" -SessionId "MySessionId" -SessionType "MySessionType"
$AllottedModes = Initialize-AllottedModes -CapacityUnits 0 -ControlUnits 0 -ReservedBy $ReservedBy -TotalControlSessions 0 -TotalTransportSessions 0

$ArchivalSessionRef = Initialize-ArchivalSessionRef -CapacityUnits 0
$BvSessionRef = Initialize-BvSessionRef -CapacityUnits 0 -ControlUnits 0

$ConfigPropertyChangeRef = Initialize-ConfigPropertyChangeRef -Index 0 -NewValue "MyNewValue" -OldValue "MyOldValue" -Operation "MyOperation" -Type "Datastore"
$VProxyStatusConfigChange = Initialize-VProxyStatusConfigChange -PropertyChanges $ConfigPropertyChangeRef -UpdatedTime (Get-Date)

$VProxyDaemonStatus = Initialize-VProxyDaemonStatus -DaemonName "MyDaemonName" -Resources "MyResources" -Status "MyStatus"
$HostStorageAdapter = Initialize-HostStorageAdapter -Identifiers "MyIdentifiers" -Type "FC"
$VimObjectRef = Initialize-VimObjectRef -MOref "MyMOref" -Type "MyType"
$LastOperation = Initialize-LastOperation -Detail "MyDetail" -Operation "configure" -Status "Pending"
$TransportSessionRef = Initialize-TransportSessionRef -CapacityUnits 0 -ControlUnits 0 -Mode "HotaddPreferred" -UseSsl $false
$NasSessionRef = Initialize-NasSessionRef -CapacityUnits 0

$CommonDnsConfig = Initialize-CommonDnsConfig -DhcpEnabled $false -DomainName "MyDomainName" -HostName "MyHostName" -SearchDomains "MySearchDomains" -Servers "MyServers"
$CommonIpConfig = Initialize-CommonIpConfig -Address "MyAddress" -IpCidr "MyIpCidr" -NetMask "MyNetMask" -PrefixLength 0 -SubnetCidr "MySubnetCidr" -Version "IPv4"
$VProxyNetworkConfig = Initialize-VProxyNetworkConfig -Connected $false -DeviceLabel "MyDeviceLabel" -Dns $CommonDnsConfig -GatewayV4 "MyGatewayV4" -GatewayV6 "MyGatewayV6" -IpAddrV4 $CommonIpConfig -IpAddrV6 $CommonIpConfig -MAC "MyMAC" -VirtualDeviceId 0 -VirtualNetworkName "MyVirtualNetworkName"

$ProxyStatus = Initialize-ProxyStatus -Detail "MyDetail" -Status "Deploying"
$VProxyVlanStatus = Initialize-VProxyVlanStatus -Detail "MyDetail" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -Status "CONNECTED" -VlanId 0
$VProxyStatus = Initialize-VProxyStatus -Aliases "MyAliases" -AllottedArchivalSessions $AllottedModes -AllottedBvSessions $AllottedModes -AllottedModes $AllottedModes -AllottedNasSessions $AllottedModes -ArchivalSessionsAvailable $ArchivalSessionRef -BvSessionsAvailable $BvSessionRef -Certificate "MyCertificate" -ConfigChange $VProxyStatusConfigChange -DaemonStatus $VProxyDaemonStatus -DatacenterMoref "MyDatacenterMoref" -Datastores "MyDatastores" -DeployedTime "MyDeployedTime" -HostStorageAdapter $HostStorageAdapter -HostedComputeRes $VimObjectRef -LastCheckedTime "MyLastCheckedTime" -LastOperation $LastOperation -ModesAvailable $TransportSessionRef -NasSessionsAvailable $NasSessionRef -Networks $VProxyNetworkConfig -PowerState "On" -ProxyDeployed $false -ProxyRegistered $false -ProxyState "READY" -ProxyStatus $ProxyStatus -RegisteredTime "MyRegisteredTime" -Thumbprint "MyThumbprint" -Uuid "MyUuid" -Version "MyVersion" -VlanStatus $VProxyVlanStatus

$VPEProxy = Initialize-VPEProxy -Config $VProxyConfig -Id "MyId" -Status $VProxyStatus -Updatable $false -UpdateStatus "INSTALLED" # VPEProxy | 

# Add a protection engine proxy
try {
    $Result = New-ProtectionEngineProxy -Id $Id -VPEProxy $VPEProxy
} catch {
    Write-Host ("Exception occurred when calling New-ProtectionEngineProxy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the VPE protection engine. | 
 **VPEProxy** | [**VPEProxy**](VPEProxy.md)|  | 

### Return type

[**VPEProxy**](VPEProxy.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-ProtectionEngineProxyBundles"></a>
# **New-ProtectionEngineProxyBundles**
> VPEProxyLogBundle New-ProtectionEngineProxyBundles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VPEProxyLogBundleRequest] <PSCustomObject><br>

Collect protection engine proxy bundles

Collects protection engine proxy bundles. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the VPE protection engine.
$LogBundleRange = Initialize-LogBundleRange -EndDate "MyEndDate" -StartDate "MyStartDate"
"VM"$VPEProxyLogBundleRequest = Initialize-VPEProxyLogBundleRequest -IdleTimeout 0 -LogBundleRange $LogBundleRange -LogDirectory "MyLogDirectory" -SupportedProtectionTypes 
$LogBundleRange = Initialize-LogBundleRange -EndDate "MyEndDate" -StartDate "MyStartDate"
"VM" # VPEProxyLogBundleRequest | 

# Collect protection engine proxy bundles
try {
    $Result = New-ProtectionEngineProxyBundles -Id $Id -VPEProxyLogBundleRequest $VPEProxyLogBundleRequest
} catch {
    Write-Host ("Exception occurred when calling New-ProtectionEngineProxyBundles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the VPE protection engine. | 
 **VPEProxyLogBundleRequest** | [**VPEProxyLogBundleRequest**](VPEProxyLogBundleRequest.md)|  | 

### Return type

[**VPEProxyLogBundle**](VPEProxyLogBundle.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteProtectionEngineProxy"></a>
# **Invoke-DeleteProtectionEngineProxy**
> VPEProxy Invoke-DeleteProtectionEngineProxy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProxyId] <String><br>

Delete a protection engine proxy by ID

Deletes the VPE proxy with a proxyId that is registered to the protection engine with the specified ID.  The protection engine with the specified ID must already be registered with PowerProtect Data Manager. The VPE proxy with the proxyId must also be registered. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the VPE protection engine.
$ProxyId = "MyProxyId" # String | The proxy ID of the proxy to be removed.

# Delete a protection engine proxy by ID
try {
    $Result = Invoke-DeleteProtectionEngineProxy -Id $Id -ProxyId $ProxyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteProtectionEngineProxy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the VPE protection engine. | 
 **ProxyId** | **String**| The proxy ID of the proxy to be removed. | 

### Return type

[**VPEProxy**](VPEProxy.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-DeleteProtectionEngineProxyLogBundle"></a>
# **Invoke-DeleteProtectionEngineProxyLogBundle**
> void Invoke-DeleteProtectionEngineProxyLogBundle<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>

Delete protection engine proxy bundle session

Deletes protection engine proxy bundle session. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the VPE protection engine.
$SessionId = "MySessionId" # String | The log bundle session ID.

# Delete protection engine proxy bundle session
try {
    $Result = Invoke-DeleteProtectionEngineProxyLogBundle -Id $Id -SessionId $SessionId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteProtectionEngineProxyLogBundle: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the VPE protection engine. | 
 **SessionId** | **String**| The log bundle session ID. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionEngine"></a>
# **Get-ProtectionEngine**
> ProtectionEngine Get-ProtectionEngine<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get protection engine

Retrieves the registered protection engine with the specified ID.  A prerequisite is that the protection engine with the specified ID is already registered with PowerProtect Data Manager. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the protection engine to be retrieved.

# Get protection engine
try {
    $Result = Get-ProtectionEngine -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionEngine: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the protection engine to be retrieved. | 

### Return type

[**ProtectionEngine**](ProtectionEngine.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionEngineProxies"></a>
# **Get-ProtectionEngineProxies**
> VPEProxies Get-ProtectionEngineProxies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all protection engine proxies

Retrieves a list of VPE protection engine proxies for the protection engine with the specified ID. The protection engine with the specified ID must already be registered with PowerProtect Data Manager. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the VPE protection engine.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all protection engine proxies
try {
    $Result = Get-ProtectionEngineProxies -Id $Id -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionEngineProxies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the VPE protection engine. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**VPEProxies**](VPEProxies.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionEngineProxy"></a>
# **Get-ProtectionEngineProxy**
> VPEProxy Get-ProtectionEngineProxy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProxyId] <String><br>

Get a protection engine proxy by ID

Retrieves the VPE proxy with proxyId that is registered to the protection engine with the specified ID.  The protection engine with the specified ID must already be registered with PowerProtect Data Manager. The VPE proxy with the proxyId must also be registered. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the VPE protection engine.
$ProxyId = "MyProxyId" # String | The proxy ID.

# Get a protection engine proxy by ID
try {
    $Result = Get-ProtectionEngineProxy -Id $Id -ProxyId $ProxyId
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionEngineProxy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the VPE protection engine. | 
 **ProxyId** | **String**| The proxy ID. | 

### Return type

[**VPEProxy**](VPEProxy.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionEngineProxyImages"></a>
# **Get-ProtectionEngineProxyImages**
> SWRepoFiles Get-ProtectionEngineProxyImages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get all protection engine proxy images

Retrieves all protection engine proxy images. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the VPE protection engine.

# Get all protection engine proxy images
try {
    $Result = Get-ProtectionEngineProxyImages -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionEngineProxyImages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the VPE protection engine. | 

### Return type

[**SWRepoFiles**](SWRepoFiles.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionEngineProxyLogBundle"></a>
# **Get-ProtectionEngineProxyLogBundle**
> VPEProxy Get-ProtectionEngineProxyLogBundle<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>

Get protection engine proxy bundle session

Retrieves the protection engine proxy bundle session. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the VPE protection engine.
$SessionId = "MySessionId" # String | The protection engine proxy bundle session ID.

# Get protection engine proxy bundle session
try {
    $Result = Get-ProtectionEngineProxyLogBundle -Id $Id -SessionId $SessionId
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionEngineProxyLogBundle: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the VPE protection engine. | 
 **SessionId** | **String**| The protection engine proxy bundle session ID. | 

### Return type

[**VPEProxy**](VPEProxy.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionEngineProxyLogBundles"></a>
# **Get-ProtectionEngineProxyLogBundles**
> VPEProxyLogBundles Get-ProtectionEngineProxyLogBundles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all protection engine proxy log bundles

Retrieves all protection engine proxy log bundles. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the VPE protection engine.
$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all protection engine proxy log bundles
try {
    $Result = Get-ProtectionEngineProxyLogBundles -Id $Id -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionEngineProxyLogBundles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the VPE protection engine. | 
 **Page** | **Int32**| The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. | [optional] [default to 100]
 **Filter** | **String**| The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. | [optional] 
 **Orderby** | **String**| The attributes and fields to sort by. This parameter can combine with sort direction &quot;&quot;ASC&quot;&quot; or &quot;&quot;DESC&quot;&quot;. Default direction is ASC. Under Tasks, see Sort the result. | [optional] 

### Return type

[**VPEProxyLogBundles**](VPEProxyLogBundles.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionEngineSupportedUpgrade"></a>
# **Get-ProtectionEngineSupportedUpgrade**
> SupportedUpgrade Get-ProtectionEngineSupportedUpgrade<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SupportedUpgradeResource] <PSCustomObject><br>

Get protection engine supported upgrade type

Retrieves protection engine supported upgrade type. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the protection engine.
$ComponentErrorResponse = Initialize-ComponentErrorResponse -Code 0 -Path "MyPath" -Reason "MyReason" -Remediation  -Timestamp 0
$PreCheckMessage = Initialize-PreCheckMessage -ErrorResponse $ComponentErrorResponse -Severity "INFORMATIONAL" -ShortName "MyShortName"

$SupportedUpgradeResource = Initialize-SupportedUpgradeResource -FromVersion "MyFromVersion" -InventorySourceIds "MyInventorySourceIds" -ManualUpdate $false -Messages $PreCheckMessage -MinimumProxyVersion "MyMinimumProxyVersion" -MinimumSkippableVersion "MyMinimumSkippableVersion" -ProtectionType "VM" -Skippable $false -ToVersion "MyToVersion" -UpgradeType "DU" # SupportedUpgradeResource | 

# Get protection engine supported upgrade type
try {
    $Result = Get-ProtectionEngineSupportedUpgrade -Id $Id -SupportedUpgradeResource $SupportedUpgradeResource
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionEngineSupportedUpgrade: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the protection engine. | 
 **SupportedUpgradeResource** | [**SupportedUpgradeResource**](SupportedUpgradeResource.md)|  | 

### Return type

[**SupportedUpgrade**](SupportedUpgrade.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ProtectionEngines"></a>
# **Get-ProtectionEngines**
> ProtectionEngines Get-ProtectionEngines<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Orderby] <String><br>

Get all protection engines

Retrieves all registered protection engines supported by PowerProtect Data Manager.  This list is expected to grow, and for the current release (and upcoming releases), the supported protection engine is VPE. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator, User, Backup Administrator, Restore Administrator, Security Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = 56 # Int32 | The page number to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of resources to be returned. Must not be less than 1. Under Tasks, see Page the result. (optional) (default to 100)
$Filter = "MyFilter" # String | The filter string that is expressed using PowerProtect Data Manager filter syntax. Under Tasks, see Filter the result. (optional)
$Orderby = "MyOrderby" # String | The attributes and fields to sort by. This parameter can combine with sort direction ""ASC"" or ""DESC"". Default direction is ASC. Under Tasks, see Sort the result. (optional)

# Get all protection engines
try {
    $Result = Get-ProtectionEngines -Page $Page -PageSize $PageSize -Filter $Filter -Orderby $Orderby
} catch {
    Write-Host ("Exception occurred when calling Get-ProtectionEngines: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**ProtectionEngines**](ProtectionEngines.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-ManageProtectionEngine"></a>
# **Invoke-ManageProtectionEngine**
> ProtectionEngineManagement Invoke-ManageProtectionEngine<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionEngineManagement] <PSCustomObject><br>

Manage protection engine

Performs the specified operation (ProtectionManagementResource.operation) on the protection engine with the specified ID.  The protection engine with the specified ID must already be registered with PowerProtect Data Manager. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the protection engine to be managed.
$Options = Initialize-Options -MinimumProxyVersion "MyMinimumProxyVersion" -QuiesceWaitTime 0
$ProtectionEngineManagement = Initialize-ProtectionEngineManagement -EngineId "MyEngineId" -EngineType "VPE" -JobId "MyJobId" -Operation "START_PROXIES" -Options $Options -ProxyIds "MyProxyIds" # ProtectionEngineManagement | 

# Manage protection engine
try {
    $Result = Invoke-ManageProtectionEngine -Id $Id -ProtectionEngineManagement $ProtectionEngineManagement
} catch {
    Write-Host ("Exception occurred when calling Invoke-ManageProtectionEngine: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the protection engine to be managed. | 
 **ProtectionEngineManagement** | [**ProtectionEngineManagement**](ProtectionEngineManagement.md)|  | 

### Return type

[**ProtectionEngineManagement**](ProtectionEngineManagement.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-RedeployProtectionEngineProxy"></a>
# **Invoke-RedeployProtectionEngineProxy**
> VPEProxy Invoke-RedeployProtectionEngineProxy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProxyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VPEProxy] <PSCustomObject><br>

Redeploy protection engine proxy

Redeploys the VPE proxy with proxyId that is registered to the protection engine with the specified ID.  The protection engine with the specified ID must already be registered with PowerProtect Data Manager. The VPE proxy with the proxyId must also be registered. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the protection engine.
$ProxyId = "MyProxyId" # String | The proxy ID of the proxy to be redeployed.
$ConfigurableTransportSessions = Initialize-ConfigurableTransportSessions -Mode "HotaddPreferred" -UseSsl $false -UserDefined $false
$ProxySessionOverride = Initialize-ProxySessionOverride -CapacityPercentage 0 -ControlPercentage 0 -Datastores "MyDatastores" -TransportSessions $ConfigurableTransportSessions

$VProxyCredential = Initialize-VProxyCredential -ObjectId "MyObjectId" -Password "MyPassword" -Type "ObjectId" -UserName "MyUserName"

$CommonPrismServer = Initialize-CommonPrismServer -HostName "MyHostName" -TcpPort 0 -ThumbPrint "MyThumbPrint" -UserName "MyUserName" -UserPassword "MyUserPassword"
$VProxyPrismServerRef = Initialize-VProxyPrismServerRef -ObjectId "MyObjectId" -Prism $CommonPrismServer -Type "ObjectId"

$ProxyDeploymentConfigRoutes = Initialize-ProxyDeploymentConfigRoutes -Gateway "MyGateway" -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Netmask "MyNetmask" -Source "MySource" -Type "MyType"
$ProxyDeploymentConfigVlans = Initialize-ProxyDeploymentConfigVlans -Gateway "MyGateway" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Mtu 0 -Netmask "MyNetmask" -Routes $ProxyDeploymentConfigRoutes -VlanId 0

$VProxyDeploymentNetworkConfig = Initialize-VProxyDeploymentNetworkConfig -Fqdn "MyFqdn" -Gateway "MyGateway" -IPProtocol "IPv4" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -MacAddress "MyMacAddress" -MultiVlanEnabled $false -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref" -SubnetUuid "MySubnetUuid" -Vlans $ProxyDeploymentConfigVlans

$VmDeploymentLocation = Initialize-VmDeploymentLocation -ClusterMoref "MyClusterMoref" -DatastoreMoref "MyDatastoreMoref" -FolderMoref "MyFolderMoref" -HostMoref "MyHostMoref" -NetworkMoref "MyNetworkMoref" -ResourcePoolMoref "MyResourcePoolMoref"
$PrismVmDeploymentLocation = Initialize-PrismVmDeploymentLocation -ClusterUuid "MyClusterUuid" -HostUuid "MyHostUuid" -StorageContainerUuid "MyStorageContainerUuid"
$ProxyDeploymentConfig = Initialize-ProxyDeploymentConfig -AdditionalVMNetworks $VProxyDeploymentNetworkConfig -DiskProvisioning "thin" -Dns "MyDns" -Fqdn "MyFqdn" -Gateway "MyGateway" -IPProtocol "IPv4" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Location $VmDeploymentLocation -MacAddress "MyMacAddress" -MultiVlanEnabled $false -NTPServer "MyNTPServer" -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref" -NodeSize "SMALL" -OvaFile "MyOvaFile" -PrismLocation $PrismVmDeploymentLocation -RootCredential $VProxyCredential -SubnetUuid "MySubnetUuid" -Timezone "MyTimezone" -VMName "MyVMName" -Vlans $ProxyDeploymentConfigVlans

"VM"
$CommonVimServer = Initialize-CommonVimServer -EncryptedUserPassword $false -HostName "MyHostName" -HypervisorMode "vSphere" -TcpPort 0 -ThumbPrint "MyThumbPrint" -UserName "MyUserName" -UserPassword "MyUserPassword"
$VProxyVimServerRef = Initialize-VProxyVimServerRef -ObjectId "MyObjectId" -Type "ObjectId" -Vcenter $CommonVimServer

$VProxyConfig = Initialize-VProxyConfig -AdvancedOptions $ProxySessionOverride -ApplicationData  -AutoUpdateConfig $false -Credential $VProxyCredential -DeliveryType "VirtualAppliance" -DeployProxy $false -Disabled $false -DiscoverHostStorageAdaptersInterval 0 -HealthCheckInterval 0 -HostName "MyHostName" -InstanceUuid "MyInstanceUuid" -MORef "MyMORef" -Operation "configure" -Platform "VIM" -Port 0 -PrismServerRef $VProxyPrismServerRef -ProxyDeploymentConfig $ProxyDeploymentConfig -ProxyType "Embedded" -SkipRegistration $false -SupportedProtectionTypes 

$ConfigurableTransportSessions = Initialize-ConfigurableTransportSessions -Mode "HotaddPreferred" -UseSsl $false -UserDefined $false
$ProxySessionOverride = Initialize-ProxySessionOverride -CapacityPercentage 0 -ControlPercentage 0 -Datastores "MyDatastores" -TransportSessions $ConfigurableTransportSessions

$VProxyCredential = Initialize-VProxyCredential -ObjectId "MyObjectId" -Password "MyPassword" -Type "ObjectId" -UserName "MyUserName"

$CommonPrismServer = Initialize-CommonPrismServer -HostName "MyHostName" -TcpPort 0 -ThumbPrint "MyThumbPrint" -UserName "MyUserName" -UserPassword "MyUserPassword"
$VProxyPrismServerRef = Initialize-VProxyPrismServerRef -ObjectId "MyObjectId" -Prism $CommonPrismServer -Type "ObjectId"

$ProxyDeploymentConfigRoutes = Initialize-ProxyDeploymentConfigRoutes -Gateway "MyGateway" -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Netmask "MyNetmask" -Source "MySource" -Type "MyType"
$ProxyDeploymentConfigVlans = Initialize-ProxyDeploymentConfigVlans -Gateway "MyGateway" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Mtu 0 -Netmask "MyNetmask" -Routes $ProxyDeploymentConfigRoutes -VlanId 0

$VProxyDeploymentNetworkConfig = Initialize-VProxyDeploymentNetworkConfig -Fqdn "MyFqdn" -Gateway "MyGateway" -IPProtocol "IPv4" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -MacAddress "MyMacAddress" -MultiVlanEnabled $false -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref" -SubnetUuid "MySubnetUuid" -Vlans $ProxyDeploymentConfigVlans

$VmDeploymentLocation = Initialize-VmDeploymentLocation -ClusterMoref "MyClusterMoref" -DatastoreMoref "MyDatastoreMoref" -FolderMoref "MyFolderMoref" -HostMoref "MyHostMoref" -NetworkMoref "MyNetworkMoref" -ResourcePoolMoref "MyResourcePoolMoref"
$PrismVmDeploymentLocation = Initialize-PrismVmDeploymentLocation -ClusterUuid "MyClusterUuid" -HostUuid "MyHostUuid" -StorageContainerUuid "MyStorageContainerUuid"
$ProxyDeploymentConfig = Initialize-ProxyDeploymentConfig -AdditionalVMNetworks $VProxyDeploymentNetworkConfig -DiskProvisioning "thin" -Dns "MyDns" -Fqdn "MyFqdn" -Gateway "MyGateway" -IPProtocol "IPv4" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Location $VmDeploymentLocation -MacAddress "MyMacAddress" -MultiVlanEnabled $false -NTPServer "MyNTPServer" -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref" -NodeSize "SMALL" -OvaFile "MyOvaFile" -PrismLocation $PrismVmDeploymentLocation -RootCredential $VProxyCredential -SubnetUuid "MySubnetUuid" -Timezone "MyTimezone" -VMName "MyVMName" -Vlans $ProxyDeploymentConfigVlans

"VM" -UpdateCredentials $false -VimServerRef $VProxyVimServerRef

$ReservedBy = Initialize-ReservedBy -InterruptedSessionId "MyInterruptedSessionId" -InterruptedSessionType "MyInterruptedSessionType" -SessionId "MySessionId" -SessionType "MySessionType"
$AllottedModes = Initialize-AllottedModes -CapacityUnits 0 -ControlUnits 0 -ReservedBy $ReservedBy -TotalControlSessions 0 -TotalTransportSessions 0

$ArchivalSessionRef = Initialize-ArchivalSessionRef -CapacityUnits 0
$BvSessionRef = Initialize-BvSessionRef -CapacityUnits 0 -ControlUnits 0

$ConfigPropertyChangeRef = Initialize-ConfigPropertyChangeRef -Index 0 -NewValue "MyNewValue" -OldValue "MyOldValue" -Operation "MyOperation" -Type "Datastore"
$VProxyStatusConfigChange = Initialize-VProxyStatusConfigChange -PropertyChanges $ConfigPropertyChangeRef -UpdatedTime (Get-Date)

$VProxyDaemonStatus = Initialize-VProxyDaemonStatus -DaemonName "MyDaemonName" -Resources "MyResources" -Status "MyStatus"
$HostStorageAdapter = Initialize-HostStorageAdapter -Identifiers "MyIdentifiers" -Type "FC"
$VimObjectRef = Initialize-VimObjectRef -MOref "MyMOref" -Type "MyType"
$LastOperation = Initialize-LastOperation -Detail "MyDetail" -Operation "configure" -Status "Pending"
$TransportSessionRef = Initialize-TransportSessionRef -CapacityUnits 0 -ControlUnits 0 -Mode "HotaddPreferred" -UseSsl $false
$NasSessionRef = Initialize-NasSessionRef -CapacityUnits 0

$CommonDnsConfig = Initialize-CommonDnsConfig -DhcpEnabled $false -DomainName "MyDomainName" -HostName "MyHostName" -SearchDomains "MySearchDomains" -Servers "MyServers"
$CommonIpConfig = Initialize-CommonIpConfig -Address "MyAddress" -IpCidr "MyIpCidr" -NetMask "MyNetMask" -PrefixLength 0 -SubnetCidr "MySubnetCidr" -Version "IPv4"
$VProxyNetworkConfig = Initialize-VProxyNetworkConfig -Connected $false -DeviceLabel "MyDeviceLabel" -Dns $CommonDnsConfig -GatewayV4 "MyGatewayV4" -GatewayV6 "MyGatewayV6" -IpAddrV4 $CommonIpConfig -IpAddrV6 $CommonIpConfig -MAC "MyMAC" -VirtualDeviceId 0 -VirtualNetworkName "MyVirtualNetworkName"

$ProxyStatus = Initialize-ProxyStatus -Detail "MyDetail" -Status "Deploying"
$VProxyVlanStatus = Initialize-VProxyVlanStatus -Detail "MyDetail" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -Status "CONNECTED" -VlanId 0
$VProxyStatus = Initialize-VProxyStatus -Aliases "MyAliases" -AllottedArchivalSessions $AllottedModes -AllottedBvSessions $AllottedModes -AllottedModes $AllottedModes -AllottedNasSessions $AllottedModes -ArchivalSessionsAvailable $ArchivalSessionRef -BvSessionsAvailable $BvSessionRef -Certificate "MyCertificate" -ConfigChange $VProxyStatusConfigChange -DaemonStatus $VProxyDaemonStatus -DatacenterMoref "MyDatacenterMoref" -Datastores "MyDatastores" -DeployedTime "MyDeployedTime" -HostStorageAdapter $HostStorageAdapter -HostedComputeRes $VimObjectRef -LastCheckedTime "MyLastCheckedTime" -LastOperation $LastOperation -ModesAvailable $TransportSessionRef -NasSessionsAvailable $NasSessionRef -Networks $VProxyNetworkConfig -PowerState "On" -ProxyDeployed $false -ProxyRegistered $false -ProxyState "READY" -ProxyStatus $ProxyStatus -RegisteredTime "MyRegisteredTime" -Thumbprint "MyThumbprint" -Uuid "MyUuid" -Version "MyVersion" -VlanStatus $VProxyVlanStatus

$VPEProxy = Initialize-VPEProxy -Config $VProxyConfig -Id "MyId" -Status $VProxyStatus -Updatable $false -UpdateStatus "INSTALLED" # VPEProxy | 

# Redeploy protection engine proxy
try {
    $Result = Invoke-RedeployProtectionEngineProxy -Id $Id -ProxyId $ProxyId -VPEProxy $VPEProxy
} catch {
    Write-Host ("Exception occurred when calling Invoke-RedeployProtectionEngineProxy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the protection engine. | 
 **ProxyId** | **String**| The proxy ID of the proxy to be redeployed. | 
 **VPEProxy** | [**VPEProxy**](VPEProxy.md)|  | 

### Return type

[**VPEProxy**](VPEProxy.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Register-ProtectionEngine"></a>
# **Register-ProtectionEngine**
> ProtectionEngine Register-ProtectionEngine<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionEngine] <PSCustomObject><br>

Register protection engine

Registers a protection engine with PowerProtect Data Manager.  This list of possible protection engines is expected to grow; however, for the current release (and upcoming releases), the supported protection engine is VPE. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$EngineDataDomainMtree = Initialize-EngineDataDomainMtree -Id "MyId" -Name "MyName"
$EngineStorageSystem = Initialize-EngineStorageSystem -Id "MyId" -Location "MyLocation" -Name "MyName"
$EngineEmbedded = Initialize-EngineEmbedded -DataDomainMtree $EngineDataDomainMtree -StorageSystem $EngineStorageSystem

$EngineCredential = Initialize-EngineCredential -Id "MyId"

$ProtectionSummary = Initialize-ProtectionSummary -MaxNoOfProtectableVms 0 -NoOfProtectedVms 0 -TotalProtectedSizeInBytes 0
$VcStatus = Initialize-VcStatus -IpAddress "MyIpAddress" -Name "MyName" -Status "CONNECTED"
$VPEEngineInfo = Initialize-VPEEngineInfo -ProtectionSummary $ProtectionSummary -TotalDisabledProxies 0 -TotalFailedProxies 0 -TotalReadyProxies 0 -VcsStatuses $VcStatus

$EngineDetail = Initialize-EngineDetail -Vpe $VPEEngineInfo

$ProtectionEngine = Initialize-ProtectionEngine -Embedded $EngineEmbedded -Credentials $EngineCredential -Detail $EngineDetail -Id "MyId" -IpAddress "MyIpAddress" -Name "MyName" -RegisteredAt (Get-Date) -Status "MyStatus" -Type "VPE" # ProtectionEngine | 

# Register protection engine
try {
    $Result = Register-ProtectionEngine -ProtectionEngine $ProtectionEngine
} catch {
    Write-Host ("Exception occurred when calling Register-ProtectionEngine: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProtectionEngine** | [**ProtectionEngine**](ProtectionEngine.md)|  | 

### Return type

[**ProtectionEngine**](ProtectionEngine.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Unregister-ProtectionEngine"></a>
# **Unregister-ProtectionEngine**
> void Unregister-ProtectionEngine<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Unregister protection engine

Unregisters the protection engine, specified by its ID, from PowerProtect Data Manager.  A prerequisite is that the protection engine with the specified ID is already registered with PowerProtect Data Manager. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the protection engine to be deleted.

# Unregister protection engine
try {
    $Result = Unregister-ProtectionEngine -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Unregister-ProtectionEngine: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the protection engine to be deleted. | 

### Return type

void (empty response body)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ProtectionEngine"></a>
# **Update-ProtectionEngine**
> ProtectionEngine Update-ProtectionEngine<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionEngine] <PSCustomObject><br>

Update protection engine

Updates the protection engine with the specified ID. The protection engine with the specified ID must already be registered with PowerProtect Data Manager. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the protection engine to be updated.
$EngineDataDomainMtree = Initialize-EngineDataDomainMtree -Id "MyId" -Name "MyName"
$EngineStorageSystem = Initialize-EngineStorageSystem -Id "MyId" -Location "MyLocation" -Name "MyName"
$EngineEmbedded = Initialize-EngineEmbedded -DataDomainMtree $EngineDataDomainMtree -StorageSystem $EngineStorageSystem

$EngineCredential = Initialize-EngineCredential -Id "MyId"

$ProtectionSummary = Initialize-ProtectionSummary -MaxNoOfProtectableVms 0 -NoOfProtectedVms 0 -TotalProtectedSizeInBytes 0
$VcStatus = Initialize-VcStatus -IpAddress "MyIpAddress" -Name "MyName" -Status "CONNECTED"
$VPEEngineInfo = Initialize-VPEEngineInfo -ProtectionSummary $ProtectionSummary -TotalDisabledProxies 0 -TotalFailedProxies 0 -TotalReadyProxies 0 -VcsStatuses $VcStatus

$EngineDetail = Initialize-EngineDetail -Vpe $VPEEngineInfo

$ProtectionEngine = Initialize-ProtectionEngine -Embedded $EngineEmbedded -Credentials $EngineCredential -Detail $EngineDetail -Id "MyId" -IpAddress "MyIpAddress" -Name "MyName" -RegisteredAt (Get-Date) -Status "MyStatus" -Type "VPE" # ProtectionEngine | 

# Update protection engine
try {
    $Result = Update-ProtectionEngine -Id $Id -ProtectionEngine $ProtectionEngine
} catch {
    Write-Host ("Exception occurred when calling Update-ProtectionEngine: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the protection engine to be updated. | 
 **ProtectionEngine** | [**ProtectionEngine**](ProtectionEngine.md)|  | 

### Return type

[**ProtectionEngine**](ProtectionEngine.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-ProtectionEngineProxy"></a>
# **Update-ProtectionEngineProxy**
> VPEProxy Update-ProtectionEngineProxy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProxyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VPEProxy] <PSCustomObject><br>

Update a protection engine proxy configuration

Update the VPE proxy with proxyId that is registered to the protection engine with the specified ID.  The protection engine with the specified ID must already be registered with PowerProtect Data Manager. The VPE proxy with the proxyId must also be registered. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the protection engine.
$ProxyId = "MyProxyId" # String | The proxy ID of the proxy to be updated.
$ConfigurableTransportSessions = Initialize-ConfigurableTransportSessions -Mode "HotaddPreferred" -UseSsl $false -UserDefined $false
$ProxySessionOverride = Initialize-ProxySessionOverride -CapacityPercentage 0 -ControlPercentage 0 -Datastores "MyDatastores" -TransportSessions $ConfigurableTransportSessions

$VProxyCredential = Initialize-VProxyCredential -ObjectId "MyObjectId" -Password "MyPassword" -Type "ObjectId" -UserName "MyUserName"

$CommonPrismServer = Initialize-CommonPrismServer -HostName "MyHostName" -TcpPort 0 -ThumbPrint "MyThumbPrint" -UserName "MyUserName" -UserPassword "MyUserPassword"
$VProxyPrismServerRef = Initialize-VProxyPrismServerRef -ObjectId "MyObjectId" -Prism $CommonPrismServer -Type "ObjectId"

$ProxyDeploymentConfigRoutes = Initialize-ProxyDeploymentConfigRoutes -Gateway "MyGateway" -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Netmask "MyNetmask" -Source "MySource" -Type "MyType"
$ProxyDeploymentConfigVlans = Initialize-ProxyDeploymentConfigVlans -Gateway "MyGateway" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Mtu 0 -Netmask "MyNetmask" -Routes $ProxyDeploymentConfigRoutes -VlanId 0

$VProxyDeploymentNetworkConfig = Initialize-VProxyDeploymentNetworkConfig -Fqdn "MyFqdn" -Gateway "MyGateway" -IPProtocol "IPv4" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -MacAddress "MyMacAddress" -MultiVlanEnabled $false -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref" -SubnetUuid "MySubnetUuid" -Vlans $ProxyDeploymentConfigVlans

$VmDeploymentLocation = Initialize-VmDeploymentLocation -ClusterMoref "MyClusterMoref" -DatastoreMoref "MyDatastoreMoref" -FolderMoref "MyFolderMoref" -HostMoref "MyHostMoref" -NetworkMoref "MyNetworkMoref" -ResourcePoolMoref "MyResourcePoolMoref"
$PrismVmDeploymentLocation = Initialize-PrismVmDeploymentLocation -ClusterUuid "MyClusterUuid" -HostUuid "MyHostUuid" -StorageContainerUuid "MyStorageContainerUuid"
$ProxyDeploymentConfig = Initialize-ProxyDeploymentConfig -AdditionalVMNetworks $VProxyDeploymentNetworkConfig -DiskProvisioning "thin" -Dns "MyDns" -Fqdn "MyFqdn" -Gateway "MyGateway" -IPProtocol "IPv4" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Location $VmDeploymentLocation -MacAddress "MyMacAddress" -MultiVlanEnabled $false -NTPServer "MyNTPServer" -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref" -NodeSize "SMALL" -OvaFile "MyOvaFile" -PrismLocation $PrismVmDeploymentLocation -RootCredential $VProxyCredential -SubnetUuid "MySubnetUuid" -Timezone "MyTimezone" -VMName "MyVMName" -Vlans $ProxyDeploymentConfigVlans

"VM"
$CommonVimServer = Initialize-CommonVimServer -EncryptedUserPassword $false -HostName "MyHostName" -HypervisorMode "vSphere" -TcpPort 0 -ThumbPrint "MyThumbPrint" -UserName "MyUserName" -UserPassword "MyUserPassword"
$VProxyVimServerRef = Initialize-VProxyVimServerRef -ObjectId "MyObjectId" -Type "ObjectId" -Vcenter $CommonVimServer

$VProxyConfig = Initialize-VProxyConfig -AdvancedOptions $ProxySessionOverride -ApplicationData  -AutoUpdateConfig $false -Credential $VProxyCredential -DeliveryType "VirtualAppliance" -DeployProxy $false -Disabled $false -DiscoverHostStorageAdaptersInterval 0 -HealthCheckInterval 0 -HostName "MyHostName" -InstanceUuid "MyInstanceUuid" -MORef "MyMORef" -Operation "configure" -Platform "VIM" -Port 0 -PrismServerRef $VProxyPrismServerRef -ProxyDeploymentConfig $ProxyDeploymentConfig -ProxyType "Embedded" -SkipRegistration $false -SupportedProtectionTypes 

$ConfigurableTransportSessions = Initialize-ConfigurableTransportSessions -Mode "HotaddPreferred" -UseSsl $false -UserDefined $false
$ProxySessionOverride = Initialize-ProxySessionOverride -CapacityPercentage 0 -ControlPercentage 0 -Datastores "MyDatastores" -TransportSessions $ConfigurableTransportSessions

$VProxyCredential = Initialize-VProxyCredential -ObjectId "MyObjectId" -Password "MyPassword" -Type "ObjectId" -UserName "MyUserName"

$CommonPrismServer = Initialize-CommonPrismServer -HostName "MyHostName" -TcpPort 0 -ThumbPrint "MyThumbPrint" -UserName "MyUserName" -UserPassword "MyUserPassword"
$VProxyPrismServerRef = Initialize-VProxyPrismServerRef -ObjectId "MyObjectId" -Prism $CommonPrismServer -Type "ObjectId"

$ProxyDeploymentConfigRoutes = Initialize-ProxyDeploymentConfigRoutes -Gateway "MyGateway" -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Netmask "MyNetmask" -Source "MySource" -Type "MyType"
$ProxyDeploymentConfigVlans = Initialize-ProxyDeploymentConfigVlans -Gateway "MyGateway" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Mtu 0 -Netmask "MyNetmask" -Routes $ProxyDeploymentConfigRoutes -VlanId 0

$VProxyDeploymentNetworkConfig = Initialize-VProxyDeploymentNetworkConfig -Fqdn "MyFqdn" -Gateway "MyGateway" -IPProtocol "IPv4" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -MacAddress "MyMacAddress" -MultiVlanEnabled $false -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref" -SubnetUuid "MySubnetUuid" -Vlans $ProxyDeploymentConfigVlans

$VmDeploymentLocation = Initialize-VmDeploymentLocation -ClusterMoref "MyClusterMoref" -DatastoreMoref "MyDatastoreMoref" -FolderMoref "MyFolderMoref" -HostMoref "MyHostMoref" -NetworkMoref "MyNetworkMoref" -ResourcePoolMoref "MyResourcePoolMoref"
$PrismVmDeploymentLocation = Initialize-PrismVmDeploymentLocation -ClusterUuid "MyClusterUuid" -HostUuid "MyHostUuid" -StorageContainerUuid "MyStorageContainerUuid"
$ProxyDeploymentConfig = Initialize-ProxyDeploymentConfig -AdditionalVMNetworks $VProxyDeploymentNetworkConfig -DiskProvisioning "thin" -Dns "MyDns" -Fqdn "MyFqdn" -Gateway "MyGateway" -IPProtocol "IPv4" -InterfaceName "MyInterfaceName" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -IpV6AutoAssign $false -IpV6Gateway "MyIpV6Gateway" -IpV6PrefixLen 0 -Location $VmDeploymentLocation -MacAddress "MyMacAddress" -MultiVlanEnabled $false -NTPServer "MyNTPServer" -NetMask "MyNetMask" -NetworkMoref "MyNetworkMoref" -NodeSize "SMALL" -OvaFile "MyOvaFile" -PrismLocation $PrismVmDeploymentLocation -RootCredential $VProxyCredential -SubnetUuid "MySubnetUuid" -Timezone "MyTimezone" -VMName "MyVMName" -Vlans $ProxyDeploymentConfigVlans

"VM" -UpdateCredentials $false -VimServerRef $VProxyVimServerRef

$ReservedBy = Initialize-ReservedBy -InterruptedSessionId "MyInterruptedSessionId" -InterruptedSessionType "MyInterruptedSessionType" -SessionId "MySessionId" -SessionType "MySessionType"
$AllottedModes = Initialize-AllottedModes -CapacityUnits 0 -ControlUnits 0 -ReservedBy $ReservedBy -TotalControlSessions 0 -TotalTransportSessions 0

$ArchivalSessionRef = Initialize-ArchivalSessionRef -CapacityUnits 0
$BvSessionRef = Initialize-BvSessionRef -CapacityUnits 0 -ControlUnits 0

$ConfigPropertyChangeRef = Initialize-ConfigPropertyChangeRef -Index 0 -NewValue "MyNewValue" -OldValue "MyOldValue" -Operation "MyOperation" -Type "Datastore"
$VProxyStatusConfigChange = Initialize-VProxyStatusConfigChange -PropertyChanges $ConfigPropertyChangeRef -UpdatedTime (Get-Date)

$VProxyDaemonStatus = Initialize-VProxyDaemonStatus -DaemonName "MyDaemonName" -Resources "MyResources" -Status "MyStatus"
$HostStorageAdapter = Initialize-HostStorageAdapter -Identifiers "MyIdentifiers" -Type "FC"
$VimObjectRef = Initialize-VimObjectRef -MOref "MyMOref" -Type "MyType"
$LastOperation = Initialize-LastOperation -Detail "MyDetail" -Operation "configure" -Status "Pending"
$TransportSessionRef = Initialize-TransportSessionRef -CapacityUnits 0 -ControlUnits 0 -Mode "HotaddPreferred" -UseSsl $false
$NasSessionRef = Initialize-NasSessionRef -CapacityUnits 0

$CommonDnsConfig = Initialize-CommonDnsConfig -DhcpEnabled $false -DomainName "MyDomainName" -HostName "MyHostName" -SearchDomains "MySearchDomains" -Servers "MyServers"
$CommonIpConfig = Initialize-CommonIpConfig -Address "MyAddress" -IpCidr "MyIpCidr" -NetMask "MyNetMask" -PrefixLength 0 -SubnetCidr "MySubnetCidr" -Version "IPv4"
$VProxyNetworkConfig = Initialize-VProxyNetworkConfig -Connected $false -DeviceLabel "MyDeviceLabel" -Dns $CommonDnsConfig -GatewayV4 "MyGatewayV4" -GatewayV6 "MyGatewayV6" -IpAddrV4 $CommonIpConfig -IpAddrV6 $CommonIpConfig -MAC "MyMAC" -VirtualDeviceId 0 -VirtualNetworkName "MyVirtualNetworkName"

$ProxyStatus = Initialize-ProxyStatus -Detail "MyDetail" -Status "Deploying"
$VProxyVlanStatus = Initialize-VProxyVlanStatus -Detail "MyDetail" -IpAddress "MyIpAddress" -IpV6Address "MyIpV6Address" -Status "CONNECTED" -VlanId 0
$VProxyStatus = Initialize-VProxyStatus -Aliases "MyAliases" -AllottedArchivalSessions $AllottedModes -AllottedBvSessions $AllottedModes -AllottedModes $AllottedModes -AllottedNasSessions $AllottedModes -ArchivalSessionsAvailable $ArchivalSessionRef -BvSessionsAvailable $BvSessionRef -Certificate "MyCertificate" -ConfigChange $VProxyStatusConfigChange -DaemonStatus $VProxyDaemonStatus -DatacenterMoref "MyDatacenterMoref" -Datastores "MyDatastores" -DeployedTime "MyDeployedTime" -HostStorageAdapter $HostStorageAdapter -HostedComputeRes $VimObjectRef -LastCheckedTime "MyLastCheckedTime" -LastOperation $LastOperation -ModesAvailable $TransportSessionRef -NasSessionsAvailable $NasSessionRef -Networks $VProxyNetworkConfig -PowerState "On" -ProxyDeployed $false -ProxyRegistered $false -ProxyState "READY" -ProxyStatus $ProxyStatus -RegisteredTime "MyRegisteredTime" -Thumbprint "MyThumbprint" -Uuid "MyUuid" -Version "MyVersion" -VlanStatus $VProxyVlanStatus

$VPEProxy = Initialize-VPEProxy -Config $VProxyConfig -Id "MyId" -Status $VProxyStatus -Updatable $false -UpdateStatus "INSTALLED" # VPEProxy | 

# Update a protection engine proxy configuration
try {
    $Result = Update-ProtectionEngineProxy -Id $Id -ProxyId $ProxyId -VPEProxy $VPEProxy
} catch {
    Write-Host ("Exception occurred when calling Update-ProtectionEngineProxy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the protection engine. | 
 **ProxyId** | **String**| The proxy ID of the proxy to be updated. | 
 **VPEProxy** | [**VPEProxy**](VPEProxy.md)|  | 

### Return type

[**VPEProxy**](VPEProxy.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-UpgradeProxies"></a>
# **Invoke-UpgradeProxies**
> ProxyUpgradeResponse Invoke-UpgradeProxies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProxyUpgradeRequest] <PSCustomObject><br>

Upgrade proxies of the selected vCenters

Upgrades proxies of vCenters. Passing query parameters that are not documented on this page will result in a 400 error when strict REST API validation is enabled. Additional information can be found in the Getting started - Strict REST API validation documentation. > This endpoint supports execution by the following roles: Administrator 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | The ID of the protection engine.
"VM"$ProxyUpgradeRequest = Initialize-ProxyUpgradeRequest -InventorySourceIds "MyInventorySourceIds" -PrecheckOnly $false -ProtectionType "VM" -ProtectionTypes "VM" # ProxyUpgradeRequest | 

# Upgrade proxies of the selected vCenters
try {
    $Result = Invoke-UpgradeProxies -Id $Id -ProxyUpgradeRequest $ProxyUpgradeRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-UpgradeProxies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the protection engine. | 
 **ProxyUpgradeRequest** | [**ProxyUpgradeRequest**](ProxyUpgradeRequest.md)|  | 

### Return type

[**ProxyUpgradeResponse**](ProxyUpgradeResponse.md) (PSCustomObject)

### Authorization

[BearerAuth1](../README.md#BearerAuth1)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

