# VProxyDaemonStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DaemonName** | **String** |  | [optional] 
**Resources** | **String[]** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VProxyDaemonStatus = Initialize-PpdmApiReferenceVProxyDaemonStatus  -DaemonName null `
 -Resources null `
 -Status null
```

- Convert the resource to JSON
```powershell
$VProxyDaemonStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

