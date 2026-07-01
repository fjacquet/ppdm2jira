# StorageUnit
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppOptimizedCompression** | **String** |  | [optional] 
**CombinedStreamHardLimit** | **Int64** |  | [optional] 
**CombinedStreamSoftLimit** | **Int64** |  | [optional] 
**HardLimit** | **Int64** |  | [optional] 
**Name** | **String** |  | [optional] 
**NativeId** | **String** | The PowerProtect Data Domain ID for the storage unit. | [optional] 
**NativeUri** | **String** | The PowerProtect Data Domain URI for the storage unit. | [optional] 
**SoftLimit** | **Int64** |  | [optional] 
**TenantUnit** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageUnit = Initialize-PpdmApiReferenceStorageUnit  -AppOptimizedCompression null `
 -CombinedStreamHardLimit null `
 -CombinedStreamSoftLimit null `
 -HardLimit null `
 -Name null `
 -NativeId null `
 -NativeUri null `
 -SoftLimit null `
 -TenantUnit null
```

- Convert the resource to JSON
```powershell
$StorageUnit | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

