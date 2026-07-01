# DataDomainProtectionPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CredentialId** | **String** |  | [optional] [readonly] 
**DataMovementPolicy** | [**DataMovementPolicy**](DataMovementPolicy.md) |  | [optional] 
**DataTargetId** | **String** |  | [optional] [readonly] 
**Mtree** | [**DataDomainProtectionPolicyDataDomainMTree**](DataDomainProtectionPolicyDataDomainMTree.md) |  | [optional] 
**ProtectionLifeCycleId** | **String** |  | 
**ProtectionStageId** | **String** |  | [optional] 
**RetentionLock** | [**RetentionLock**](RetentionLock.md) |  | [optional] 
**StorageArrayId** | **String** |  | 
**StorageUnitAttributes** | [**DataDomainStorageUnitAttributes**](DataDomainStorageUnitAttributes.md) |  | [optional] 
**User** | [**DataDomainUserWithPassword**](DataDomainUserWithPassword.md) |  | [optional] 
**WorkflowTaskId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataDomainProtectionPolicy = Initialize-PpdmApiReferenceDataDomainProtectionPolicy  -CredentialId null `
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
$DataDomainProtectionPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

