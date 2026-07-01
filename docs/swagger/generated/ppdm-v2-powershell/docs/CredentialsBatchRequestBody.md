# CredentialsBatchRequestBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Credential id. | [optional] 
**Password** | **String** | credential password which used to update. | [optional] 

## Examples

- Prepare the resource
```powershell
$CredentialsBatchRequestBody = Initialize-PpdmApiReferenceCredentialsBatchRequestBody  -Id null `
 -Password null
```

- Convert the resource to JSON
```powershell
$CredentialsBatchRequestBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

