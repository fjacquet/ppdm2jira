# CredentialExtraInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the extra info property. | 
**Value** | **String** | Value of the extra info property. | 

## Examples

- Prepare the resource
```powershell
$CredentialExtraInfo = Initialize-PpdmApiReferenceCredentialExtraInfo  -Name null `
 -Value null
```

- Convert the resource to JSON
```powershell
$CredentialExtraInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

