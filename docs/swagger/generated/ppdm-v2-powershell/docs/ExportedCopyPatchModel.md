# ExportedCopyPatchModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpirationTime** | **System.DateTime** | Expiration time of the instant access session must be set to a future time. If it is null, the session will never expire. | 

## Examples

- Prepare the resource
```powershell
$ExportedCopyPatchModel = Initialize-PpdmApiReferenceExportedCopyPatchModel  -ExpirationTime null
```

- Convert the resource to JSON
```powershell
$ExportedCopyPatchModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

