# AgentAddresses
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsPreferredAddress** | **Boolean** |  | [optional] 
**IsTrusted** | **Boolean** |  | [optional] 
**Type** | [**PreferredAddressType**](PreferredAddressType.md) |  | [optional] 
**Value** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentAddresses = Initialize-PpdmApiReferenceAgentAddresses  -IsPreferredAddress null `
 -IsTrusted null `
 -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$AgentAddresses | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

