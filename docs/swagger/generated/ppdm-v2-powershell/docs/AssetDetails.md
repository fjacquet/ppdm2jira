# AssetDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cdvapp** | [**AssetVapp**](AssetVapp.md) |  | [optional] 
**Database** | [**AssetDatabase**](AssetDatabase.md) |  | [optional] 
**FileSystem** | [**AssetFileSystem**](AssetFileSystem.md) |  | [optional] 
**GenericVm** | [**AssetGenericVm**](AssetGenericVm.md) |  | [optional] 
**K8s** | [**AssetKubernetes**](AssetKubernetes.md) |  | [optional] 
**NasShare** | [**AssetNas**](AssetNas.md) |  | [optional] 
**Storage** | [**AssetStorage**](AssetStorage.md) |  | [optional] 
**Vm** | [**AssetVm**](AssetVm.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetDetails = Initialize-PpdmApiReferenceAssetDetails  -Cdvapp null `
 -Database null `
 -FileSystem null `
 -GenericVm null `
 -K8s null `
 -NasShare null `
 -Storage null `
 -Vm null
```

- Convert the resource to JSON
```powershell
$AssetDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

