# ActivityActions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cancelable** | **Boolean** | This parameter is true if the activity can be canceled. | [optional] 
**Retryable** | **Boolean** | This parameter is true if the activity can be retried. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActivityActions = Initialize-PpdmApiReferenceActivityActions  -Cancelable null `
 -Retryable null
```

- Convert the resource to JSON
```powershell
$ActivityActions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

