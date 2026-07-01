# LdapDefaultConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Directory** | [**LdapDefaultConfigDirectory**](LdapDefaultConfigDirectory.md) |  | [optional] 
**NonSecurePort** | **Int32** | Default port number for non secure protocol. | [optional] 
**Secure** | **Boolean** | Secure connection indicator. | [optional] 
**SecurePort** | **Int32** | Default port number for secure SSL protocol. | [optional] 

## Examples

- Prepare the resource
```powershell
$LdapDefaultConfig = Initialize-PpdmApiReferenceLdapDefaultConfig  -Directory null `
 -NonSecurePort null `
 -Secure null `
 -SecurePort null
```

- Convert the resource to JSON
```powershell
$LdapDefaultConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

