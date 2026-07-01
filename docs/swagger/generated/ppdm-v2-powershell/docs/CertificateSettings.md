# CertificateSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HostCertificateExpiration** | **String** | Host certificate expiration in the formats &quot;&quot;PXY&quot;&quot;, &quot;&quot;PXM&quot;&quot;, &quot;&quot;PXD&quot;&quot;, where X is the number of Years, Months, or Days. | [optional] 
**RootCertificateExpiration** | **String** | Root certificate expiration in the formats &quot;&quot;PXY&quot;&quot;, &quot;&quot;PXM&quot;&quot;, &quot;&quot;PXD&quot;&quot;, where X is the number of Years, Months, or Days. | [optional] 

## Examples

- Prepare the resource
```powershell
$CertificateSettings = Initialize-PpdmApiReferenceCertificateSettings  -HostCertificateExpiration null `
 -RootCertificateExpiration null
```

- Convert the resource to JSON
```powershell
$CertificateSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

