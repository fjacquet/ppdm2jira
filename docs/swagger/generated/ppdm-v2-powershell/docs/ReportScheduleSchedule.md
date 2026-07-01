# ReportScheduleSchedule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DayOfMonth** | **Int32** | Day of the month. | [optional] 
**Frequency** | **String** | The frequency of the report schedule, whether it is daily, weekly, or monthly. | 
**Name** | **String** | The name of the schedule. | [optional] 
**StartTime** | **System.DateTime** | The start time of the report schedule, in the RFC3339 format. | 
**WeekDays** | [**ReportScheduleWeekDay[]**](ReportScheduleWeekDay.md) | The day of the week on which the report is scheduled. For example, SUNDAY, MONDAY. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportScheduleSchedule = Initialize-PpdmApiReferenceReportScheduleSchedule  -DayOfMonth null `
 -Frequency null `
 -Name null `
 -StartTime null `
 -WeekDays null
```

- Convert the resource to JSON
```powershell
$ReportScheduleSchedule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

