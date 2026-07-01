# ResetOsUserPasswordRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewPassword** | **String** |  | [optional] 
**UserName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResetOsUserPasswordRequest = Initialize-PpdmApiReferenceResetOsUserPasswordRequest  -NewPassword null `
 -UserName null
```

- Convert the resource to JSON
```powershell
$ResetOsUserPasswordRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

