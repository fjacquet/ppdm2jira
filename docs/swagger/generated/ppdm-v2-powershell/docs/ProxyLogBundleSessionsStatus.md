# ProxyLogBundleSessionsStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationData** | **String** |  | [optional] 
**ApplicationVersion** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**EndTime** | **String** |  | [optional] 
**VarError** | [**ResourceStatusError**](ResourceStatusError.md) |  | [optional] 
**Progress** | **Int64** |  | [optional] 
**ProxyLogBundleStatus** | [**ProxyLogBundleStatus[]**](ProxyLogBundleStatus.md) |  | [optional] 
**StartTime** | **String** |  | [optional] 
**State** | **String** |  | [optional] 
**Warnings** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProxyLogBundleSessionsStatus = Initialize-PpdmApiReferenceProxyLogBundleSessionsStatus  -ApplicationData null `
 -ApplicationVersion null `
 -Description null `
 -EndTime null `
 -VarError null `
 -Progress null `
 -ProxyLogBundleStatus null `
 -StartTime null `
 -State null `
 -Warnings null
```

- Convert the resource to JSON
```powershell
$ProxyLogBundleSessionsStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

