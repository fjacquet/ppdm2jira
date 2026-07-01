# ProxyLogBundleStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**ResourceStatusError**](ResourceStatusError.md) |  | [optional] 
**FilesCollected** | **Int32** |  | [optional] 
**LogBundle** | **String** |  | [optional] 
**ProxySessionId** | **String** |  | [optional] 
**State** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProxyLogBundleStatus = Initialize-PpdmApiReferenceProxyLogBundleStatus  -VarError null `
 -FilesCollected null `
 -LogBundle null `
 -ProxySessionId null `
 -State null
```

- Convert the resource to JSON
```powershell
$ProxyLogBundleStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

