# ExportedTargetVmInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrowseSessionId** | **String** |  | [optional] 
**JobId** | **String** |  | [optional] 
**MountSessionId** | **String** |  | [optional] 
**RestoredCopyId** | **String** | The restored copy ID for current exported copy. | [optional] 
**TargetAssetId** | **String** |  | [optional] 
**TargetVmName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportedTargetVmInfo = Initialize-PpdmApiReferenceExportedTargetVmInfo  -BrowseSessionId null `
 -JobId null `
 -MountSessionId null `
 -RestoredCopyId null `
 -TargetAssetId null `
 -TargetVmName null
```

- Convert the resource to JSON
```powershell
$ExportedTargetVmInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

