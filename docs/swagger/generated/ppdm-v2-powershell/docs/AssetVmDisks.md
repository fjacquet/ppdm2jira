# AssetVmDisks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackingType** | **String** | The backing type. | [optional] 
**BusNumber** | **Int32** | The bus number. | [optional] 
**ControllerKey** | **Int32** | The controller key. | [optional] 
**DatastoreMoref** | **String** | The moref of the data store on which the disk&#39;s VMDK file is stored. | [optional] 
**DatastoreType** | **String** | The datastore type. | [optional] 
**EagerlyScrub** | **Boolean** | Indicates that all the bytes of the disk were set to zero when provisioned. | [optional] 
**Excluded** | **Boolean** |  | [optional] 
**Key** | **Int32** |  | [optional] 
**Label** | **String** | The label name of the virtual disk. | [optional] 
**LwdEnabled** | **Boolean** | lwd enabled. | [optional] 
**Mode** | **String** | The mode. | [optional] 
**Name** | **String** | The virtual disk name of the virtual machine. | [optional] 
**ScsiControllerSharingMode** | **String** | SCSI controller sharing mode. | [optional] 
**Sharing** | **String** | Sharing. | [optional] 
**SizeInBytes** | **Int64** | The total size in bytes of the virtual disk of the virtual machine. | [optional] 
**ThinProvisioned** | **Boolean** | Indicates if a disk is thin provisioned. | [optional] 
**Type** | **String** | type | [optional] 
**UnitNumber** | **Int32** | The unit number. | [optional] 
**UsedBytes** | **Decimal** | Indicates the amount of space, in bytes, that is in use on the disk of a Virtual Machine (VM) on a thin-provisioned disk. On a thick provisioned disk this will be the maximum size of the disk. | [optional] 
**VFlashCacheEnabled** | **Boolean** | vFlash cache enabled. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetVmDisks = Initialize-PpdmApiReferenceAssetVmDisks  -BackingType null `
 -BusNumber null `
 -ControllerKey null `
 -DatastoreMoref null `
 -DatastoreType null `
 -EagerlyScrub null `
 -Excluded null `
 -Key null `
 -Label null `
 -LwdEnabled null `
 -Mode null `
 -Name null `
 -ScsiControllerSharingMode null `
 -Sharing null `
 -SizeInBytes null `
 -ThinProvisioned null `
 -Type null `
 -UnitNumber null `
 -UsedBytes null `
 -VFlashCacheEnabled null
```

- Convert the resource to JSON
```powershell
$AssetVmDisks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

