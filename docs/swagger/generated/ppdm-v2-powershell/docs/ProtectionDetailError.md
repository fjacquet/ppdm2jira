# ProtectionDetailError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **String** | The error code for protection details. | [optional] 
**ExtendedReason** | **String** | The extended reason for protection details. | [optional] 
**Reason** | **String** | The error reason for protection details. | [optional] 
**Remediation** | **String** | The remediation message for protection details. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtectionDetailError = Initialize-PpdmApiReferenceProtectionDetailError  -Code null `
 -ExtendedReason null `
 -Reason null `
 -Remediation null
```

- Convert the resource to JSON
```powershell
$ProtectionDetailError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

