# StorageUnitReplacement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewDataTargetId** | **String** | The Data Target ID of the new storage unit. | 
**OldDataTargetId** | **String** | The Data Target ID of the old storage unit. | 

## Examples

- Prepare the resource
```powershell
$StorageUnitReplacement = Initialize-PpdmApiReferenceStorageUnitReplacement  -NewDataTargetId null `
 -OldDataTargetId null
```

- Convert the resource to JSON
```powershell
$StorageUnitReplacement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

