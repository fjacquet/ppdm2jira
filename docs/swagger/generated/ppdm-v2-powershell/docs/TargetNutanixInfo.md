# TargetNutanixInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetName** | **String** | The name of the restored asset (for example, the name of the new asset after a restore to alternate). | [optional] 
**ClusterId** | **String** | The Nutanix cluster UUID. | [optional] 
**DatastoreId** | **String** | The ID of the data store that the copy restored to. This is only required if the disks parameter is not provided, in which case this value is ignored. | [optional] 
**Disks** | [**NutanixDisks[]**](NutanixDisks.md) | An optional list of disks that should be restored and how or where to restore them. If not provided, then all disks will be restored based on the information in the copy and the provided data storage. | [optional] 
**FlrSessionId** | **String** | The unique ID for the file-level restore (FLR) session that was created to browse the mounted backup copy. | [optional] 
**InventorySourceId** | **String** | The UUID of the Prism Central Inventory Source to restore the VM into. Optional for Restore to Original. | [optional] 
**Networks** | [**NutanixNetworks[]**](NutanixNetworks.md) | An optional list of NICs that exist in the backup that should be restored and mapped to networks. This allows NICs to be re-mapped to different networks at the time of restore. | [optional] 
**Sources** | **String[]** | List of file and directory paths to be restored. | [optional] 
**TargetAssetId** | **String** | The target asset ID. | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetNutanixInfo = Initialize-PpdmApiReferenceTargetNutanixInfo  -AssetName null `
 -ClusterId null `
 -DatastoreId null `
 -Disks null `
 -FlrSessionId null `
 -InventorySourceId null `
 -Networks null `
 -Sources null `
 -TargetAssetId null
```

- Convert the resource to JSON
```powershell
$TargetNutanixInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

