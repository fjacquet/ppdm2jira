# CredentialsBatchRequests
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Requests** | [**CredentialsBatchRequest[]**](CredentialsBatchRequest.md) | Array of asset credentials password update request. | [optional] 

## Examples

- Prepare the resource
```powershell
$CredentialsBatchRequests = Initialize-PpdmApiReferenceCredentialsBatchRequests  -Requests null
```

- Convert the resource to JSON
```powershell
$CredentialsBatchRequests | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

