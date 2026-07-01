# CopyProtectionPolicyStage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**OwnedTime** | **System.DateTime** | The owned time for this protection policy stage, that is persisted with millisecond-level. For example, a time value such as &#39;2024-03-19T14:15:123456789Z&#39; would be truncated to &#39;2024-03-19T14:15:123Z&#39;. | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CopyProtectionPolicyStage = Initialize-PpdmApiReferenceCopyProtectionPolicyStage  -Id null `
 -OwnedTime null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CopyProtectionPolicyStage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

