# Disk
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvailableSize** | **Int64** | The total available size of all partitions.The available Size in 64-bit. | [optional] 
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**NodeId** | **String** |  | [optional] 
**Partitions** | [**Partition[]**](Partition.md) |  | [optional] 
**TotalSize** | **Int64** | The total size of all partitions. The totalSize in 64-bit. | [optional] 

## Examples

- Prepare the resource
```powershell
$Disk = Initialize-PpdmApiReferenceDisk  -AvailableSize null `
 -Id null `
 -Name null `
 -NodeId null `
 -Partitions null `
 -TotalSize null
```

- Convert the resource to JSON
```powershell
$Disk | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

