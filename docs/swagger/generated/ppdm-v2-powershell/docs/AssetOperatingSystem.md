# AssetOperatingSystem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the operating system. | [optional] 
**Version** | **String** | The version of the operating system. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetOperatingSystem = Initialize-PpdmApiReferenceAssetOperatingSystem  -Name null `
 -Version null
```

- Convert the resource to JSON
```powershell
$AssetOperatingSystem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

