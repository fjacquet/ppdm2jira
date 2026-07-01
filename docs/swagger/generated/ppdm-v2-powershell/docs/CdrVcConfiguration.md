# CdrVcConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DataStores** | [**CdrVcInventoryDataStores[]**](CdrVcInventoryDataStores.md) |  | [optional] 
**FailoverTarget** | **Boolean** |  | [optional] 
**Id** | **String** | Id of the Vcenter Server. | [optional] 
**Networks** | [**CdrVcConfigurationNetworks[]**](CdrVcConfigurationNetworks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CdrVcConfiguration = Initialize-PpdmApiReferenceCdrVcConfiguration  -DataStores null `
 -FailoverTarget null `
 -Id null `
 -Networks null
```

- Convert the resource to JSON
```powershell
$CdrVcConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

