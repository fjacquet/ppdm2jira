# CopyOracleDdbeaMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationsOfInterest** | [**SingleApplicationOfInterest[]**](SingleApplicationOfInterest.md) |  | [optional] 
**DdHostname** | **String** |  | [optional] 
**StorageUnit** | **String** |  | [optional] 
**TransactionId** | **String** |  | [optional] 
**User** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyOracleDdbeaMetadata = Initialize-PpdmApiReferenceCopyOracleDdbeaMetadata  -ApplicationsOfInterest null `
 -DdHostname null `
 -StorageUnit null `
 -TransactionId null `
 -User null
```

- Convert the resource to JSON
```powershell
$CopyOracleDdbeaMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

