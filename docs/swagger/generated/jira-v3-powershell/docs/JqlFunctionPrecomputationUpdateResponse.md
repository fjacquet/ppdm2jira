# JqlFunctionPrecomputationUpdateResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NotFoundPrecomputationIDs** | **String[]** | List of precomputations that were not found and skipped. Only returned if the request passed skipNotFoundPrecomputations&#x3D;true. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$JqlFunctionPrecomputationUpdateResponse = Initialize-JiraApiReferenceJqlFunctionPrecomputationUpdateResponse  -NotFoundPrecomputationIDs null
```

- Convert the resource to JSON
```powershell
$JqlFunctionPrecomputationUpdateResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

