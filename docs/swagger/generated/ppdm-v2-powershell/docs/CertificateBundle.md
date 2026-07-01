# CertificateBundle
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CertificateChain** | **String** | The certificate chain in PEM format, including concatinated host certificate, all intermediate certificates and root certificate. | [optional] 
**Csr** | **String** | Certificate signing request (CSR) content. | [optional] 
**NotValidAfter** | **String** | Not valid after the timestamp (ISO 8601 format). | [optional] 
**NotValidBefore** | **String** | Not valid before the timestamp (ISO 8601 format). | [optional] 
**PrivateKey** | **String** | Private key in PEM format. | [optional] 
**SecretName** | **String** | The secret name of the certificate bundle. To be used as an ID of the certificate bundle. Can be FQDN, IP or just plain text. Size is limited to 150. | 

## Examples

- Prepare the resource
```powershell
$CertificateBundle = Initialize-PpdmApiReferenceCertificateBundle  -CertificateChain null `
 -Csr null `
 -NotValidAfter null `
 -NotValidBefore null `
 -PrivateKey null `
 -SecretName null
```

- Convert the resource to JSON
```powershell
$CertificateBundle | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

