# SearchClusterLogBundle
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Config** | [**SearchClusterLogBundleConfig**](SearchClusterLogBundleConfig.md) |  | 
**Id** | **String** | ID. | [optional] 
**Status** | [**SearchClusterLogBundleStatus**](SearchClusterLogBundleStatus.md) |  | 

## Examples

- Prepare the resource
```powershell
$SearchClusterLogBundle = Initialize-PpdmApiReferenceSearchClusterLogBundle  -Config null `
 -Id null `
 -Status null
```

- Convert the resource to JSON
```powershell
$SearchClusterLogBundle | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

