# ReportScheduleResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailParameters** | [**ReportScheduleEmailParameters**](ReportScheduleEmailParameters.md) |  | [optional] 
**Enabled** | **Boolean** | The value of the filter. | [optional] 
**Filters** | [**ReportFilters[]**](ReportFilters.md) |  | [optional] 
**FormatParameters** | [**ReportScheduleFormatParameters**](ReportScheduleFormatParameters.md) |  | [optional] 
**PublicationMethod** | **String** | The publication method. | [optional] 
**ReportCategory** | **String** | The report category. | [optional] 
**ReportDescription** | **String** | The description of the report. | [optional] 
**ReportName** | **String** | Name of the report. | [optional] 
**ReportTemplateId** | **String** | The report template ID. | [optional] 
**Schedule** | [**ReportScheduleSchedule**](ReportScheduleSchedule.md) |  | [optional] 
**CreatedAt** | **System.DateTime** | The scheduled report create timestamp in the RFC3339 format. | [optional] 
**Id** | **String** | Scheduled report ID. | [optional] 
**UpdatedAt** | **System.DateTime** | The scheduled report last modified timestamp in the RFC3339 format. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportScheduleResponse = Initialize-PpdmApiReferenceReportScheduleResponse  -EmailParameters null `
 -Enabled null `
 -Filters null `
 -FormatParameters null `
 -PublicationMethod null `
 -ReportCategory null `
 -ReportDescription null `
 -ReportName null `
 -ReportTemplateId null `
 -Schedule null `
 -CreatedAt null `
 -Id null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$ReportScheduleResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

