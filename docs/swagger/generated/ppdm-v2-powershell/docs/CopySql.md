# CopySql
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupUuid** | **String** |  | [optional] 
**DdbeaMetadata** | [**CopySqlDdbeaMetadata**](CopySqlDdbeaMetadata.md) |  | [optional] 
**ParentVmPcsId** | **String** |  | [optional] 
**ProtectionEngineFlow** | **String** |  | [optional] 
**SnapshotMetadata** | [**CopySqlSnapshotMetadata[]**](CopySqlSnapshotMetadata.md) |  | [optional] 
**SoftDelete** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopySql = Initialize-PpdmApiReferenceCopySql  -BackupUuid null `
 -DdbeaMetadata null `
 -ParentVmPcsId null `
 -ProtectionEngineFlow null `
 -SnapshotMetadata null `
 -SoftDelete null
```

- Convert the resource to JSON
```powershell
$CopySql | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

