# VPEProxyLogBundle
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Config** | [**ProxyLogBundleSessionsConfig**](ProxyLogBundleSessionsConfig.md) |  | 
**Id** | **String** | Proxy ID. | 
**Status** | [**ProxyLogBundleSessionsStatus**](ProxyLogBundleSessionsStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VPEProxyLogBundle = Initialize-PpdmApiReferenceVPEProxyLogBundle  -Config null `
 -Id null `
 -Status null
```

- Convert the resource to JSON
```powershell
$VPEProxyLogBundle | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

