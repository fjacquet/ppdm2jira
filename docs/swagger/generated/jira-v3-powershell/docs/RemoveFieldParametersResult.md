# RemoveFieldParametersResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**SuccessOrErrorResults[]**](SuccessOrErrorResults.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RemoveFieldParametersResult = Initialize-JiraApiReferenceRemoveFieldParametersResult  -Results null
```

- Convert the resource to JSON
```powershell
$RemoveFieldParametersResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

