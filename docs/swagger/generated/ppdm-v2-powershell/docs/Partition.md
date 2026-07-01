# Partition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvailableSize** | **Int64** | The available size of this partition. The availableSize in 64-bit. | [optional] 
**FileSystem** | **String** |  | [optional] 
**Mount** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**TotalSize** | **Int64** | The total size of this partition. The totalSize in 64-bit. | [optional] 

## Examples

- Prepare the resource
```powershell
$Partition = Initialize-PpdmApiReferencePartition  -AvailableSize null `
 -FileSystem null `
 -Mount null `
 -Name null `
 -TotalSize null
```

- Convert the resource to JSON
```powershell
$Partition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

