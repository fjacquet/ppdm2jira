# StorageUnitCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CombinedStreamHardLimit** | **Int64** |  | [optional] 
**CombinedStreamSoftLimit** | **Int64** |  | [optional] 
**HardLimit** | **Int64** |  | [optional] 
**Name** | **String** |  | 
**NativeId** | **String** | The PowerProtect Data Domain ID for the storage unit. | [optional] 
**NativeUri** | **String** | The PowerProtect Data Domain URI for the storage unit. | [optional] 
**SoftLimit** | **Int64** |  | [optional] 
**TenantUnit** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageUnitCreate = Initialize-PpdmApiReferenceStorageUnitCreate  -CombinedStreamHardLimit null `
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
$StorageUnitCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

