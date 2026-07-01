# CertificateDetailsMap
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssuerDN** | **String** | Issuer distinguished name. | [optional] 
**Md5** | **String** | Value of md5. | [optional] 
**NotAfter** | **String** | Valid time of certificate. | [optional] 
**NotBefore** | **String** | Start time of certificate. | [optional] 
**PublicKey** | **String** | Public key type. | [optional] 
**PublicKeyExponent** | **String** | Exponent of public key. | [optional] 
**PublicKeyModulus** | **String** | The modulus of public key. | [optional] 
**PublicKeySize** | **String** | Size of public key. | [optional] 
**SerialNumber** | **String** | The serial number of certificate. | [optional] 
**Sha1** | **String** | Value of sha1. | [optional] 
**Sha256** | **String** | Value of sha256. | [optional] 
**SignatureAlgorithmName** | **String** | The algorithm used in signature. | [optional] 
**SignatureAlgorithmOID** | **String** | ID of algorithm used in signature. | [optional] 
**SubjectDN** | **String** | Subject distinguished name. | [optional] 
**Version** | **String** | Version of certificate. | [optional] 

## Examples

- Prepare the resource
```powershell
$CertificateDetailsMap = Initialize-PpdmApiReferenceCertificateDetailsMap  -IssuerDN null `
 -Md5 null `
 -NotAfter null `
 -NotBefore null `
 -PublicKey null `
 -PublicKeyExponent null `
 -PublicKeyModulus null `
 -PublicKeySize null `
 -SerialNumber null `
 -Sha1 null `
 -Sha256 null `
 -SignatureAlgorithmName null `
 -SignatureAlgorithmOID null `
 -SubjectDN null `
 -Version null
```

- Convert the resource to JSON
```powershell
$CertificateDetailsMap | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

