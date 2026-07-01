# BatchUpdateAssetRequestBodyDetailsVm
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DataMoverType** | **String** | Set dataMover Type. | [optional] 
**DisableCbt** | **Boolean** | Enable or disable the CBT utilization for Virtual Machine (VM) backup operation. | [optional] 
**DisableQuiescing** | **Boolean** | Indicates whether to turn off the quiescing snapshot for Virtual Machine (VM) backups. | [optional] 

## Examples

- Prepare the resource
```powershell
$BatchUpdateAssetRequestBodyDetailsVm = Initialize-PpdmApiReferenceBatchUpdateAssetRequestBodyDetailsVm  -DataMoverType null `
 -DisableCbt null `
 -DisableQuiescing null
```

- Convert the resource to JSON
```powershell
$BatchUpdateAssetRequestBodyDetailsVm | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

