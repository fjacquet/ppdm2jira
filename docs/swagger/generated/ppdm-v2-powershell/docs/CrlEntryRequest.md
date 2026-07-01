# CrlEntryRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Certificate** | **String** | Public certificate in PKCS#7 PEM format of certificate that is being added to CRL. | 
**Notes** | **String** | Additional notes to be included with the revocation. | [optional] 
**Reason** | **String** | Reason why certificate is being revoked. | [optional] 

## Examples

- Prepare the resource
```powershell
$CrlEntryRequest = Initialize-PpdmApiReferenceCrlEntryRequest  -Certificate null `
 -Notes null `
 -Reason null
```

- Convert the resource to JSON
```powershell
$CrlEntryRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

