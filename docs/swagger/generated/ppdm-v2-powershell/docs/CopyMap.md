# CopyMap
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetType** | **String** | The type of an asset. | [optional] 
**Details** | [**AssetDetails**](AssetDetails.md) |  | [optional] 
**Id** | **String** | ID of the corresponding asset. | [optional] 
**Name** | **String** | Asset name. | [optional] 
**NodeId** | **String** | ID of the corresponding asset. | [optional] 
**StorageLocations** | [**StorageLocation[]**](StorageLocation.md) |  | [optional] 
**StorageSystemName** | **String** | Name of storage system. | [optional] 
**TotalCopyCount** | **String** | Total copy count. Including the copies where the state is marked with DELETE prefix. | [optional] 
**TotalSizeBytes** | **String** | Total size bytes. Including the copies where the state is marked with DELETE prefix. | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyMap = Initialize-PpdmApiReferenceCopyMap  -AssetType null `
 -Details null `
 -Id null `
 -Name null `
 -NodeId null `
 -StorageLocations null `
 -StorageSystemName null `
 -TotalCopyCount null `
 -TotalSizeBytes null
```

- Convert the resource to JSON
```powershell
$CopyMap | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

