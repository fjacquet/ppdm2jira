# VPEProxyLogBundles
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**VPEProxyLogBundle[]**](VPEProxyLogBundle.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VPEProxyLogBundles = Initialize-PpdmApiReferenceVPEProxyLogBundles  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$VPEProxyLogBundles | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

