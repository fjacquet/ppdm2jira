# NutanixDisk
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CapacityInBytes** | **Int64** |  | [optional] 
**ControllerType** | [**DiskControllerType**](DiskControllerType.md) |  | [optional] 
**DeviceIndex** | **Int32** | The index of the device. | [optional] 
**Excluded** | **Boolean** | Indicates whether this disk is designated as a backup target. | [optional] 
**Format** | [**NutanixDiskFormat**](NutanixDiskFormat.md) |  | [optional] 
**Name** | **String** | The name of the disk. | [optional] 
**StorageSourceName** | **String** | The storage source name. | [optional] 
**StorageSourceType** | [**StorageSourceType**](StorageSourceType.md) |  | [optional] 
**StorageSourceUuid** | **String** | The storage source UUID. | [optional] 
**Type** | [**NutanixDiskType**](NutanixDiskType.md) |  | [optional] 
**UsedBytes** | **Int64** | Indicates the amount of space, in bytes, that is in use on the virtual disk. | [optional] 
**Uuid** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NutanixDisk = Initialize-PpdmApiReferenceNutanixDisk  -CapacityInBytes null `
 -ControllerType null `
 -DeviceIndex null `
 -Excluded null `
 -Format null `
 -Name null `
 -StorageSourceName null `
 -StorageSourceType null `
 -StorageSourceUuid null `
 -Type null `
 -UsedBytes null `
 -Uuid null
```

- Convert the resource to JSON
```powershell
$NutanixDisk | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

