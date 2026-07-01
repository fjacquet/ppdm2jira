# ProxyStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Detail** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProxyStatus = Initialize-PpdmApiReferenceProxyStatus  -Detail null `
 -Status null
```

- Convert the resource to JSON
```powershell
$ProxyStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

