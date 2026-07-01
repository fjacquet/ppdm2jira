# FieldSchemeToFieldsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**FieldSchemeToFieldsPartialFailure[]**](FieldSchemeToFieldsPartialFailure.md) |  | 

## Examples

- Prepare the resource
```powershell
$FieldSchemeToFieldsResponse = Initialize-JiraApiReferenceFieldSchemeToFieldsResponse  -Results null
```

- Convert the resource to JSON
```powershell
$FieldSchemeToFieldsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

