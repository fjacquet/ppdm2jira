# FieldSchemeToProjectsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**FieldSchemeToProjectsPartialFailure[]**](FieldSchemeToProjectsPartialFailure.md) |  | 

## Examples

- Prepare the resource
```powershell
$FieldSchemeToProjectsResponse = Initialize-JiraApiReferenceFieldSchemeToProjectsResponse  -Results null
```

- Convert the resource to JSON
```powershell
$FieldSchemeToProjectsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

