# UpdateFieldSchemeParametersResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**UpdateFieldSchemeParametersPartialFailure[]**](UpdateFieldSchemeParametersPartialFailure.md) |  | 

## Examples

- Prepare the resource
```powershell
$UpdateFieldSchemeParametersResponse = Initialize-JiraApiReferenceUpdateFieldSchemeParametersResponse  -Results null
```

- Convert the resource to JSON
```powershell
$UpdateFieldSchemeParametersResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

