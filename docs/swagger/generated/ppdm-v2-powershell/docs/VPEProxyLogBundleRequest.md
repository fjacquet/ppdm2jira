# VPEProxyLogBundleRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdleTimeout** | **Int64** |  | [optional] 
**LogBundleRange** | [**LogBundleRange**](LogBundleRange.md) |  | [optional] 
**LogDirectory** | **String** |  | [optional] 
**SupportedProtectionTypes** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VPEProxyLogBundleRequest = Initialize-PpdmApiReferenceVPEProxyLogBundleRequest  -IdleTimeout null `
 -LogBundleRange null `
 -LogDirectory null `
 -SupportedProtectionTypes null
```

- Convert the resource to JSON
```powershell
$VPEProxyLogBundleRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

