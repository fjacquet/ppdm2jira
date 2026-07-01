# RestorePlanExecutionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExecutionType** | **String** | Execute restore plan type: IMMEDIATELY - Execute restore plan immediately SCHEDULE - Execute restore plan at future time | [optional] 
**ScheduleTime** | **System.DateTime** | Runs the restore plan at the scheduled time (scheduleTime). This field is valid only when &quot;&quot;executionType&quot;&quot; &#x3D; &quot;&quot;SCHEDULE&quot;&quot;. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestorePlanExecutionRequest = Initialize-PpdmApiReferenceRestorePlanExecutionRequest  -ExecutionType null `
 -ScheduleTime null
```

- Convert the resource to JSON
```powershell
$RestorePlanExecutionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

