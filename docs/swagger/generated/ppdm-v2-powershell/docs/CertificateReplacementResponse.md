# CertificateReplacementResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CertificateChain** | **String** | The content of certificate chain, where each line is delimited by &#39;\n&#39; in a single line string. | 
**Ica** | **Boolean** | Specifies whether this is a ICA certificate replacement. | [optional] 
**Id** | **String** | Certificate Replacement ID.  | 
**PrivateKey** | **String** | The content of private key where each line is delimited by &#39;\n&#39; in a single line string. | 

## Examples

- Prepare the resource
```powershell
$CertificateReplacementResponse = Initialize-PpdmApiReferenceCertificateReplacementResponse  -CertificateChain null `
 -Ica null `
 -Id null `
 -PrivateKey null
```

- Convert the resource to JSON
```powershell
$CertificateReplacementResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

