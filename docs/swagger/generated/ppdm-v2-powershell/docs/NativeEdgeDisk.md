# NativeEdgeDisk
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CapacityInBytes** | **Int64** | The value of the capacity in bytes. | [optional] 
**Excluded** | **Boolean** | Indicates whether this disk is designated as a backup target. | [optional] 
**Name** | **String** | The name of the disk. | [optional] 
**StorageSourceName** | **String** | The name of the storage source. | [optional] 
**UsedBytes** | **Int64** | The value of the used bytes. | [optional] 
**Uuid** | **String** | The UUID of the disk. | [optional] 

## Examples

- Prepare the resource
```powershell
$NativeEdgeDisk = Initialize-PpdmApiReferenceNativeEdgeDisk  -CapacityInBytes null `
 -Excluded null `
 -Name null `
 -StorageSourceName null `
 -UsedBytes null `
 -Uuid null
```

- Convert the resource to JSON
```powershell
$NativeEdgeDisk | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

