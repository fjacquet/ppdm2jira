# LoginCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Password** | **String** | The password to log in. | 
**Rsa** | [**Rsa**](Rsa.md) |  | [optional] 
**Username** | **String** | The username to log in. | 

## Examples

- Prepare the resource
```powershell
$LoginCredentials = Initialize-PpdmApiReferenceLoginCredentials  -Password null `
 -Rsa null `
 -Username null
```

- Convert the resource to JSON
```powershell
$LoginCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

