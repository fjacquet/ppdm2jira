# RestoredVmAsset
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetRef** | **String** |  | [optional] 
**VmRef** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoredVmAsset = Initialize-PpdmApiReferenceRestoredVmAsset  -AssetRef null `
 -VmRef null
```

- Convert the resource to JSON
```powershell
$RestoredVmAsset | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

