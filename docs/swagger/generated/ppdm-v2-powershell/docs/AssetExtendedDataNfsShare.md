# AssetExtendedDataNfsShare
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The Name of the NFS share. | [optional] 
**Version** | **String** | The NFS version. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetExtendedDataNfsShare = Initialize-PpdmApiReferenceAssetExtendedDataNfsShare  -Name null `
 -Version null
```

- Convert the resource to JSON
```powershell
$AssetExtendedDataNfsShare | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

