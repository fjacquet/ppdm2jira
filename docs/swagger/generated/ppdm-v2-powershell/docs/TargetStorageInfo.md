# TargetStorageInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CopyMappings** | [**TargetStorageInfoCopyMappingsInner[]**](TargetStorageInfoCopyMappingsInner.md) | This field will help to convey the mapping between the copy and the restoreTarget. | [optional] 
**NaturalHostGroupId** | **String** |  | [optional] 
**NaturalHostId** | **String** |  | [optional] 
**Parallelism** | **Int32** |  | [optional] 
**TargetAssetId** | **String** |  | [optional] 
**TargetProtectionGroupId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetStorageInfo = Initialize-PpdmApiReferenceTargetStorageInfo  -CopyMappings null `
 -NaturalHostGroupId null `
 -NaturalHostId null `
 -Parallelism null `
 -TargetAssetId null `
 -TargetProtectionGroupId null
```

- Convert the resource to JSON
```powershell
$TargetStorageInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

