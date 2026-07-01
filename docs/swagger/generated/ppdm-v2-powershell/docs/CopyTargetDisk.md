# CopyTargetDisk
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupIndex** | **Int64** |  | [optional] 
**CapacityInBytes** | **Int64** |  | [optional] 
**Controller** | **Int64** |  | [optional] 
**ControllerType** | **String** |  | [optional] 
**DatastoreMoref** | **String** |  | [optional] 
**EagerlyScrub** | **Boolean** | Flag indicates if the disk was eagerly zeroed when provisioned. | [optional] 
**Excluded** | **Boolean** | It means if this disk is treated as backup target. | [optional] 
**Key** | **Int64** |  | [optional] 
**Label** | **String** |  | [optional] 
**ProvisioningType** | **String** |  | [optional] 
**StoragePolicyId** | **String** | The ID of vCenter storage policy assigned to this disk | [optional] 
**ThinProvisioned** | **Boolean** | Flag indicates if the disk was thin provisioned. | [optional] 
**UnitNumber** | **Int64** |  | [optional] 
**UsedBytes** | **String** | Indicates the amount of space, in bytes, that is in use on the virtual disk. | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyTargetDisk = Initialize-PpdmApiReferenceCopyTargetDisk  -BackupIndex null `
 -CapacityInBytes null `
 -Controller null `
 -ControllerType null `
 -DatastoreMoref null `
 -EagerlyScrub null `
 -Excluded null `
 -Key null `
 -Label null `
 -ProvisioningType null `
 -StoragePolicyId null `
 -ThinProvisioned null `
 -UnitNumber null `
 -UsedBytes null
```

- Convert the resource to JSON
```powershell
$CopyTargetDisk | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

