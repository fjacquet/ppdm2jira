# SupportedUpgrade
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AutomaticCount** | **Int32** | No of proxies to be upgraded by the System. | [optional] 
**ManualCount** | **Int32** | No of proxies to be upgraded manually. | [optional] 
**MinimumProxyVersion** | **String** | minimumProxyVersion | 
**Skippable** | **Boolean** |  | [optional] 
**UpgradeType** | **String** | upgradeType | 

## Examples

- Prepare the resource
```powershell
$SupportedUpgrade = Initialize-PpdmApiReferenceSupportedUpgrade  -AutomaticCount null `
 -ManualCount null `
 -MinimumProxyVersion null `
 -Skippable null `
 -UpgradeType null
```

- Convert the resource to JSON
```powershell
$SupportedUpgrade | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

