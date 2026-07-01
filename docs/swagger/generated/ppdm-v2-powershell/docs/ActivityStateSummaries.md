# ActivityStateSummaries
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Canceled** | **Int32** | The count of child activities in canceled state. | [optional] 
**Completed** | **Int32** | The count of child activities in completed state. | [optional] 
**CriticalEvent** | **Int32** | The count of child activities in the worst (critical/warning/canceled) state. | [optional] 
**Failed** | **Int32** | The count of child activities in failed state. | [optional] 
**Ok** | **Int32** | The count of child activities in OK state. | [optional] 
**OkWithErrors** | **Int32** | The count of child activities in OK with errors (okWithErrors) state. | [optional] 
**PendingCancellation** | **Int32** | The count of child activities in pending cancellation state. | [optional] 
**Queued** | **Int32** | The count of child activities in queued state. | [optional] 
**Running** | **Int32** | The count of child activities in running state. | [optional] 
**Skipped** | **Int32** | The count of child activities in skipped state. | [optional] 
**Total** | **Int32** | The total count of the child activities. | [optional] 
**Unknown** | **Int32** | The count of child activities in unknown state. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActivityStateSummaries = Initialize-PpdmApiReferenceActivityStateSummaries  -Canceled null `
 -Completed null `
 -CriticalEvent null `
 -Failed null `
 -Ok null `
 -OkWithErrors null `
 -PendingCancellation null `
 -Queued null `
 -Running null `
 -Skipped null `
 -Total null `
 -Unknown null
```

- Convert the resource to JSON
```powershell
$ActivityStateSummaries | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

