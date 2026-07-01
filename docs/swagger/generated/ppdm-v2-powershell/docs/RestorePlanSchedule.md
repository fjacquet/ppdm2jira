# RestorePlanSchedule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StartTime** | **System.DateTime** | The scheduled start time. | [optional] 

## Examples

- Prepare the resource
```powershell
$RestorePlanSchedule = Initialize-PpdmApiReferenceRestorePlanSchedule  -StartTime null
```

- Convert the resource to JSON
```powershell
$RestorePlanSchedule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

