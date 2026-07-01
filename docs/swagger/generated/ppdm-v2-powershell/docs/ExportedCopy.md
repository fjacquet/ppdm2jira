# ExportedCopy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** |  | 
**CompletionTime** | **System.DateTime** |  | [optional] 
**CopyId** | **String** |  | 
**CredentialId** | **String** |  | [optional] 
**DataSourceSubType** | [**AssetSubtypeEnum**](AssetSubtypeEnum.md) |  | [optional] 
**Description** | **String** |  | 
**ExpirationTime** | **System.DateTime** |  | [optional] 
**ExportType** | **String** |  | 
**ExportedCopiesDetails** | [**ExportedCopyDetails**](ExportedCopyDetails.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**RestoredCopyId** | **String** | The restored copy ID for current exported copy. | [optional] 
**StartTime** | **System.DateTime** |  | [optional] 
**State** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**StorageSystem** | **String** |  | [optional] 
**TargetAsset** | [**ExportedCopyTargetAssetDetail**](ExportedCopyTargetAssetDetail.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportedCopy = Initialize-PpdmApiReferenceExportedCopy  -AssetId null `
 -CompletionTime null `
 -CopyId null `
 -CredentialId null `
 -DataSourceSubType null `
 -Description null `
 -ExpirationTime null `
 -ExportType null `
 -ExportedCopiesDetails null `
 -Id null `
 -RestoredCopyId null `
 -StartTime null `
 -State null `
 -Status null `
 -StorageSystem null `
 -TargetAsset null
```

- Convert the resource to JSON
```powershell
$ExportedCopy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

