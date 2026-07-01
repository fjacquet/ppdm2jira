# CrlEntryResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ca** | **Boolean** | Indicates if certificates is a CA certificate or not. | [optional] 
**ExpirationDate** | **System.DateTime** | Expiration dateTime of certificate in ISO 8601 format. | [optional] 
**Fingerprint** | **String** | SHA-1 Fingerprint of certificate. | [optional] 
**Issuer** | **String** | issuer of certificate. | [optional] 
**Notes** | **String** | Additional notes to be included with the revocation. | [optional] 
**Reason** | **String** | Reason why certificate is being revoked. | [optional] 
**RevocationDate** | **System.DateTime** | dateTime of when this entry was added to the CRL in ISO 8601 format. | [optional] 

## Examples

- Prepare the resource
```powershell
$CrlEntryResponse = Initialize-PpdmApiReferenceCrlEntryResponse  -Ca null `
 -ExpirationDate null `
 -Fingerprint null `
 -Issuer null `
 -Notes null `
 -Reason null `
 -RevocationDate null
```

- Convert the resource to JSON
```powershell
$CrlEntryResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

