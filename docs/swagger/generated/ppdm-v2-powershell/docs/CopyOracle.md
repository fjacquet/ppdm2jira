# CopyOracle
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupMechanism** | **String** |  | [optional] 
**BackupObject** | **String** |  | [optional] 
**BackupPieces** | **String[]** |  | [optional] 
**CopyNumber** | **String** |  | [optional] 
**DdbeaMetadata** | [**CopyOracleDdbeaMetadata**](CopyOracleDdbeaMetadata.md) |  | [optional] 
**DependentLogNaturalIds** | [**String[][]**](Array.md) |  | [optional] 
**DependentLogs** | **String[]** |  | [optional] 
**FirstScn** | **Int64** |  | [optional] 
**FollowControlFile** | **Boolean** |  | [optional] 
**FollowSpFile** | **Boolean** |  | [optional] 
**HasControlFile** | **Boolean** |  | [optional] 
**HasSpFile** | **Boolean** |  | [optional] 
**IncarnationNumber** | **Int64** |  | [optional] 
**JobId** | **Int64** |  | [optional] 
**LastScn** | **Int64** |  | [optional] 
**RmanCatalog** | **String** |  | [optional] 
**Thread** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyOracle = Initialize-PpdmApiReferenceCopyOracle  -BackupMechanism null `
 -BackupObject null `
 -BackupPieces null `
 -CopyNumber null `
 -DdbeaMetadata null `
 -DependentLogNaturalIds null `
 -DependentLogs null `
 -FirstScn null `
 -FollowControlFile null `
 -FollowSpFile null `
 -HasControlFile null `
 -HasSpFile null `
 -IncarnationNumber null `
 -JobId null `
 -LastScn null `
 -RmanCatalog null `
 -Thread null
```

- Convert the resource to JSON
```powershell
$CopyOracle | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

