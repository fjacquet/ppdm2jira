# ChangePasswordRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewPassword** | **String** | The new password to replace current one. | 
**Password** | **String** | The password to login. | [optional] 
**Username** | **String** | The username to login. | 

## Examples

- Prepare the resource
```powershell
$ChangePasswordRequest = Initialize-PpdmApiReferenceChangePasswordRequest  -NewPassword null `
 -Password null `
 -Username null
```

- Convert the resource to JSON
```powershell
$ChangePasswordRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

