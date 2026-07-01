# PatchAssetRequestDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Database** | [**PatchAssetDatabase**](PatchAssetDatabase.md) |  | [optional] 
**GenericVm** | [**PatchAssetGenericVm**](PatchAssetGenericVm.md) |  | [optional] 
**K8s** | [**PatchAssetRequestKubernetesAttribute**](PatchAssetRequestKubernetesAttribute.md) |  | [optional] 
**NasShare** | [**PatchAssetNas**](PatchAssetNas.md) |  | [optional] 
**Vm** | [**PatchAssetRequestVmAttribute**](PatchAssetRequestVmAttribute.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchAssetRequestDetails = Initialize-PpdmApiReferencePatchAssetRequestDetails  -Database null `
 -GenericVm null `
 -K8s null `
 -NasShare null `
 -Vm null
```

- Convert the resource to JSON
```powershell
$PatchAssetRequestDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

