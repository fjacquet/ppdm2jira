# ResetPasswordRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewPassword** | **String** | The new password to replace current one. | 
**ResetToken** | **String** | Temporary token to reset password. | 

## Examples

- Prepare the resource
```powershell
$ResetPasswordRequest = Initialize-PpdmApiReferenceResetPasswordRequest  -NewPassword null `
 -ResetToken null
```

- Convert the resource to JSON
```powershell
$ResetPasswordRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

