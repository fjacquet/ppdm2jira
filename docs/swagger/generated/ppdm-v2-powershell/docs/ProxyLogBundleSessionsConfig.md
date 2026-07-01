# ProxyLogBundleSessionsConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AcceptedLanguage** | **String** |  | [optional] 
**ClientSessionData** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**IdleTimeout** | **Int64** |  | [optional] 
**LogBundleRange** | [**LogBundleRange**](LogBundleRange.md) |  | [optional] 
**LogDetail** | **String** |  | [optional] 
**LogLevel** | **String** |  | [optional] 
**LogTag** | **String** |  | [optional] 
**NoCancelOnTimeout** | **Boolean** |  | [optional] 
**ProxySpec** | [**ProxyLogBundleSpec[]**](ProxyLogBundleSpec.md) |  | [optional] 
**SessionId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProxyLogBundleSessionsConfig = Initialize-PpdmApiReferenceProxyLogBundleSessionsConfig  -AcceptedLanguage null `
 -ClientSessionData null `
 -IdleTimeout null `
 -LogBundleRange null `
 -LogDetail null `
 -LogLevel null `
 -LogTag null `
 -NoCancelOnTimeout null `
 -ProxySpec null `
 -SessionId null
```

- Convert the resource to JSON
```powershell
$ProxyLogBundleSessionsConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

