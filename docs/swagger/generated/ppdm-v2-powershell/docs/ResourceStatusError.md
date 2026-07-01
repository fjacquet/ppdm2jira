# ResourceStatusError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Classifications** | **String[]** |  | [optional] 
**Code** | **Int32** |  | [optional] 
**Remedy** | **String[]** |  | [optional] 
**Retryable** | **Boolean** |  | [optional] 
**Text** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceStatusError = Initialize-PpdmApiReferenceResourceStatusError  -Classifications null `
 -Code null `
 -Remedy null `
 -Retryable null `
 -Text null
```

- Convert the resource to JSON
```powershell
$ResourceStatusError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

