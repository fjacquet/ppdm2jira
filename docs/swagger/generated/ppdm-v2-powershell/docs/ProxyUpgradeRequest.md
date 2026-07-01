# ProxyUpgradeRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InventorySourceIds** | **String[]** | List of vCenter Id of the proxies to upgrade. | 
**PrecheckOnly** | **Boolean** | Indicator to perform only the pre check without updating the proxies. | [optional] 
**ProtectionType** | **String** |  | [optional] 
**ProtectionTypes** | **String[]** | List of proxy protection type which needs an upgrade. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProxyUpgradeRequest = Initialize-PpdmApiReferenceProxyUpgradeRequest  -InventorySourceIds null `
 -PrecheckOnly null `
 -ProtectionType null `
 -ProtectionTypes null
```

- Convert the resource to JSON
```powershell
$ProxyUpgradeRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

