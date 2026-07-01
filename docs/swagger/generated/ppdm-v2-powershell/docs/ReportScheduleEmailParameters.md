# ReportScheduleEmailParameters
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | **String** | The email body. | [optional] 
**Recipients** | **String[]** | The recipient list. | [optional] 
**Subject** | **String** | The subject line. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportScheduleEmailParameters = Initialize-PpdmApiReferenceReportScheduleEmailParameters  -Content null `
 -Recipients null `
 -Subject null
```

- Convert the resource to JSON
```powershell
$ReportScheduleEmailParameters | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

