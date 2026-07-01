# CertificateBundleRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BadgeId** | **String** | The badge ID is used to verify the remote identity for the vRapid daemon in vProxy. The badge ID is added to the signed certificate extension field. If not present, remote identity verification continues to use the existing IP address/Fully Qualified Domain Name (FQDN) based allow list.&#39; | [optional] 
**CsrOnly** | **Boolean** | The csrOnly is used to return only the unsigned csr. | [optional] 
**DnsNames** | **String** | The Fully Qualified Domain Name (FQDN) used in the signed certificate Subject Alternative Name (SAN) field, listed as DNS. One or more FQDNs can be provided, delimited by a comma. | [optional] 
**VarHost** | **String** | Hostname to be placed in CN field of certificate. | [optional] 
**IpAddresses** | **String** | The IP address (either IPv4 or IPv6) used in the signed certificate Subject Alternative Name (SAN) field, listed as an IP address. One or more IP addresses can be provided, delimited by a comma. | [optional] 
**Password** | **String** | Password is used to encrypt/decrypt a private key. | [optional] 
**SecretName** | **String** | The secret name of the certificate bundle. To be used as an ID of the certificate bundle. Can be FQDN, IP or just plain text. Size is limited to 150. | 

## Examples

- Prepare the resource
```powershell
$CertificateBundleRequest = Initialize-PpdmApiReferenceCertificateBundleRequest  -BadgeId null `
 -CsrOnly null `
 -DnsNames null `
 -VarHost null `
 -IpAddresses null `
 -Password null `
 -SecretName null
```

- Convert the resource to JSON
```powershell
$CertificateBundleRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

