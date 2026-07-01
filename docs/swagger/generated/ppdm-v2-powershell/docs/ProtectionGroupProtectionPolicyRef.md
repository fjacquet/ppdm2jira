# ProtectionGroupProtectionPolicyRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupMechanism** | **String** | The backup mechanism that the protection policy is configured to perform. | [optional] 
**Id** | **String** | ID of the protection policy. | [optional] 
**Name** | **String** | Name of the protection policy. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtectionGroupProtectionPolicyRef = Initialize-PpdmApiReferenceProtectionGroupProtectionPolicyRef  -BackupMechanism null `
 -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$ProtectionGroupProtectionPolicyRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

