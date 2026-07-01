# DataMovementPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CloudUnitName** | **String** |  | 
**DataDomainId** | **String** |  | [optional] 
**DataTargetId** | **String** |  | 
**MtreePath** | **String** |  | [optional] 
**StorageArrayId** | **String** |  | [optional] 
**StorageUnitName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataMovementPolicy = Initialize-PpdmApiReferenceDataMovementPolicy  -CloudUnitName null `
 -DataDomainId null `
 -DataTargetId null `
 -MtreePath null `
 -StorageArrayId null `
 -StorageUnitName null
```

- Convert the resource to JSON
```powershell
$DataMovementPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

