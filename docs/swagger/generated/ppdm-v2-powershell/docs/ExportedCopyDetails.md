# ExportedCopyDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TargetExportedStorageInfo** | [**ExportedTargetStorageInfo**](ExportedTargetStorageInfo.md) |  | [optional] 
**TargetExportedVmInfo** | [**ExportedTargetVmInfo**](ExportedTargetVmInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportedCopyDetails = Initialize-PpdmApiReferenceExportedCopyDetails  -TargetExportedStorageInfo null `
 -TargetExportedVmInfo null
```

- Convert the resource to JSON
```powershell
$ExportedCopyDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

