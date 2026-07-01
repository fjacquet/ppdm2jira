# CredentialsBatchRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**CredentialsBatchRequestBody**](CredentialsBatchRequestBody.md) |  | [optional] 
**Id** | **String** | Request id. | [optional] 

## Examples

- Prepare the resource
```powershell
$CredentialsBatchRequest = Initialize-PpdmApiReferenceCredentialsBatchRequest  -Body null `
 -Id null
```

- Convert the resource to JSON
```powershell
$CredentialsBatchRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

