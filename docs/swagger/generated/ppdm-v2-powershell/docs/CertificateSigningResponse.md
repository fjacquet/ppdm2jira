# CertificateSigningResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cert** | **String** | Absolute path to the signed certificate file. | 
**GlobalCA** | **String** | The root CA certificate used to sign the customer certificate. This property is only returned if customer certificates have already been installed. | [optional] 
**Id** | **String** | ID. | [optional] 
**RootCA** | **String** | Absolute path to the root CA certificate file. | 
**VirtualHost** | **String** | PowerProtect Data Manager hostname for custom virtual host. This property is only returned if customer certificates have already been installed. | [optional] 

## Examples

- Prepare the resource
```powershell
$CertificateSigningResponse = Initialize-PpdmApiReferenceCertificateSigningResponse  -Cert null `
 -GlobalCA null `
 -Id null `
 -RootCA null `
 -VirtualHost null
```

- Convert the resource to JSON
```powershell
$CertificateSigningResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

