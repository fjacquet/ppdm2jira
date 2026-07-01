# VProxyConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdvancedOptions** | [**ProxySessionOverride**](ProxySessionOverride.md) |  | [optional] 
**ApplicationData** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**AutoUpdateConfig** | **Boolean** |  | [optional] 
**Credential** | [**VProxyCredential**](VProxyCredential.md) |  | [optional] 
**DeliveryType** | **String** |  | [optional] 
**DeployProxy** | **Boolean** |  | [optional] 
**Disabled** | **Boolean** |  | [optional] 
**DiscoverHostStorageAdaptersInterval** | **Int64** |  | [optional] 
**HealthCheckInterval** | **Int32** |  | [optional] 
**HostName** | **String** |  | [optional] 
**InstanceUuid** | **String** |  | [optional] 
**MORef** | **String** |  | [optional] 
**Operation** | **String** |  | [optional] 
**Platform** | **String** |  | [optional] 
**Port** | **Int32** |  | [optional] 
**PrismServerRef** | [**VProxyPrismServerRef**](VProxyPrismServerRef.md) |  | [optional] 
**ProxyDeploymentConfig** | [**ProxyDeploymentConfig**](ProxyDeploymentConfig.md) |  | [optional] 
**ProxyType** | **String** |  | [optional] 
**SkipRegistration** | **Boolean** |  | [optional] 
**SupportedProtectionTypes** | **String[]** |  | [optional] 
**UpdateCredentials** | **Boolean** |  | [optional] 
**VimServerRef** | [**VProxyVimServerRef**](VProxyVimServerRef.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VProxyConfig = Initialize-PpdmApiReferenceVProxyConfig  -AdvancedOptions null `
 -ApplicationData null `
 -AutoUpdateConfig null `
 -Credential null `
 -DeliveryType null `
 -DeployProxy null `
 -Disabled null `
 -DiscoverHostStorageAdaptersInterval null `
 -HealthCheckInterval null `
 -HostName null `
 -InstanceUuid null `
 -MORef null `
 -Operation null `
 -Platform null `
 -Port null `
 -PrismServerRef null `
 -ProxyDeploymentConfig null `
 -ProxyType null `
 -SkipRegistration null `
 -SupportedProtectionTypes null `
 -UpdateCredentials null `
 -VimServerRef null
```

- Convert the resource to JSON
```powershell
$VProxyConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

