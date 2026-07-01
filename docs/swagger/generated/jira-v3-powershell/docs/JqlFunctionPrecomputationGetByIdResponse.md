# JqlFunctionPrecomputationGetByIdResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NotFoundPrecomputationIDs** | **String[]** | List of precomputations that were not found. | [optional] [readonly] 
**Precomputations** | [**JqlFunctionPrecomputationBean[]**](JqlFunctionPrecomputationBean.md) | The list of precomputations. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$JqlFunctionPrecomputationGetByIdResponse = Initialize-JiraApiReferenceJqlFunctionPrecomputationGetByIdResponse  -NotFoundPrecomputationIDs null `
 -Precomputations null
```

- Convert the resource to JSON
```powershell
$JqlFunctionPrecomputationGetByIdResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

