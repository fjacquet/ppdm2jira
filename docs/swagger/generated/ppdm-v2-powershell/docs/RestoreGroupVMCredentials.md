# RestoreGroupVMCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdminCredentialId** | **String** |  | [optional] 
**UserCredentialId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoreGroupVMCredentials = Initialize-PpdmApiReferenceRestoreGroupVMCredentials  -AdminCredentialId null `
 -UserCredentialId null
```

- Convert the resource to JSON
```powershell
$RestoreGroupVMCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

