# Outbound
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Destination** | **String** | The destination IP address or subnet for the outbound connection. | 
**Port** | **String** | The port number that needs to be opened for outbound traffic. | 
**Protocol** | **String** | The firewall protocol applied to this outbound connection, should be &quot;&quot;TCP&quot;&quot; or &quot;&quot;UDP&quot;&quot;. | [optional] 
**Rule** | **String** | The firewall policy applied to this outbound connection. &quot;&quot;ACCEPT&quot;&quot; allows traffic, while &quot;&quot;DROP&quot;&quot; blocks it. | [optional] 
**UsedBy** | **String** | Describes the intended use or purpose of the outbound rule, such as the service or application using it. | 

## Examples

- Prepare the resource
```powershell
$Outbound = Initialize-PpdmApiReferenceOutbound  -Destination null `
 -Port null `
 -Protocol null `
 -Rule null `
 -UsedBy null
```

- Convert the resource to JSON
```powershell
$Outbound | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

