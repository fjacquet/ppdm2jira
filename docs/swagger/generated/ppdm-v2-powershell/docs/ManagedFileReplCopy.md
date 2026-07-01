# ManagedFileReplCopy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** |  | [optional] 
**MfrStageId** | **String** |  | [optional] 
**ProtectionLifeCycleId** | **String** |  | [optional] 
**ProtectionPolicyId** | **String** |  | [optional] 
**ReplicationOptions** | [**ManagedFileReplCopyReplicationOptions**](ManagedFileReplCopyReplicationOptions.md) |  | [optional] 
**SystemUse** | **Boolean** |  | [optional] 
**WorkflowTaskId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ManagedFileReplCopy = Initialize-PpdmApiReferenceManagedFileReplCopy  -AssetId null `
 -MfrStageId null `
 -ProtectionLifeCycleId null `
 -ProtectionPolicyId null `
 -ReplicationOptions null `
 -SystemUse null `
 -WorkflowTaskId null
```

- Convert the resource to JSON
```powershell
$ManagedFileReplCopy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

