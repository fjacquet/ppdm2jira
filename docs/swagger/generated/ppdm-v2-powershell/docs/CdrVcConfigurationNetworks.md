# CdrVcConfigurationNetworks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Gateway** | **String** |  | [optional] 
**IpRanges** | [**CdrVcConfigurationIpRanges[]**](CdrVcConfigurationIpRanges.md) |  | [optional] 
**Moref** | [**CdrVcConfigurationMoref**](CdrVcConfigurationMoref.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**NetMask** | **String** |  | [optional] 
**PrimaryDns** | **String** |  | [optional] 
**SecondaryDns** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrVcConfigurationNetworks = Initialize-PpdmApiReferenceCdrVcConfigurationNetworks  -Gateway null `
 -IpRanges null `
 -Moref null `
 -Name null `
 -NetMask null `
 -PrimaryDns null `
 -SecondaryDns null
```

- Convert the resource to JSON
```powershell
$CdrVcConfigurationNetworks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

