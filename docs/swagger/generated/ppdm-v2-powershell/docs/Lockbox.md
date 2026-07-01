# Lockbox
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LastUpdatedTime** | **String** | The timestamp indicating when the lockbox was last updated. | [optional] 
**Name** | **String** | The name assigned to the lockbox for identification. | [optional] 
**NewPassphrase** | **String** |  | [optional] 
**Passphrase** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Lockbox = Initialize-PpdmApiReferenceLockbox  -LastUpdatedTime null `
 -Name null `
 -NewPassphrase null `
 -Passphrase null
```

- Convert the resource to JSON
```powershell
$Lockbox | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

