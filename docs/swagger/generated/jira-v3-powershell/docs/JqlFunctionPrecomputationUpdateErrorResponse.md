# JqlFunctionPrecomputationUpdateErrorResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ErrorMessages** | **String[]** | The list of error messages produced by this operation. | [optional] [readonly] 
**NotFoundPrecomputationIDs** | **String[]** | List of precomputations that were not found. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$JqlFunctionPrecomputationUpdateErrorResponse = Initialize-JiraApiReferenceJqlFunctionPrecomputationUpdateErrorResponse  -ErrorMessages null `
 -NotFoundPrecomputationIDs null
```

- Convert the resource to JSON
```powershell
$JqlFunctionPrecomputationUpdateErrorResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

