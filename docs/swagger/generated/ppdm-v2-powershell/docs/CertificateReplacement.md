# CertificateReplacement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CertificateChain** | **String** | The content of certificate chain, where each line is delimited by &#39;\n&#39; in a single line string. | 
**Ica** | **Boolean** | Specifies whether this is a ICA certificate replacement. | [optional] 
**Password** | **String** | Password required for the encrypted private key. | [optional] 
**PrivateKey** | **String** | The content of private key where each line is delimited by &#39;\n&#39; in a single line string. | 

## Examples

- Prepare the resource
```powershell
$CertificateReplacement = Initialize-PpdmApiReferenceCertificateReplacement  -CertificateChain null `
 -Ica null `
 -Password null `
 -PrivateKey null
```

- Convert the resource to JSON
```powershell
$CertificateReplacement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

