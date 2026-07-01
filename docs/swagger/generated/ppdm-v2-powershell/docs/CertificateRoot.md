# CertificateRoot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GlobalCA** | **String** | The system customer root certificate. This property only shows when customer certificates are installed by certificate replacement. | [optional] 
**Id** | **String** | The certificate root ID. | 
**RootCA** | **String** | The system root certificate. | 
**VirtualHost** | **String** | The custom virtual host of the system, which is the system hostname. | 

## Examples

- Prepare the resource
```powershell
$CertificateRoot = Initialize-PpdmApiReferenceCertificateRoot  -GlobalCA null `
 -Id null `
 -RootCA null `
 -VirtualHost null
```

- Convert the resource to JSON
```powershell
$CertificateRoot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

