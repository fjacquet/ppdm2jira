# AssetProtectionCapacity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Size** | **Int64** | The used size in bytes for this asset. It is the maximum size of all copies. | [optional] 
**Time** | **System.DateTime** | The time when the copy with maximum size was made. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetProtectionCapacity = Initialize-PpdmApiReferenceAssetProtectionCapacity  -Size null `
 -Time null
```

- Convert the resource to JSON
```powershell
$AssetProtectionCapacity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

