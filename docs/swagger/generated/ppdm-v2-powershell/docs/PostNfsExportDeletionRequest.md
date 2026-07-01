# PostNfsExportDeletionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Path** | **String** | Path of the asset from where the NFS export configuration needs to be deleted. An example of an asset path: SU/TLP/relativeNfsExportPath. | 

## Examples

- Prepare the resource
```powershell
$PostNfsExportDeletionRequest = Initialize-PpdmApiReferencePostNfsExportDeletionRequest  -Path null
```

- Convert the resource to JSON
```powershell
$PostNfsExportDeletionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

