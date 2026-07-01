# AssetDdOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisableDdboostWriteCompression** | **Boolean** | Disable the DDBoost compression during write operations. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetDdOptions = Initialize-PpdmApiReferenceAssetDdOptions  -DisableDdboostWriteCompression null
```

- Convert the resource to JSON
```powershell
$AssetDdOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

