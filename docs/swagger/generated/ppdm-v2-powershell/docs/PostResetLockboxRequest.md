# PostResetLockboxRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewPassphrase** | **String** | The new lockbox passphrase. | [optional] 
**Passphrase** | **String** | The current lockbox passphrase. | 

## Examples

- Prepare the resource
```powershell
$PostResetLockboxRequest = Initialize-PpdmApiReferencePostResetLockboxRequest  -NewPassphrase null `
 -Passphrase null
```

- Convert the resource to JSON
```powershell
$PostResetLockboxRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

