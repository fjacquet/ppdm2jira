# CopySqlDdbeaMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationsOfInterest** | [**SingleApplicationOfInterest[]**](SingleApplicationOfInterest.md) |  | [optional] 
**CopyOnly** | **Boolean** |  | [optional] 
**DdHostname** | **String** |  | [optional] 
**DependentSequenceNumbers** | **String[]** |  | [optional] 
**MfrExtendedAttribute** | [**CopySqlDdbeaMetadataMfrExtendedAttribute**](CopySqlDdbeaMetadataMfrExtendedAttribute.md) |  | [optional] 
**Namespace** | **String** |  | [optional] 
**SequenceNumber** | **String** |  | [optional] 
**StorageUnit** | **String** |  | [optional] 
**Subspace** | **String** |  | [optional] 
**TransactionId** | **String** |  | [optional] 
**User** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopySqlDdbeaMetadata = Initialize-PpdmApiReferenceCopySqlDdbeaMetadata  -ApplicationsOfInterest null `
 -CopyOnly null `
 -DdHostname null `
 -DependentSequenceNumbers null `
 -MfrExtendedAttribute null `
 -Namespace null `
 -SequenceNumber null `
 -StorageUnit null `
 -Subspace null `
 -TransactionId null `
 -User null
```

- Convert the resource to JSON
```powershell
$CopySqlDdbeaMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

