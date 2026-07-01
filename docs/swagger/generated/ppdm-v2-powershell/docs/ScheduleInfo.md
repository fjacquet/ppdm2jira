# ScheduleInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**NextScheduledTime** | **System.DateTime** | The next scheduled time for the activity. Follows the ISO 8601 date format. | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScheduleInfo = Initialize-PpdmApiReferenceScheduleInfo  -Description null `
 -NextScheduledTime null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ScheduleInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

