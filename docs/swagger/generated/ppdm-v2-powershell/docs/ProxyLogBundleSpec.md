# ProxyLogBundleSpec
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LogBundlePath** | **String** |  | [optional] 
**ProxySessionId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProxyLogBundleSpec = Initialize-PpdmApiReferenceProxyLogBundleSpec  -LogBundlePath null `
 -ProxySessionId null
```

- Convert the resource to JSON
```powershell
$ProxyLogBundleSpec | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

