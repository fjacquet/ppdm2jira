# TargetNativeEdgeInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** | The target asset ID when restoring to overwrite an existing asset (not the original asset). | [optional] 
**AssetName** | **String** | The name of the restored asset (for example, the name of the new asset after a restore to alternate). | [optional] 
**ClusterId** | **String** | The native edge cluster UUID. | [optional] 
**DatastoreId** | **String** | The ID of the data store that the copy is restored to. This parameter is required only when the disks parameter is not provided; otherwise, this value is ignored. | [optional] 
**Disks** | [**NativeEdgeDisks[]**](NativeEdgeDisks.md) | An optional list of disks that should be restored, including details on how and where to restore them. If this parameter is not provided, all disks will be restored automatically based on the information contained in the copy and the specified data storage. | [optional] 
**EndpointId** | **String** | The native edge endpoint id. | [optional] 
**InventorySourceId** | **String** | The UUID of the Prism Central Inventory Source to restore the VM into. Optional for Restore to Original. | [optional] 
**Networks** | [**NativeEdgeNetworks[]**](NativeEdgeNetworks.md) | An optional list of Network Interface Cards (NICs) from the backup that are to be restored and mapped to specific networks, enabling the re-mapping of NICs to different networks during the restore process. | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetNativeEdgeInfo = Initialize-PpdmApiReferenceTargetNativeEdgeInfo  -AssetId null `
 -AssetName null `
 -ClusterId null `
 -DatastoreId null `
 -Disks null `
 -EndpointId null `
 -InventorySourceId null `
 -Networks null
```

- Convert the resource to JSON
```powershell
$TargetNativeEdgeInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

