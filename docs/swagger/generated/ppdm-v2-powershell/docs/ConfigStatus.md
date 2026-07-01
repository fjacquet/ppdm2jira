# ConfigStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CompletedStage** | [**ConfigStatusStage[]**](ConfigStatusStage.md) |  | [optional] 
**CurrentStage** | [**ConfigStatusStage**](ConfigStatusStage.md) |  | [optional] 
**EndTime** | **String** |  | [optional] 
**PercentageCompleted** | **Int32** |  | [optional] 
**StartTime** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConfigStatus = Initialize-PpdmApiReferenceConfigStatus  -CompletedStage null `
 -CurrentStage null `
 -EndTime null `
 -PercentageCompleted null `
 -StartTime null `
 -Status null
```

- Convert the resource to JSON
```powershell
$ConfigStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

