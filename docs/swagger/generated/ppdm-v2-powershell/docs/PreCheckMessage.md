# PreCheckMessage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ErrorResponse** | [**ComponentErrorResponse**](ComponentErrorResponse.md) |  | [optional] 
**Severity** | **String** |  | [optional] 
**ShortName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PreCheckMessage = Initialize-PpdmApiReferencePreCheckMessage  -ErrorResponse null `
 -Severity null `
 -ShortName null
```

- Convert the resource to JSON
```powershell
$PreCheckMessage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

