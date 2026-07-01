# CopyProtectionPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Stages** | [**CopyProtectionPolicyStage[]**](CopyProtectionPolicyStage.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyProtectionPolicy = Initialize-PpdmApiReferenceCopyProtectionPolicy  -Id null `
 -Stages null
```

- Convert the resource to JSON
```powershell
$CopyProtectionPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

