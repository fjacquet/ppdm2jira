# Firewall
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Outbounds** | [**Outbound[]**](Outbound.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Firewall = Initialize-PpdmApiReferenceFirewall  -Outbounds null
```

- Convert the resource to JSON
```powershell
$Firewall | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

