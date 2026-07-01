# CopySqlSnapshotMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConsistencyGroupId** | **String** |  | [optional] 
**RpHost** | **String** |  | [optional] 
**SnapshotName** | **String** |  | [optional] 
**SnapshotUser** | **String** |  | [optional] 
**StaticImages** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopySqlSnapshotMetadata = Initialize-PpdmApiReferenceCopySqlSnapshotMetadata  -ConsistencyGroupId null `
 -RpHost null `
 -SnapshotName null `
 -SnapshotUser null `
 -StaticImages null
```

- Convert the resource to JSON
```powershell
$CopySqlSnapshotMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

