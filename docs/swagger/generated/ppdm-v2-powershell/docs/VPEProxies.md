# VPEProxies
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**VPEProxy[]**](VPEProxy.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VPEProxies = Initialize-PpdmApiReferenceVPEProxies  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$VPEProxies | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

