# DataDomainStorageUnitCreateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CredentialId** | **String** |  | 
**DataAccessIp** | **String** |  | [optional] 
**DataTargetId** | **String** |  | [optional] 
**NetworkInterfaces** | [**NetworkInterfaceStorageUnit[]**](NetworkInterfaceStorageUnit.md) |  | [optional] 
**RetentionLock** | [**RetentionLock**](RetentionLock.md) |  | [optional] 
**StorageArrayId** | **String** |  | 
**StorageUnit** | [**StorageUnitCreate**](StorageUnitCreate.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainStorageUnitCreateRequest = Initialize-PpdmApiReferenceDataDomainStorageUnitCreateRequest  -CredentialId null `
 -DataAccessIp null `
 -DataTargetId null `
 -NetworkInterfaces null `
 -RetentionLock null `
 -StorageArrayId null `
 -StorageUnit null
```

- Convert the resource to JSON
```powershell
$DataDomainStorageUnitCreateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

