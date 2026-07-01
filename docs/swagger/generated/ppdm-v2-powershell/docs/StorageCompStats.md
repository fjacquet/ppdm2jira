# StorageCompStats
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CumulativeSizeInBytes** | **Int64** | Cumulative file size. | [optional] 
**DedupedPreCompSizeInBytes** | **Int64** | Size after removing duplication and before local compression. | [optional] 
**RedundantSegmentsCount** | **Int64** | Redundant segments (already existing on protection storage) in file. | [optional] 
**SegmentsCount** | **Int64** | Total segments in file. | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageCompStats = Initialize-PpdmApiReferenceStorageCompStats  -CumulativeSizeInBytes null `
 -DedupedPreCompSizeInBytes null `
 -RedundantSegmentsCount null `
 -SegmentsCount null
```

- Convert the resource to JSON
```powershell
$StorageCompStats | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

