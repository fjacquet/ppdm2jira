# Agent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | **String** |  | [optional] 
**CertificateSigningRequest** | **String** |  | [optional] 
**CreatedTime** | **String** | Timestamp when the agent was created (ISO 8601 format). | [optional] 
**Id** | **String** |  | [optional] 
**Plugins** | [**Plugin[]**](Plugin.md) |  | [optional] 
**Port** | **Int32** |  | [optional] 
**PreferredAddress** | [**PreferredAddress**](PreferredAddress.md) |  | [optional] 
**RegisteredTime** | **String** | Timestamp when the agent was registered (ISO 8601 format). | [optional] 
**ScriptsEnabled** | **Boolean** |  | [optional] 
**TrustedAddresses** | **String[]** | Stores and retrieves addresses that are part of the SAN field of the host certificate. | [optional] 
**UserDetail** | [**AgentUserDetail**](AgentUserDetail.md) |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Agent = Initialize-PpdmApiReferenceAgent  -Address null `
 -CertificateSigningRequest null `
 -CreatedTime null `
 -Id null `
 -Plugins null `
 -Port null `
 -PreferredAddress null `
 -RegisteredTime null `
 -ScriptsEnabled null `
 -TrustedAddresses null `
 -UserDetail null `
 -Version null
```

- Convert the resource to JSON
```powershell
$Agent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

