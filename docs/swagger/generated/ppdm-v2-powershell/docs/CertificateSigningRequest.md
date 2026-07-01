# CertificateSigningRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BadgeId** | **String** | The badge ID is used to verify the remote identity for the vRapid daemon in vProxy. The badge ID is added to the signed certificate extension field. If not present, remote identity verification continues to use the existing IP address/Fully Qualified Domain Name (FQDN) based allow list. | [optional] 
**Csr** | **String** | Certificate signing request (CSR) content. | 
**Fqdn** | **String** | The Fully Qualified Domain Name (FQDN) used in the signed certificate Subject Alternative Name (SAN) field, listed as DNS. One or more FQDNs can be provided, delimited by a comma. The POST payload request must contain either the &quot;&quot;fqdn&quot;&quot; or &quot;&quot;ips&quot;&quot; field. | [optional] 
**Ips** | **String** | The IP address (either IPv4 or IPv6) used in the signed certificate Subject Alternative Name (SAN) field, listed as an IP address. One or more IP addresses can be provided, delimited by a comma. The POST payload request must contain either the &quot;&quot;fqdn&quot;&quot; or &quot;&quot;ips&quot;&quot; field. | [optional] 

## Examples

- Prepare the resource
```powershell
$CertificateSigningRequest = Initialize-PpdmApiReferenceCertificateSigningRequest  -BadgeId null `
 -Csr null `
 -Fqdn null `
 -Ips null
```

- Convert the resource to JSON
```powershell
$CertificateSigningRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

