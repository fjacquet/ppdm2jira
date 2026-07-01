# CdrVcConfigurationDataStores
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Moref** | [**CdrVcConfigurationMoref**](CdrVcConfigurationMoref.md) |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrVcConfigurationDataStores = Initialize-PpdmApiReferenceCdrVcConfigurationDataStores  -Moref null `
 -Name null
```

- Convert the resource to JSON
```powershell
$CdrVcConfigurationDataStores | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

