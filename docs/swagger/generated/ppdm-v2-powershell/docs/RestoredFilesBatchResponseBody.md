# RestoredFilesBatchResponseBody
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | The ID of the PowerProtect Data Manager job that will process this request. | 
**VarError** | [**ErrorMessage**](ErrorMessage.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RestoredFilesBatchResponseBody = Initialize-PpdmApiReferenceRestoredFilesBatchResponseBody  -ActivityId null `
 -VarError null
```

- Convert the resource to JSON
```powershell
$RestoredFilesBatchResponseBody | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

