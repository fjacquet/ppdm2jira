# SyslogsConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientCertFile** | **String** | The file path to a certificate file signed by a certificate authority (CA). | [optional] 
**ClientKeyFile** | **String** | The file path to a private key file for the signed certificate file. | [optional] 
**Enabled** | **Boolean** | Whether to enable syslogs FW. | [optional] 
**Id** | **String** | Unique identifier of the syslogs configuration. | [optional] 
**MessageFilters** | [**MessageFilter[]**](MessageFilter.md) | List of filters that specify the minimum serverity and facility for a syslog configurations. | [optional] 
**NtpConfigured** | **Boolean** | Indicates whether the NTP server is configured. | [optional] 
**PermittedPeers** | **String** | The accepted fingerprint or subject alternative name (SAN) in the signed certificate of the syslog server. | [optional] 
**ProtocolType** | **String** | Available protocol types. | [optional] [default to "TLS"]
**ServerAddress** | **String** | IPv4 address, IPv6 address, or DNS name of the syslogs server. | [optional] 
**ServerCAFile** | **String** | The file path to a trusted certificate authority (CA) file of the syslog server. | [optional] 
**ServerPort** | **Int32** | Port that is used to connect to the syslogs server. | [optional] 
**Status** | **String** |  | [optional] 
**TlsAuthMode** | **String** | An available TLS authentication mode. | [optional] 

## Examples

- Prepare the resource
```powershell
$SyslogsConfiguration = Initialize-PpdmApiReferenceSyslogsConfiguration  -ClientCertFile null `
 -ClientKeyFile null `
 -Enabled null `
 -Id null `
 -MessageFilters null `
 -NtpConfigured null `
 -PermittedPeers null `
 -ProtocolType null `
 -ServerAddress null `
 -ServerCAFile null `
 -ServerPort null `
 -Status null `
 -TlsAuthMode null
```

- Convert the resource to JSON
```powershell
$SyslogsConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

