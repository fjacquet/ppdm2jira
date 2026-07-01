# VProxyVlanStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Detail** | **String** |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**IpV6Address** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**VlanId** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VProxyVlanStatus = Initialize-PpdmApiReferenceVProxyVlanStatus  -Detail null `
 -IpAddress null `
 -IpV6Address null `
 -Status null `
 -VlanId null
```

- Convert the resource to JSON
```powershell
$VProxyVlanStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

