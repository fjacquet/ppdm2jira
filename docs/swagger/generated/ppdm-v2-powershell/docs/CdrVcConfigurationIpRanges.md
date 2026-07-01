# CdrVcConfigurationIpRanges
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BaseIp** | **String** |  | [optional] 
**Range** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrVcConfigurationIpRanges = Initialize-PpdmApiReferenceCdrVcConfigurationIpRanges  -BaseIp null `
 -Range null
```

- Convert the resource to JSON
```powershell
$CdrVcConfigurationIpRanges | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

