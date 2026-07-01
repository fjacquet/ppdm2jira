# Netmask
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Notation** | **String** | Captures the netmask for this subnetwork in this format. One of: - CIDR - DECIMAL - BINARY | [optional] 
**Value** | **String** | The value of the netmask in the representation as specified by the type. | [optional] 

## Examples

- Prepare the resource
```powershell
$Netmask = Initialize-PpdmApiReferenceNetmask  -Notation null `
 -Value null
```

- Convert the resource to JSON
```powershell
$Netmask | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

