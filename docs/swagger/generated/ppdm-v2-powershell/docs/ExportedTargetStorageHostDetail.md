# ExportedTargetStorageHostDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExternalId** | **String** | UUID of that host returned from PST. | [optional] 
**Name** | **String** | Name returned from PST. | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportedTargetStorageHostDetail = Initialize-PpdmApiReferenceExportedTargetStorageHostDetail  -ExternalId null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ExportedTargetStorageHostDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

