# CommonIpConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | **String** |  | [optional] 
**IpCidr** | **String** |  | [optional] 
**NetMask** | **String** |  | [optional] 
**PrefixLength** | **Int32** |  | [optional] 
**SubnetCidr** | **String** |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CommonIpConfig = Initialize-PpdmApiReferenceCommonIpConfig  -Address null `
 -IpCidr null `
 -NetMask null `
 -PrefixLength null `
 -SubnetCidr null `
 -Version null
```

- Convert the resource to JSON
```powershell
$CommonIpConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

