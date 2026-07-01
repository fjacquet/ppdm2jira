# ExportedTargetStorageProxyVolumeDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Wwn** | **String** | World wide name of the proxy volume from PST. | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportedTargetStorageProxyVolumeDetails = Initialize-PpdmApiReferenceExportedTargetStorageProxyVolumeDetails  -Wwn null
```

- Convert the resource to JSON
```powershell
$ExportedTargetStorageProxyVolumeDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

