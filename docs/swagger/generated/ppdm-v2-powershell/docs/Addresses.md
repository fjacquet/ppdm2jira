# Addresses
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ipv4** | **String[]** |  | [optional] 
**Ipv6** | **String[]** |  | [optional] 
**Wwpn** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Addresses = Initialize-PpdmApiReferenceAddresses  -Ipv4 null `
 -Ipv6 null `
 -Wwpn null
```

- Convert the resource to JSON
```powershell
$Addresses | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

