# VProxyStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Aliases** | **String[]** |  | [optional] 
**AllottedArchivalSessions** | [**AllottedModes[]**](AllottedModes.md) |  | [optional] 
**AllottedBvSessions** | [**AllottedModes[]**](AllottedModes.md) |  | [optional] 
**AllottedModes** | [**AllottedModes[]**](AllottedModes.md) |  | [optional] 
**AllottedNasSessions** | [**AllottedModes[]**](AllottedModes.md) |  | [optional] 
**ArchivalSessionsAvailable** | [**ArchivalSessionRef**](ArchivalSessionRef.md) |  | [optional] 
**BvSessionsAvailable** | [**BvSessionRef**](BvSessionRef.md) |  | [optional] 
**Certificate** | **String** |  | [optional] 
**ConfigChange** | [**VProxyStatusConfigChange**](VProxyStatusConfigChange.md) |  | [optional] 
**DaemonStatus** | [**VProxyDaemonStatus[]**](VProxyDaemonStatus.md) |  | [optional] 
**DatacenterMoref** | **String** |  | [optional] 
**Datastores** | **String[]** |  | [optional] 
**DeployedTime** | **String** |  | [optional] 
**HostStorageAdapter** | [**HostStorageAdapter[]**](HostStorageAdapter.md) |  | [optional] 
**HostedComputeRes** | [**VimObjectRef**](VimObjectRef.md) |  | [optional] 
**LastCheckedTime** | **String** |  | [optional] 
**LastOperation** | [**LastOperation**](LastOperation.md) |  | [optional] 
**ModesAvailable** | [**TransportSessionRef**](TransportSessionRef.md) |  | [optional] 
**NasSessionsAvailable** | [**NasSessionRef**](NasSessionRef.md) |  | [optional] 
**Networks** | [**VProxyNetworkConfig[]**](VProxyNetworkConfig.md) |  | [optional] 
**PowerState** | **String** |  | [optional] 
**ProxyDeployed** | **Boolean** |  | [optional] 
**ProxyRegistered** | **Boolean** |  | [optional] 
**ProxyState** | **String** |  | [optional] 
**ProxyStatus** | [**ProxyStatus**](ProxyStatus.md) |  | [optional] 
**RegisteredTime** | **String** |  | [optional] 
**Thumbprint** | **String** |  | [optional] 
**Uuid** | **String** |  | [optional] 
**Version** | **String** |  | [optional] 
**VlanStatus** | [**VProxyVlanStatus[]**](VProxyVlanStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VProxyStatus = Initialize-PpdmApiReferenceVProxyStatus  -Aliases null `
 -AllottedArchivalSessions null `
 -AllottedBvSessions null `
 -AllottedModes null `
 -AllottedNasSessions null `
 -ArchivalSessionsAvailable null `
 -BvSessionsAvailable null `
 -Certificate null `
 -ConfigChange null `
 -DaemonStatus null `
 -DatacenterMoref null `
 -Datastores null `
 -DeployedTime null `
 -HostStorageAdapter null `
 -HostedComputeRes null `
 -LastCheckedTime null `
 -LastOperation null `
 -ModesAvailable null `
 -NasSessionsAvailable null `
 -Networks null `
 -PowerState null `
 -ProxyDeployed null `
 -ProxyRegistered null `
 -ProxyState null `
 -ProxyStatus null `
 -RegisteredTime null `
 -Thumbprint null `
 -Uuid null `
 -Version null `
 -VlanStatus null
```

- Convert the resource to JSON
```powershell
$VProxyStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

