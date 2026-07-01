# CommonDnsConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DhcpEnabled** | **Boolean** |  | [optional] 
**DomainName** | **String** |  | [optional] 
**HostName** | **String** |  | [optional] 
**SearchDomains** | **String[]** |  | [optional] 
**Servers** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CommonDnsConfig = Initialize-PpdmApiReferenceCommonDnsConfig  -DhcpEnabled null `
 -DomainName null `
 -HostName null `
 -SearchDomains null `
 -Servers null
```

- Convert the resource to JSON
```powershell
$CommonDnsConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

