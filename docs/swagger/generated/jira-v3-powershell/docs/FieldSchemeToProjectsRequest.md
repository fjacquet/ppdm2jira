# FieldSchemeToProjectsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectIds** | **Int64[]** | List of project IDs to associate with field schemes | 

## Examples

- Prepare the resource
```powershell
$FieldSchemeToProjectsRequest = Initialize-JiraApiReferenceFieldSchemeToProjectsRequest  -ProjectIds null
```

- Convert the resource to JSON
```powershell
$FieldSchemeToProjectsRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

