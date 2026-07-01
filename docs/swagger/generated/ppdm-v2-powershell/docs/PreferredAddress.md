# PreferredAddress
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**PreferredAddressType**](PreferredAddressType.md) |  | [optional] 
**Value** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PreferredAddress = Initialize-PpdmApiReferencePreferredAddress  -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$PreferredAddress | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

