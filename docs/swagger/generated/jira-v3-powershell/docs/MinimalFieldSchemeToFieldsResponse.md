# MinimalFieldSchemeToFieldsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**MinimalFieldSchemeToFieldsPartialFailure[]**](MinimalFieldSchemeToFieldsPartialFailure.md) |  | 

## Examples

- Prepare the resource
```powershell
$MinimalFieldSchemeToFieldsResponse = Initialize-JiraApiReferenceMinimalFieldSchemeToFieldsResponse  -Results null
```

- Convert the resource to JSON
```powershell
$MinimalFieldSchemeToFieldsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

