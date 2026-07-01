# Certificate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CertificateChain** | **String** | The certificate chain. | [optional] 
**Fingerprint** | **String** | Fingerprint of the certificate. | [optional] 
**VarHost** | **String** | Certificate host or IP address. | 
**Id** | **String** | Certificate ID. | [optional] 
**IssuerName** | **String** | Issuer name of the certificate. | [optional] 
**NotValidAfter** | **String** | Not valid after the timestamp (ISO 8601 format). | [optional] 
**NotValidBefore** | **String** | Not valid before the timestamp (ISO 8601 format). | [optional] 
**Port** | **String** | Host/IP port. | 
**SaveFilePath** | **String** | The absolute path where the certificate is saved. | [optional] 
**State** | **String** | Certificate state. | [optional] 
**SubjectName** | **String** | Subject name of the certificate. | [optional] 
**Type** | **String** | Certificate type. | [optional] 
**Verify** | **Boolean** | To verify that the server&#39;s host certificate is signed by the root certificate of the certificate chain, set this value to true. The default value is false. | [optional] 

## Examples

- Prepare the resource
```powershell
$Certificate = Initialize-PpdmApiReferenceCertificate  -CertificateChain null `
 -Fingerprint null `
 -VarHost null `
 -Id null `
 -IssuerName null `
 -NotValidAfter null `
 -NotValidBefore null `
 -Port null `
 -SaveFilePath null `
 -State null `
 -SubjectName null `
 -Type null `
 -Verify null
```

- Convert the resource to JSON
```powershell
$Certificate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

