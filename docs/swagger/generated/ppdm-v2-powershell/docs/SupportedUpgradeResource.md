# SupportedUpgradeResource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FromVersion** | **String** | fromVersion | 
**InventorySourceIds** | **String[]** | List of vCenter Id of the proxies for precheck. | [optional] 
**ManualUpdate** | **Boolean** | True for manual upgrade. | [optional] 
**Messages** | [**PreCheckMessage[]**](PreCheckMessage.md) | messages | [optional] 
**MinimumProxyVersion** | **String** | minimumProxyVersion | 
**MinimumSkippableVersion** | **String** | The minimum version that can be skipped. | 
**ProtectionType** | **String** |  | 
**Skippable** | **Boolean** |  | [optional] 
**ToVersion** | **String** | toVersion | 
**UpgradeType** | **String** | upgradeType | [optional] 

## Examples

- Prepare the resource
```powershell
$SupportedUpgradeResource = Initialize-PpdmApiReferenceSupportedUpgradeResource  -FromVersion null `
 -InventorySourceIds null `
 -ManualUpdate null `
 -Messages null `
 -MinimumProxyVersion null `
 -MinimumSkippableVersion null `
 -ProtectionType null `
 -Skippable null `
 -ToVersion null `
 -UpgradeType null
```

- Convert the resource to JSON
```powershell
$SupportedUpgradeResource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

