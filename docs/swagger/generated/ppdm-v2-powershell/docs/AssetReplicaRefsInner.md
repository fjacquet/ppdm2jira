# AssetReplicaRefsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the replicated asset. | [optional] 
**InventorySourceRef** | [**AssetInventorySourceRef**](AssetInventorySourceRef.md) |  | [optional] 
**Mode** | **String** | Mode of replication. | [optional] 
**Name** | **String** | Name of the replicated asset. | [optional] 
**Status** | **String** | Status of replication. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetReplicaRefsInner = Initialize-PpdmApiReferenceAssetReplicaRefsInner  -Id null `
 -InventorySourceRef null `
 -Mode null `
 -Name null `
 -Status null
```

- Convert the resource to JSON
```powershell
$AssetReplicaRefsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

