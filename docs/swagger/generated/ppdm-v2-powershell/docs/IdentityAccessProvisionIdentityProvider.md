# IdentityAccessProvisionIdentityProvider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locator** | **String** |  | 
**Selector** | **String** | Identity Provider service selector. | [optional] 
**ServiceMarker** | **String** | Identity Provider service marker. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAccessProvisionIdentityProvider = Initialize-PpdmApiReferenceIdentityAccessProvisionIdentityProvider  -Locator null `
 -Selector null `
 -ServiceMarker null
```

- Convert the resource to JSON
```powershell
$IdentityAccessProvisionIdentityProvider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

