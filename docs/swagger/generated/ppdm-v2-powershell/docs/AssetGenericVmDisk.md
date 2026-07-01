# AssetGenericVmDisk
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BusType** | **String** | The bus type of the file/disk. | [optional] 
**DeviceIndex** | **String** | Index of the device on the bus. | [optional] 
**Excluded** | **Boolean** | If set to false, this disk will be excluded from backup. | [optional] 
**ExternalId** | **String** | The unique ID of the file/disk. | [optional] 
**Name** | **String** | The name of the disk. | [optional] 
**TotalSize** | **Int64** | Total size of the disk in bytes. | [optional] 
**Type** | **String** | The type of the file/disk. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssetGenericVmDisk = Initialize-PpdmApiReferenceAssetGenericVmDisk  -BusType null `
 -DeviceIndex null `
 -Excluded null `
 -ExternalId null `
 -Name null `
 -TotalSize null `
 -Type null
```

- Convert the resource to JSON
```powershell
$AssetGenericVmDisk | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

