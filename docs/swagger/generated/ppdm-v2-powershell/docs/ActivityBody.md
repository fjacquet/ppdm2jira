# ActivityBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** |  | [optional] 
**VarError** | [**FlrErrorMessage**](FlrErrorMessage.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ActivityBody = Initialize-PpdmApiReferenceActivityBody  -ActivityId null `
 -VarError null
```

- Convert the resource to JSON
```powershell
$ActivityBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

