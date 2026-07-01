# CdrVcInventoryDataStores
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvailableNetworks** | [**CdrVcConfigurationMoref[]**](CdrVcConfigurationMoref.md) |  | [optional] 
**Moref** | [**CdrVcConfigurationMoref**](CdrVcConfigurationMoref.md) |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrVcInventoryDataStores = Initialize-PpdmApiReferenceCdrVcInventoryDataStores  -AvailableNetworks null `
 -Moref null `
 -Name null
```

- Convert the resource to JSON
```powershell
$CdrVcInventoryDataStores | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

