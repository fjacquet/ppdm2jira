# CredentialCreatedByUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the ID of the user or AD user group. | [optional] 
**Owner** | **String** | The owner name of the user or the AD user group. | [optional] 

## Examples

- Prepare the resource
```powershell
$CredentialCreatedByUser = Initialize-PpdmApiReferenceCredentialCreatedByUser  -Id null `
 -Owner null
```

- Convert the resource to JSON
```powershell
$CredentialCreatedByUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

