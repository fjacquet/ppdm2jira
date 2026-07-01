# DataDomainProtectionPolicyDeleteRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CredentialId** | **String** |  | [optional] [readonly] 
**DataMovementPolicy** | [**DataMovementPolicy**](DataMovementPolicy.md) |  | [optional] 
**DataTargetId** | **String** |  | [readonly] 
**Mtree** | [**DataDomainProtectionPolicyDataDomainMTree**](DataDomainProtectionPolicyDataDomainMTree.md) |  | [optional] 
**ProtectionLifeCycleId** | **String** |  | [optional] 
**ProtectionStageId** | **String** |  | [optional] 
**RetentionLock** | [**RetentionLock**](RetentionLock.md) |  | [optional] 
**StorageArrayId** | **String** |  | [optional] 
**StorageUnitAttributes** | [**DataDomainStorageUnitAttributes**](DataDomainStorageUnitAttributes.md) |  | [optional] 
**User** | [**DataDomainUserWithPassword**](DataDomainUserWithPassword.md) |  | [optional] 
**WorkflowTaskId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainProtectionPolicyDeleteRequest = Initialize-PpdmApiReferenceDataDomainProtectionPolicyDeleteRequest  -CredentialId null `
 -DataMovementPolicy null `
 -DataTargetId null `
 -Mtree null `
 -ProtectionLifeCycleId null `
 -ProtectionStageId null `
 -RetentionLock null `
 -StorageArrayId null `
 -StorageUnitAttributes null `
 -User null `
 -WorkflowTaskId null
```

- Convert the resource to JSON
```powershell
$DataDomainProtectionPolicyDeleteRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

