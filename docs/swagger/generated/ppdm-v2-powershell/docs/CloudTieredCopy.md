# CloudTieredCopy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **String** | The ID of the data source. | [optional] 
**CloudTierStageId** | **String** |  | [optional] 
**ProtectionCopySetId** | **String** |  | [optional] 
**ProtectionLifeCycleId** | **String** | protectionPolicyId should be used instead. | [optional] 
**ProtectionPolicyId** | **String** |  | [optional] 
**WorkflowTaskId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CloudTieredCopy = Initialize-PpdmApiReferenceCloudTieredCopy  -AssetId null `
 -CloudTierStageId null `
 -ProtectionCopySetId null `
 -ProtectionLifeCycleId null `
 -ProtectionPolicyId null `
 -WorkflowTaskId null
```

- Convert the resource to JSON
```powershell
$CloudTieredCopy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

