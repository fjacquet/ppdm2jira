# SearchNodeAdditionalVMNetworksRoutes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Gateway** | **String** |  | [optional] 
**IpV6Gateway** | **String** |  | [optional] 
**IpV6PrefixLen** | **Int32** |  | [optional] 
**Netmask** | **String** |  | [optional] 
**Source** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchNodeAdditionalVMNetworksRoutes = Initialize-PpdmApiReferenceSearchNodeAdditionalVMNetworksRoutes  -Gateway null `
 -IpV6Gateway null `
 -IpV6PrefixLen null `
 -Netmask null `
 -Source null `
 -Type null
```

- Convert the resource to JSON
```powershell
$SearchNodeAdditionalVMNetworksRoutes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

