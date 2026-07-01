# ReportScheduleResponses
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**ReportScheduleResponse[]**](ReportScheduleResponse.md) |  | [optional] 
**Page** | [**PageInfo**](PageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportScheduleResponses = Initialize-PpdmApiReferenceReportScheduleResponses  -Content null `
 -Page null
```

- Convert the resource to JSON
```powershell
$ReportScheduleResponses | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

