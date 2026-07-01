# RestorePlanExecutionResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Activities** | [**RestorePlanExecutionActivity[]**](RestorePlanExecutionActivity.md) | The activities of the running restore plan. This field is valid only when &quot;&quot;executionType&quot;&quot; &#x3D; &quot;&quot;IMMEDIATELY&quot;&quot;. | [optional] 
**ExecutionType** | **String** | Execute restore plan type. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestorePlanExecutionResult = Initialize-PpdmApiReferenceRestorePlanExecutionResult  -Activities null `
 -ExecutionType null
```

- Convert the resource to JSON
```powershell
$RestorePlanExecutionResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

