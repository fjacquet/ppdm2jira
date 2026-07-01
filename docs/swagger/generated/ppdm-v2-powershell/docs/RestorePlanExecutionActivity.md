# RestorePlanExecutionActivity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivityId** | **String** | Indicates the activity ID of the executed plan. | [optional] 
**RestoreGroupId** | **String** | ID of the restore group inside the restore plan. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestorePlanExecutionActivity = Initialize-PpdmApiReferenceRestorePlanExecutionActivity  -ActivityId null `
 -RestoreGroupId null
```

- Convert the resource to JSON
```powershell
$RestorePlanExecutionActivity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

