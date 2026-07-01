# CdrVcInventoryDataCenters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DataStores** | [**CdrVcInventoryDataStores[]**](CdrVcInventoryDataStores.md) |  | [optional] 
**Moref** | [**CdrVcConfigurationMoref**](CdrVcConfigurationMoref.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**Networks** | [**CdrVcConfigurationDataStores[]**](CdrVcConfigurationDataStores.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrVcInventoryDataCenters = Initialize-PpdmApiReferenceCdrVcInventoryDataCenters  -DataStores null `
 -Moref null `
 -Name null `
 -Networks null
```

- Convert the resource to JSON
```powershell
$CdrVcInventoryDataCenters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

